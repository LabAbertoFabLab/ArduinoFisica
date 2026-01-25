# Connectar

> [!WARNING] NOTA IMPORTANTE: desligar a placa arduino da fonte de alimentação sempre que se mexe no circuito

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

> [!WARNING] NOTA IMPORTANTE: o pino 13 é o único em que podes colcoar um led diretamente sem uma resistência em série;

4. Controlar o LED embebido na placa arduino, usando o **serial monitor**

`const int LED = 13; // Led embebido na placa Arduino

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
      Serial.println("LED ligado");
    } 
    else if (comando == '0') {
      digitalWrite(LED, LOW);
      Serial.println("LED desligado");
    }
  } else {Serial.println("sem dados disponíveis");}
delay (50);
}`

Comentar

5. Conectar o BT ao ARDUINO usando a placa de ensaio
alimentação
RX TX pecularialidade
Emparelhar
Conectar

7. Instalar a APP
Configurar
9. Alimentar a Placa arduino
10.  




