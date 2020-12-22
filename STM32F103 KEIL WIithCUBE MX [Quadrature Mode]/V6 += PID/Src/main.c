/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
	// semua hitungna dalam satuan cm!!!
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include <math.h>
#include <stdio.h>

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
volatile uint8_t  nilaiEnco1A_sebelum, nilaiEnco1B_sebelum,
									    nilaiEnco2A_sebelum, nilaiEnco2B_sebelum,
											nilaiEnco3A_sebelum, nilaiEnco3B_sebelum,
									    nilaiEnco4A_sebelum, nilaiEnco4B_sebelum;

uint8_t nilaiEnco1A, nilaiEnco1B, encInc1, encDec1,
					 nilaiEnco2A, nilaiEnco2B, encInc2, encDec2,
					 nilaiEnco3A, nilaiEnco3B, encInc3, encDec3,
					 nilaiEnco4A, nilaiEnco4B, encInc4, encDec4;
				
uint32_t lastTime, state, stateCounter;

uint8_t terimaUART1, terimaUART2, terimaUART3;

int enc_1, enc_2, enc_3, enc_4;
int oldEnc1, oldEnc2, oldEnc3, oldEnc4, newEnc1, newEnc2, newEnc3, newEnc4;


char ter, btn[2], char_terima;
int cnt, button;

//Variable PID
static uint8_t setPoin = 255;
static float kp = 1;
static float ki = 0;
static float	kd = 0;
float error[4], lastError[4], cumError[4], rateError[4], maxrpm = 300.00, minrpm = -300.00;
float gain, inputPID[4], u[4];

#define tick 548
#define wheel  15 							//50mm
#define TtoCM  (3.14159265*wheel)/tick
#define RtoD   57.2958
#define R_body 27.25
#define Rroda 0.0725 //meter

char buf[50];
int send[4];

char dataKirim[8];
int a,b,c;
float w[4], v[4];
int rpm[4];
unsigned int jarakRAW[4];
char flag_send=0;

char ter1, jadwal,Data3[2],Data4[2], char_terima1; 
int count1, data16_bit1, dataImu[2];

float Xbody,Ybody,degree, radian, perpindahan;
float Xactual,Yactual;

uint8_t didik = 0; //cobacoba

//data untuk di kirim lewat UART
uint8_t rpmKirim [4];
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim4;

UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;
UART_HandleTypeDef huart3;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_TIM4_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_TIM2_Init(void);
static void MX_USART3_UART_Init(void);

void updateDataEncoder1(void);
void updateDataEncoder2(void);
void updateDataEncoder3(void);
void updateDataEncoder4(void);

void stepper(int posisi); //nilai + untuk cw dan - untuk ccw

void dataLama(void);
void dataBaru(void);

void hitungPosisi(void);
void hitungRPM(void);
void hitungKecepatanAngular(void);
void hitungKecepatanLinier(void);

void kirimUART(int uart, uint8_t data1); //uart n, data yang dikirm

void setPWM4(int pwm4);
void motor4(int speed4);

void hitungPID(void);

void perubahanNIlai(void);
/* USER CODE BEGIN PFP */

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
  MX_TIM4_Init();
  MX_USART1_UART_Init();
  MX_USART2_UART_Init();
  MX_TIM2_Init();
  MX_USART3_UART_Init();
		__HAL_UART_ENABLE_IT(&huart1, UART_IT_RXNE); //enable receive uart1 interupt
	__HAL_UART_ENABLE_IT(&huart2, UART_IT_RXNE); //enable receive uart2 interupt
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE); //enable receive uart3 interupt
HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_4);
  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */
switch (state) {
			
			case 0 :  //pass 
				break;
			
			case 1 : dataLama(); break; //get data u-2 encoder		
			
			case 2 : //pass
				break;
			
			case 3 : dataBaru(); break; //get u encoder data
			
			case 4 : //calculate everything yoou need
									
									hitungRPM();
									hitungPosisi();
									hitungKecepatanAngular();
									hitungKecepatanLinier();
									motor4(didik);
									
			
				break;
			
			case 5 : //pass
				break;
								
			case 6 : kirimUART(1, didik); break; // @param : kirimUART(uart berapa, data yg dikirm)
		
			case 7 :
				break;
			
			case 8 : kirimUART(2, didik); break; // @param : kirimUART(uart berapa, data yg dikirm)
			
			case 9 : //pass
				break;
			
			case 10 : kirimUART(3, didik); break; // @param : kirimUART(uart berapa, data yg dikirm)
				
		}
  
    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}


