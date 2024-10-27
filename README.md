# STM32F407DISC1_HAL
Bütün projelerde clock ayarları ve pin başlangıç ayarları .ioc uzantılı 

## 001_GPIO_BUTTON_7SEGMENT
2 buton ile ortak katot 7 segment display kontrolü
##### Butonlar;
- Artış butonu =>PA0
- Azalma butonu =>PA1
##### 7 Segment Display pinleri;
- PE7 =>A
- PE8 =>B
- PE9 =>C
- PE10 =>D
- PE11 =>E
- PE12 =>F
- PE13 =>G
- PE14 => DP

## 002_EXTERNALINTERRUPT_BUTTON_7SEGMENT
3 harici kesme butonu ile ortak katot 7 segment display kontrolü
##### Butonlar;
- Sıfırlama kesme butonu =>PA0
- Artış kesme butonu =>PA1
- Azalma kesme butonu =>PA2
##### 7 Segment Display pinleri;
- PE7 =>A
- PE8 =>B
- PE9 =>C
- PE10 =>D
- PE11 =>E
- PE12 =>F
- PE13 =>G
- PE14 => DP
##### HAL Kütüphanesi ile Kesmelerin Ayarlanması;
-> Kesme pinleri öncelikli olaak MX arayüzünde ayarlanır
-> Kesme önceliklendirmeleri "main.c" dosyası içerisinde;
- HAL_NVIC_SetPriority(EXTI0_IRQn, 0, 0); ile PA0 pinine bağlı EXTI0 kesmesi 1. kesme olarak ayarlanır
- HAL_NVIC_SetPriority(EXTI1_IRQn, 1, 0); ile PA1 pinine bağlı EXTI0 kesmesi 2. kesme olarak ayarlanır
- HAL_NVIC_SetPriority(EXTI2_IRQn, 2, 0); ile PA2 pinine bağlı EXTI0 kesmesi 3. kesme olarak ayarlanır

-> Kesme geldiği zaman yapılacak işlemleri "stm32f4xx_it.c" dosyası içerisinde;
- void EXTI0_IRQHandler(void) fonksiyonuyla EXTI0 kesmesi geldiği zaman yapılacak işlemler ayarlanır
- void EXTI1_IRQHandler(void) fonksiyonuyla EXTI1 kesmesi geldiği zaman yapılacak işlemler ayarlanır
- void EXTI2_IRQHandler(void) fonksiyonuyla EXTI2 kesmesi geldiği zaman yapılacak işlemler ayarlanır
