/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "FreeRTOS.h"
#include "task.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
#define DWT_CTRL (*(volatile uint32_t*)0xE0001000)
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
static void vLED_Green_handler( void * pvParameters );
static void vLED_Blue_handler( void * pvParameters );
static void vLED_Red_handler( void * pvParameters );
static void vButton_handler( void * pvParameters );

extern void SEGGER_UART_init(uint32_t);

TaskHandle_t pvled_green_handle;
TaskHandle_t pvled_blue_handle;
TaskHandle_t pvled_red_handle;
TaskHandle_t pvbutton_handle;

TaskHandle_t volatile next_task_handle;

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

	BaseType_t status;

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  /* USER CODE BEGIN 2 */

  //Enable the CYCCNT counter
  DWT_CTRL |= (1 << 0);

  SEGGER_UART_init(500000);

  SEGGER_SYSVIEW_Conf();

  status = xTaskCreate(vLED_Green_handler, "LED_green_task", 200, NULL, 3, &pvled_green_handle);
  configASSERT(status == pdPASS);

  next_task_handle = pvled_green_handle;

  status = xTaskCreate(vLED_Blue_handler, "LED_blue_task", 200, NULL, 2, &pvled_blue_handle);
  configASSERT(status == pdPASS);

  status = xTaskCreate(vLED_Red_handler, "LED_red_task", 200, NULL, 1, &pvled_red_handle);
  configASSERT(status == pdPASS);

  status = xTaskCreate(vButton_handler, "Button_task", 200, NULL, 4, &pvbutton_handle);
  configASSERT(status == pdPASS);

  //Start the FreeRTOS scheduler
  vTaskStartScheduler();

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 216;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Activate the Over-Drive mode
  */
  if (HAL_PWREx_EnableOverDrive() != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
static void vLED_Green_handler( void * pvParameters )
{
	BaseType_t status;

	while(1)
	{
		SEGGER_SYSVIEW_PrintfTarget("Toggling green LED");
		HAL_GPIO_TogglePin(GPIOB, GREEN_LED_PIN);
		status = xTaskNotifyWait(0,0,NULL,pdMS_TO_TICKS(1000));

		if(status == pdPASS)
		{
			vTaskSuspendAll();
			next_task_handle = pvled_blue_handle;
			xTaskResumeAll();
			HAL_GPIO_WritePin(GPIOB, GREEN_LED_PIN, GPIO_PIN_SET);
			SEGGER_SYSVIEW_PrintfTarget("Delete green task");
			vTaskDelete(NULL);
		}
	}
}
static void vLED_Blue_handler( void * pvParameters )
{
	BaseType_t status;

	while(1)
	{
		SEGGER_SYSVIEW_PrintfTarget("Toggling blue LED");
		HAL_GPIO_TogglePin(GPIOB, BLUE_LED_PIN);
		status = xTaskNotifyWait(0,0,NULL,pdMS_TO_TICKS(800));

		if(status == pdPASS)
		{
			vTaskSuspendAll();
			next_task_handle = pvled_red_handle;
			xTaskResumeAll();
			HAL_GPIO_WritePin(GPIOB, BLUE_LED_PIN, GPIO_PIN_SET);
			SEGGER_SYSVIEW_PrintfTarget("Delete blue task");
			vTaskDelete(NULL);
		}
	}
}
static void vLED_Red_handler( void * pvParameters )
{
	BaseType_t status;

	while(1)
	{
		SEGGER_SYSVIEW_PrintfTarget("Toggling red LED");
		HAL_GPIO_TogglePin(GPIOB, RED_LED_PIN);
		status = xTaskNotifyWait(0,0,NULL,pdMS_TO_TICKS(400));

		if(status == pdPASS)
		{
			vTaskSuspendAll();
			next_task_handle = NULL;
			xTaskResumeAll();
			HAL_GPIO_WritePin(GPIOB, RED_LED_PIN, GPIO_PIN_SET);
			vTaskDelete(pvbutton_handle);
			SEGGER_SYSVIEW_PrintfTarget("Delete red task");
			vTaskDelete(NULL);
		}
	}
}

static void vButton_handler( void * pvParameters )
{
	uint8_t btn_read = 0;
	uint8_t prev_read = 0;

	while(1)
	{
		btn_read = HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13);

		if(btn_read)
		{
			if(!prev_read)
				xTaskNotify(next_task_handle,0,eNoAction);
		}
		prev_read = btn_read;
		vTaskDelay(pdMS_TO_TICKS(10));
	}
}

/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM6 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM6) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
