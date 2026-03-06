#include "BluetoothSerial.h"
BluetoothSerial SerialBT;

// ===== CONFIGURACIÓN =====
const int gsrPin = 34;
const float Vref = 3.3;
const int ADCmax = 4095;

// Filtro para componente tónica
float scl = 0.0;
const float alpha = 0.01;  

void setup() {
  SerialBT.begin("ESP32-GSR-Estres");
}

void loop() {
  // 1. Lectura ADC
  int adc = analogRead(gsrPin);
  float gsr = (adc * Vref) / ADCmax;

  // 2. Componente tónica (SCL)
  scl = alpha * gsr + (1 - alpha) * scl;

  // 3. Componente fásica (SCR)
  float scr = gsr - scl;

  // 4. Clasificación del estrés
  String nivel;
  if (scr < 0.04) {
    nivel = "ESTRES BAJO";
  } else if (scr < 0.08) {
    nivel = "ESTRES MODERADO";
  } else {
    nivel = "ESTRES ALTO";
  }

  // 5. Mensaje al celular
  SerialBT.print("Nivel: ");
  SerialBT.print(nivel);
  SerialBT.print(" | GSR: ");
  SerialBT.print(gsr,3);
  SerialBT.print(" V | SCR: ");
  SerialBT.print(scr,3);
  SerialBT.println(" V");

  delay(200); 
}

