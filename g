**Sumário**
Medição da aceleração gravitica

**Objetivos**
- estimar o valor da aceleração gravitica;
- Calibrar o sensor em X, Y e Z;
- utilizar o acelerómetro e identificar limitações;
- utilização do BT;
- Componentes de programação do ARDUINO.

**Procedimento**
- Listar o material
- ligar o conector das baterias ao ARDUINO;
- Conectar o BT;
- Abrir o ARDUINO IDE;
- abrir o pasta ARDUINO FÍSICA no ambiente e escolher o ficheiro ou copiar e colar o programa em baixo para o IDE;
- Abrir o "Plotter Serie";
- Mover o KIT em diversas direções e analisar o comportamento do sensor no gráfico;
- Testar em queda livre para dentro da caixa: em que condições poderá funcionar?
- Abrir o "monitor serie" e analisar os dados numa folha de cálculo;
- Testar e comparar com valores tipicos da segunda referência: ajustar valores no código;
- DOCUMENTAR: útil em sala de aula? Se sim, como poderia ser aplicado? Que problemas se identificam? Alterações a propôr? 


**Outras ideias para desenvolver**
- Relacionar com a gravidade local;
- Calibrar o sensor: procedimento?
- |Utilizar em sala de aula. como?
- Comentar o código: descrever cada linha de código;
- integração do ARDUINO com o PROCESSING;

**Referências**
[Free fall simulator](http://sahyun.net/physics/html5/NGPET_freefall/)
[How to calculate local gravity?](https://www.isobudgets.com/how-to-calculate-local-gravity/)

**Glossário**
ARDUINO IDE - software de desenvolvimento de programação para a placa ARDUINO (ver icone na barra de tarefas do windows);
MONITOR série e PLOTTER SERIE - ARDUINO IDE -> MENU -> FERRAMENTAS -> MONITOR Série e PLOTTER série 
BT - comunicação sem fios bluetooth HC-04

`Código ARDUINO`

// This example shows the 3 axis acceleration.
//#include <SoftwareSerial.h> 
//SoftwareSerial BT(0, 1); // RX | TX 
#include "LIS3DHTR.h"
LIS3DHTR<TwoWire> LIS; //SPI

# define LED 6

void setup(void) {
  Serial.begin(115200);
  //BT.begin(115200);
  while (!Serial);
  LIS.begin(SPI, 10); //SPI SS/CS
  delay(100);
  LIS.setFullScaleRange(LIS3DHTR_RANGE_2G);
  //  LIS.setFullScaleRange(LIS3DHTR_RANGE_4G);
  //  LIS.setFullScaleRange(LIS3DHTR_RANGE_8G);
  //  LIS.setFullScaleRange(LIS3DHTR_RANGE_16G);
  //  LIS.setOutputDataRate(LIS3DHTR_DATARATE_1HZ);
  //  LIS.setOutputDataRate(LIS3DHTR_DATARATE_10HZ);
  //  LIS.setOutputDataRate(LIS3DHTR_DATARATE_25HZ);
  LIS.setOutputDataRate(LIS3DHTR_DATARATE_50HZ);
  //  LIS.setOutputDataRate(LIS3DHTR_DATARATE_100HZ);
  //  LIS.setOutputDataRate(LIS3DHTR_DATARATE_200HZ);
  //  LIS.setOutputDataRate(LIS3DHTR_DATARATE_1_6KHZ);
  //  LIS.setOutputDataRate(LIS3DHTR_DATARATE_5KHZ);

  if (!LIS) {
        Serial.println("LIS3DHTR didn't connect.");
        while (1);
        return;
    }
  }

void loop() {
  unsigned long time1 =millis();
 int i= 0;
 float ax=0;
  float ay=0;
  float az=0;     // get X Y and Z data at once
  // Then print out the raw data
  //Serial.print("X:  "); Serial.print(lis.x);
  //Serial.print("  \tY:  "); Serial.print(lis.y);
  //Serial.print("  \tZ:  "); Serial.print(lis.z);
for (i=0; i<20; i++) {
  ax += LIS.getAccelerationX();
  ay += LIS.getAccelerationY();
  az += LIS.getAccelerationZ(); 
}
if (round(ax/i) == 0 & round(ay/i) == 0) {digitalWrite(LED,HIGH);} else {digitalWrite(LED,LOW);}
  //Serial.print("\t\tX: "); Serial.print(round(ax));
  //Serial.print(" \tY: "); Serial.println(round(ay));
  //Serial.print(" \tZ: "); Serial.print(az);
float a = sqrt(sq(ax)+sq(ay)+sq(az))/i-9.8;//Aceleração local
Serial.println(a);
  //Serial.println(" m/s^2 ");
  //Serial.println();
  //unsigned long time2 =millis();
  //unsigned long delta = time2-time1;
  //Serial.println(delta);
  delay(1);
}

`Código PROCESSING`
(não há)