//Pergitungan
void dataLama(void) {
				oldEnc1 = enc_1;
				oldEnc2 = enc_2;
				oldEnc3 = enc_3;
				oldEnc4 = enc_4;
}

void dataBaru(void) {
	
				newEnc1 = enc_1 - oldEnc1;
				newEnc2 = enc_2 - oldEnc2;
				newEnc3 = enc_3 - oldEnc3;
				newEnc4 = enc_4 - oldEnc4;
}

void hitungPosisi(void) {
	Xbody = ((enc_1*TtoCM + enc_3*TtoCM)/2);
	
	Ybody = ((enc_2*TtoCM + enc_4*TtoCM)/2);
	
	perpindahan = (sqrt(Xbody*Xbody + Ybody*Ybody));
	
	radian = ((Xbody + Ybody)/(2*R_body));
	
	Xactual = (Xbody*cos(radian) + Ybody*sin(radian));
	Yactual = (Ybody*cos(radian) - Xbody*sin(radian));
}

void hitungRPM(void) {

	/*rpm = rotation per minute ;
		1 rotation = 548 pulses
		time sampling = 2ms
		rpm = pulses * 1000 * 60 / 2 / 548
		rpm = pulses * 54.7445
	*/
	
											rpm[0] = newEnc1 * 54.7445; 
											rpm[1] = newEnc2 * 54.7445;
											rpm[2] = newEnc3 * 54.7445;
											rpm[3] = newEnc4 * 54.7445;
		}

void hitungKecepatanAngular(void) {
	/* w = omega
			w = delta sudut / waktu
			delta sudut = newEnc * 1.52222  // 538/360 = 1.522222222222
	*/
	w[0] = newEnc1 * 1.52222222;
	w[1] = newEnc2 * 1.52222222;
	w[2] = newEnc3 * 1.52222222;
	w[3] = newEnc4 * 1.52222222;
}

void hitungKecepatanLinier(void) {
	// w = v / r ==> v = w * r &&  diameter roda = 15 cm
	v[0] = w[0] * 7.5;
	v[1] = w[1] * 7.5;
	v[2] = w[2] * 7.5;
	v[3] = w[3] * 7.5;
	
}

void hitungPID(void) {
	
	//PID motor 1-4
	for (int i = 0; i<4; i++) {
	error[i] =  (float) inputPID[i] - rpm[i]; //get error ... setPoin di ganti inputrpm kalau algo
	cumError[i] += error[i]; //integral
	rateError[i] = error[i] - lastError[i]; //derivatif
	lastError[i] = error[i];
	u[i] = (kp * error[i]) + (ki * cumError[i]) + (kd * rateError[i]);
}
}

void perubahanNilai(void) {
	//perubahan variable rpm untuk di kirim
	rpmKirim[0] = (uint8_t) rpm[0];
	rpmKirim[1] = (uint8_t) rpm[1];
	rpmKirim[2] = (uint8_t) rpm[2];
	rpmKirim[3] = (uint8_t) rpm[3];
	
	
	
	
}

//action
void stepper(int posisi) {
	if(posisi < 0) { //ccw 
					posisi *= -1; //agar positif
					HAL_GPIO_WritePin(dir1_GPIO_Port, dir1_Pin, GPIO_PIN_SET); //dir1
					}
	else if (posisi >= 0) { //cw
					//posisi sudah positif
					HAL_GPIO_WritePin(dir1_GPIO_Port, dir1_Pin, GPIO_PIN_SET); //dir1
					}
	for(int i=1;i<=posisi;i++){  //Moving stepper motor forward
			HAL_GPIO_WritePin(step_GPIO_Port, step_Pin, GPIO_PIN_SET);
			HAL_Delay(50);
			HAL_GPIO_WritePin(step_GPIO_Port, step_Pin, GPIO_PIN_RESET);
			HAL_Delay(50);
						}
}

		
void kirimUART(int uart, uint8_t data) {
	if (uart == 1) HAL_UART_Transmit_IT(&huart1, &data, sizeof(data));
	else if (uart == 2) HAL_UART_Transmit_IT(&huart2, &data, sizeof(data));
	else if (uart == 3) HAL_UART_Transmit_IT(&huart3, &data, sizeof(data));
	else { //pass 
	}
}

