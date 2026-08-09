> Material: Arduino UNO; LDR; resistências 10 Kohm e 220 ohm; dupont wires male-female (or male/male, se estás a usar uma placa-mãe); BT HC-06 ou HC-05; placa de ensaio (breadboard) (opcional); duas baterias 18650 e suporte.

> [!WARNING]
> Regra de Segurança: as baterias 18650 tem que ser usadas em condições próprias: carregamento; armazenamento; refrigeração; CC;

# Antes da primeira utilização, vamos simular...

1. Abre uma conta no [Tinkercad](https://www.tinkercad.com/)
2. CREATE -> circuits
3. Escolhe um ARDUINO: components Basic
4. Escolhe um projeto: starters Arduino Blink
5. Clica em START SIMULATION
6. Procura na placa o led L e verifica o que lhe acontece?
7. Clica em STOP SIMULATION
8. Abre o CODE block e lê o código em modo TEXT
9. Agora vamos procurar na caixa um ARDUINO e um cabo USB AB.

# Primeira utilização do ARDUINO

> [!WARNING]
> Regra de Segurança: desligar a placa arduino da fonte de alimentação sempre que se "mexe" no circuito

> [!TIP]
> NOTA IMPORTANTE: Comentar o código

1. Abre o software arduino 

> NOTA: caso não tenhas o software [clica aqui para instalar](https://support.arduino.cc/hc/en-us/articles/360019833020-Download-and-install-Arduino-IDE)

2. Conecta a porta USB B da placa arduino com a porta USB A do teu computador;

2.1 Abre o exemplo blink: **menu**: file -> examples -> basics -> blink. 

2.2 Enviar o código: canto superior esquerdo da janela: botão seta (upload): o que acontece na placa?

> NOTA: em caso de erro verificar se a placa e a porta são as corretas menu: tools -> board e port

> [!TIP]
> Sugestão: alterar o tempo para metade;
> Sugestão: Imitar com som o código morse para May Day, SOS, ...---...: som: https://www.youtube.com/watch?v=N4P05TASXMs

Sugestão: colocar um outro LED no 13 para verificar que este é um pin em que o LED está a salvo

> [!WARNING]
> o pino 13 é o único em que podes colocar um led diretamente sem uma resistência em série;

Sugestão: carregar o exemplo ReadAnalogVoltage; colocar um dupont macho-macho; abrir o serial monitor e o depois o serial plotter: ao aproximar a mão ou mesmo tocar-lhe, o que acontece?

# Controlar o LED embebido na placa arduino

4. Vamos simular primeiro
5. Carregar este programa:

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
6. Usar o ARDUINO em 4D!

## Controlar o LED por BT usando a APP do MIT Inventor

7. Desligar a alimentação da pilha e Conectar o BT ao ARDUINO usando a placa de ensaio

!?!?!!?Colocar foto aqui!?!?!?

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
    




