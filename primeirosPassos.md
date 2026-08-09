# Primeira utilização do ARDUINO

> Material: Arduino UNO; LDR; resistência 10 Kohm; dupont wires male-female (or male/male, se estás a usar uma placa-mãe); BT HC-06 ou HC-05; placa-mãe (opcional).

> [!WARNING]
> Regra de Segurança: desligar a placa arduino da fonte de alimentação sempre que se "mexe" no circuito

> [!TIP]
> NOTA IMPORTANTE: Comentar o código

1. Abre o software arduino 

> NOTA: caso não tenhas o software [clica aqui para instalar](https://support.arduino.cc/hc/en-us/articles/360019833020-Download-and-install-Arduino-IDE)

2. Conecta a porta USB B da placa arduino com a porta USB A do teu computador;

2.1 Abre o exemplo blink: **menu**: file -> examples -> basics -> blink. 

2.2 Enviar o código: canto superior esquerdo da janela: botão seta (upload)

> NOTA: em caso de erro verificar no menu: tools -> board e port

> [!TIP]
> Sugestão: alterar o tempo para metade;
> Sugestão: Imitar com som o código morse para May Day, SOS, ...---...: som: https://www.youtube.com/watch?v=N4P05TASXMs

Sugestão: colocar um outro LED no 13 para verificar o controle de um LED
Sugestão: carregar o exemplo ReadAnalogVoltage e testar o sensor ao aproximar a mão ou mesmo tocar-lhe;

> [!WARNING]
> o pino 13 é o único em que podes colocar um led diretamente sem uma resistência em série;

# Controlar o LED

3. Controlar o LED embebido na placa arduino, usando o **serial monitor**
4. Carregar este programa:

```
//Primeiros passos: variáveis; controlar LED; sensor Luz;
//comunicação Serial; Bluetooth;
//
const int LED = 13; // Led embebido na placa Arduino
int sensor = A0; // sensor no pino A0
int medicao = 0; // medição do sensor

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
      Serial.print("Sistema ativo");
      Serial.print(",");
      Serial.println(medicao);
      
    } 
    else if (comando == '0') {
      digitalWrite(LED, LOW);
      Serial.print("Sistema inativo");
      Serial.print(",");
      Serial.println(medicao);
    }
    else {
      Serial.println("nota: Envia '1' para acender o LED e '0' para apagar");
      Serial.print(",");
      Serial.println(medicao);
    }
  }
delay (50);
}
```

5. Testar os valores 0 e 1 no **serial monitor**

Comentar

## Controlar o LED por BT usando a APP do MIT Inventor

7. Desligar a alimentação da pilha e Conectar o BT ao ARDUINO usando a placa de ensaio

Colocar foto aqui!?!?!?

Alimentação da placa BT: voltagem? GND? cores; RX trocado com o TX da placa: RX TX peculiaridade;
Emparelhar
Conectar/Sincronizar

> [!TIP]
> Atenção emparelhamento: emparelhar distante de outros BT;

8. Instalar e Configurar a APP
Conectar com o BT
Configurar botões
Usar terminal e botões

Sugestão: controlar por voz e movimento do telefone

9. Desmarcar os comentários no código e carregar o novo código novamente
   
> [!TIP]
> No momento de enviar o novo código, desligar a placa BT;  

## Sistema alimentado por bateria/pilha
6. Alimentar a Placa arduino com as pilhas/Baterias e verificar se a luz verde acende

Sugestão: testar distância

# Isto sugere algum projeto?
    