void USART1_IRQHandler(void)
{
  /* USER CODE BEGIN USART2_IRQn 0 */

  /* USER CODE END USART2_IRQn 0 */
  HAL_UART_IRQHandler(&huart1);
  /* USER CODE BEGIN USART2_IRQn 1 */
	HAL_UART_Receive_IT(&huart1, &terimaUART1, sizeof(terimaUART1));
  /* USER CODE END USART2_IRQn 1 */
}

void USART2_IRQHandler(void)
{
  /* USER CODE BEGIN USART2_IRQn 0 */

  /* USER CODE END USART2_IRQn 0 */
  HAL_UART_IRQHandler(&huart2);
  /* USER CODE BEGIN USART2_IRQn 1 */
	HAL_UART_Receive_IT(&huart2, &terimaUART2, sizeof(terimaUART2));
  /* USER CODE END USART2_IRQn 1 */
}

void USART3_IRQHandler(void)
{
  /* USER CODE BEGIN USART2_IRQn 0 */

  /* USER CODE END USART2_IRQn 0 */
  HAL_UART_IRQHandler(&huart2);
  /* USER CODE BEGIN USART2_IRQn 1 */
	HAL_UART_Receive_IT(&huart3, &terimaUART3, sizeof(terimaUART3));
  /* USER CODE END USART2_IRQn 1 */
}




void TIM2_IRQHandler(void)
{
  
	/* USER CODE BEGIN TIM2_IRQn 0 */
  /* USER CODE END TIM2_IRQn 0 */
  HAL_TIM_IRQHandler(&htim2);
  /* USER CODE BEGIN TIM2_IRQn 1 */

  /* USER CODE END TIM2_IRQn 1 */
			
		}


    

void updateDataEncoder1(void) {
	
		
		nilaiEnco1A = (uint8_t) ((GPIOB->IDR & GPIO_PIN_12) >> 12);
		nilaiEnco1B = (uint8_t) ((GPIOB->IDR & GPIO_PIN_13) >> 13);
		
		encInc1 = nilaiEnco1A ^ nilaiEnco1B_sebelum;
		encDec1 = nilaiEnco1B ^ nilaiEnco1A_sebelum;
		
		if(encInc1){
			enc_1--;
			jarakRAW[0]++;
		}
		if(encDec1){
			enc_1++;
			jarakRAW[0]++;
		}
		
		nilaiEnco1A_sebelum = nilaiEnco1A;
		nilaiEnco1B_sebelum = nilaiEnco1B;
}

void updateDataEncoder2(void) {
		
		nilaiEnco2A = (uint8_t) ((GPIOB->IDR & GPIO_PIN_14) >> 14);
		nilaiEnco2B = (uint8_t) ((GPIOB->IDR & GPIO_PIN_15) >> 15);
		
		encInc2 = nilaiEnco2A ^ nilaiEnco2B_sebelum;
		encDec2 = nilaiEnco2B ^ nilaiEnco2A_sebelum;
		
		if(encInc2){
			enc_2--;
			jarakRAW[1]++;
		}
		if(encDec2){
			enc_2++;
			jarakRAW[1]++;
		}
		
		nilaiEnco2A_sebelum = nilaiEnco2A;
		nilaiEnco2B_sebelum = nilaiEnco2B;
}

void updateDataEncoder3(void) {
		
		nilaiEnco3A = (uint8_t) ((GPIOA->IDR & GPIO_PIN_1) >> 1);
		nilaiEnco3B = (uint8_t) ((GPIOA->IDR & GPIO_PIN_0) >> 0);
		
		encInc3 = nilaiEnco3A ^ nilaiEnco3B_sebelum;
		encDec3 = nilaiEnco2B ^ nilaiEnco3A_sebelum;
		
		if(encInc3){
			enc_3--;
			jarakRAW[2]++;
		}
		if(encDec3){
			enc_3++;
			jarakRAW[1]++;
		}
			
		nilaiEnco3A_sebelum = nilaiEnco3A;
		nilaiEnco3B_sebelum = nilaiEnco3B;
}

