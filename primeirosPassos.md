# Primeira utilização do ARDUINO

> [!WARNING]
> NOTA IMPORTANTE: desligar a placa arduino da fonte de alimentação sempre que se mexe no circuito

1. Abre o software arduino 

> NOTA: instalar aqui: https://support.arduino.cc/hc/en-us/articles/360019833020-Download-and-install-Arduino-IDE)

2. conecta a porta USB B da placa arduino com a porta USB A do teu computador;

Abre o exemplo blink: **menu**: file -> examples -> basics -> blink
Enviar o código botão seta upload
NOTA: em caso de erro verificar no menu: tools -> board e port
Comentar o código
> Sugestão: alterar o tempo para metade;
> Sugestão: Imitar com som o código morse para May Day, SOS, ...---...: som: https://www.youtube.com/watch?v=N4P05TASXMs

3. Usar o pino 13 para verificar o controle de um LED

> [!WARNING](o pino 13 é o único em que podes colcoar um led diretamente sem uma resistência em série;)

# Controlar o LED

4. Controlar o LED embebido na placa arduino, usando o **serial monitor**

```
const int LED = 13; // Led embebido na placa Arduino
//int sensor = A0; // sensor no pino A0
//int medicao = 0; // medição do sensor

void setup() {
  pinMode(LED, OUTPUT);
  Serial.begin(9600);
  digitalWrite(LED, LOW);
  
  // Instruções
  Serial.println("Envia '1' para acender o LED e '0' para apagar");
}

void loop() {
  // verificar se a comunicação serial está disponível
  if (Serial.available() > 0) {
    // ler a instrução
    char comando = Serial.read();

    if (comando == '1') {
      digitalWrite(LED, HIGH);
      // medir
      medicao = analogRead(sensor);
      Serial.println("LED ligado");
      //Serial.println(medicao);
      
    } 
    else if (comando == '0') {
      digitalWrite(LED, LOW);
      Serial.println("LED desligado");
    }
    else {
      Serial.println("nota: Envia '1' para acender o LED e '0' para apagar");}
  }
delay (50);
}
```

Comentar

## Sistema autoalimentado
5. Alimentar a Placa arduino com as pilhas/Baterias

Sugestão: testar distância

## Controlar o LED por BT

6. Conectar o BT ao ARDUINO usando a placa de ensaio
Alimentação da placa BT: voltagem? GND? cores; RX trocado com o TX da placa: RX TX peculiaridade;
Emparelhar
Conectar/Sincronizar

> [!TIP]
> Atenção emparelhamento: emparelhar distante de outros BT;

7. Instalar a APP
Configurar a APP

Sugestão: controlar por voz

8. Desmarcar os comentários no código e carregar o novo código novamente
   
> [!TIP]
> No momento de enviar o novo código, desligar a placa BT;  

Sugestão: carregar o exemplo ReadAnalogVoltage e testar o sensor ao aproximar a mão ou mesmo tocar-lhe;

10. Isto sugere algum projeto?
    