void updateDataEncoder4(void) {
	
		
		nilaiEnco4A = (uint8_t) ((GPIOB->IDR & GPIO_PIN_5) >> 5);
		nilaiEnco4B = (uint8_t) ((GPIOB->IDR & GPIO_PIN_4) >> 4);
		
		encInc4 = nilaiEnco4A ^ nilaiEnco4B_sebelum;
		encDec4 = nilaiEnco4B ^ nilaiEnco4A_sebelum;
		
		if(encInc4){
			enc_4--;
			jarakRAW[3]++;
		}
		if(encDec4){
			enc_4++;
			jarakRAW[3]++;
		}
		nilaiEnco4A_sebelum = nilaiEnco4A;
		nilaiEnco4B_sebelum = nilaiEnco4B;
}

void EXTI0_IRQHandler(void)
{
  /* USER CODE BEGIN EXTI0_IRQn 0 */

  /* USER CODE END EXTI0_IRQn 0 */
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_0);
  /* USER CODE BEGIN EXTI0_IRQn 1 */
		updateDataEncoder3();
  /* USER CODE END EXTI0_IRQn 1 */
}

void EXTI1_IRQHandler(void)
{
  /* USER CODE BEGIN EXTI1_IRQn 0 */

  /* USER CODE END EXTI1_IRQn 0 */
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_1);
  /* USER CODE BEGIN EXTI1_IRQn 1 */
		updateDataEncoder3();
  /* USER CODE END EXTI1_IRQn 1 */
}

void EXTI4_IRQHandler(void)
{
  /* USER CODE BEGIN EXTI4_IRQn 0 */

  /* USER CODE END EXTI4_IRQn 0 */
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_4);
  /* USER CODE BEGIN EXTI4_IRQn 1 */
		updateDataEncoder4();
  /* USER CODE END EXTI4_IRQn 1 */
}

void EXTI9_5_IRQHandler(void)
{
  /* USER CODE BEGIN EXTI9_5_IRQn 0 */

  /* USER CODE END EXTI9_5_IRQn 0 */
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_5);
  /* USER CODE BEGIN EXTI9_5_IRQn 1 */
		updateDataEncoder4();
  /* USER CODE END EXTI9_5_IRQn 1 */
}

void EXTI15_10_IRQHandler(void)
{
  /* USER CODE BEGIN EXTI15_10_IRQn 0 */

  /* USER CODE END EXTI15_10_IRQn 0 */
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_12);
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_13);
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_14);
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_15);
  /* USER CODE BEGIN EXTI15_10_IRQn 1 */
		updateDataEncoder1();
		updateDataEncoder2();
  /* USER CODE END EXTI15_10_IRQn 1 */
}

void setPWM4(int pwm4){
  TIM_OC_InitTypeDef sConfigOC;
	
	sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = pwm4;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
	HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_4);
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_3);
  }

//motor4
void motor4(speed4){
  if (speed4>0){ //maju
        //HAL_GPIO_WritePin(MIN1D_GPIO_Port,MIN1D_Pin,1);
        //HAL_GPIO_WritePin(MIN2D_GPIO_Port,MIN2D_Pin,0);
        setPWM4(speed4);
  }
  else if(speed4<0){ //mundur
        //HAL_GPIO_WritePin(MIN1D_GPIO_Port,MIN1D_Pin,0);
        //HAL_GPIO_WritePin(MIN2D_GPIO_Port,MIN2D_Pin,1);
        setPWM4(speed4*-1);
  }
  else
  {
    //null
  }
  
}




/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 71;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 999;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 71;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 999;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */
  HAL_TIM_MspPostInit(&htim4);

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 9600;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief USART3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART3_UART_Init(void)
{

  /* USER CODE BEGIN USART3_Init 0 */

  /* USER CODE END USART3_Init 0 */

  /* USER CODE BEGIN USART3_Init 1 */

  /* USER CODE END USART3_Init 1 */
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 115200;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART3_Init 2 */

  /* USER CODE END USART3_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, dir1_Pin|step_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : PC13 */
  GPIO_InitStruct.Pin = GPIO_PIN_13;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PA0 PA1 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PB12 PB13 PB14 PB15 
                           PB4 PB5 */
  GPIO_InitStruct.Pin = GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15 
                          |GPIO_PIN_4|GPIO_PIN_5;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : dir1_Pin step_Pin */
  GPIO_InitStruct.Pin = dir1_Pin|step_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI0_IRQn);

  HAL_NVIC_SetPriority(EXTI1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI1_IRQn);

  HAL_NVIC_SetPriority(EXTI4_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI4_IRQn);

  HAL_NVIC_SetPriority(EXTI9_5_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);

  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

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
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
