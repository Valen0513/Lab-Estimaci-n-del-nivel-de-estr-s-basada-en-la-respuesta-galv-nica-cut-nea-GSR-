# Lab-Estimaci-n-del-nivel-de-estr-s-basada-en-la-respuesta-galv-nica-cut-nea-GSR-
Pate A 

Actividad Electrodermica 

La actividad electrodérmica se refiere a todos los fenómenos eléctricos que ocurren en la piel humana. Principalmente, se manifiesta como alteraciones en la capacidad del tejido cutáneo para conducir electricidad, propiedad conocida como conductancia cutánea. Esta actividad está directamente vinculada a la secreción de las glándulas sudoríparas ecrinas, las cuales son controladas exclusivamente por el sistema nervioso simpático.

<img width="768" height="576" alt="image" src="https://github.com/user-attachments/assets/8f63ef07-b4fe-4a6b-936c-dd41b5aed734" />

Componentes de la señal:

- Nivel de Conductancia Cutánea o SCL (componente estacionaria o basal): Es la componente estacionaria o basal.
Representa el nivel tónico de la conductancia, el cual varía lentamente en el tiempo dependiendo del estado de hidratación de la piel y el nivel de activación general del individuo.

- Respuesta galvánica Cutánea o SCR (componente transitoria o dinámica): Es la componente transitoria o fásica. Se caracteriza por incrementos súbitos y temporales de la conductancia ante estímulos específicos como una respiración profunda, dolor o estrés.


<img width="607" height="272" alt="image" src="https://github.com/user-attachments/assets/be116107-7b13-41a0-ac5b-cb106898e6d0" />

Morfología de la GSR

Al aplicar un estímulo, la señal presenta una morfología característica que incluye:

- Latencia: El tiempo entre el estímulo y el inicio de la respuesta.

- Tiempo de subida (Rise time): Tiempo que tarda la señal en llegar a su pico máximo.

- Amplitud: La magnitud del incremento de conductancia.

- Tiempo de recuperación: El tiempo que tarda la señal en regresar a su nivel basal, el cual suele ser significativamente mayor al tiempo de subida.

<img width="735" height="218" alt="image" src="https://github.com/user-attachments/assets/744bbec0-076f-4918-ad2f-14d2ae13f2d6" />

Relación con el estrés

La GSR es uno de los indicadores autonómicos más investigados en ingeniería biomédica. Dado que las glándulas sudoríparas responden a la carga cognitiva y emocional, un aumento en la frecuencia o amplitud de las SCR suele interpretarse como un incremento en los niveles de estrés y esfuerzo mental.

Efectos de la corriente en el cuerpo Humano (Norma IEC 60479)

La norma IEC 60479 define los efectos del paso de la corriente eléctrica por el cuerpo humano. Para corrientes continuas (DC) y alternas (AC), los efectos principales según la intensidad son:

0.5 mA: Umbral de percepción. El sujeto comienza a sentir una leve sensación de hormigueo.

10 mA: Umbral de "no soltar". Se producen contracciones musculares involuntarias que impiden que el sujeto suelte el electrodo.

30 mA: Umbral de parálisis respiratoria si la corriente atraviesa el tórax.

75 - 100 mA: Umbral de fibrilación ventricular, que puede ser fatal en pocos segundos.

<img width="695" height="395" alt="image" src="https://github.com/user-attachments/assets/90d0578c-df97-42c1-8169-9eb4da553233" />

Tabla 1. Efectos fisiológicos de la electricidad en los seres humanos (NTC-IEC 60601-1)

CALCULOS 

<img width="338" height="98" alt="image" src="https://github.com/user-attachments/assets/0a00a1e8-1550-4246-aa46-dde9c1ea4632" />

<img width="257" height="117" alt="image" src="https://github.com/user-attachments/assets/cc38ff5a-2964-4bb2-95e4-80c4b7ef56f9" /> 

Donde:

Vcc=5 voltios

Vee= 0 voltios

R= 68 kohm

Resistencia cutánea= 0 Ohm. Pero cuando se toma en cuenta La resistencia cutánea se ubica normalmente entre los 300K y 2M
(Salsenau et al., 2013)

La corriente resultante de 0,0735 mA es significativamente menor al límite permitido de 1 mA, lo cual confirma que el diseño es totalmente seguro para el sujeto de prueba.

DISEÑO

Se tomo en cuenta el siguiente circuito para el diseño del dispositivo:

<img width="482" height="293" alt="image" src="https://github.com/user-attachments/assets/c7521bee-9a6d-4401-b69e-bfa52109edb9" />

Los electrodos se hicieron con una lata de metal gruesa ya que el metal tiene una capacidad de conductancia electrica y su interacción con los iones de la piel, estos electrodos se hacen pequeñitos para que no molesten al paciente, se utilzo la resistencia de 68 kohm y el capacitor de 1 micro faradio ceramico, y se conecto como se muestra en la imagen pero con una esp32 en vez de el arduino, todo se soldo para que quedaras fijos los electrodos y se pudieran colocar en la parte del cuerpo elejida.

La parte anatomica elejida para la conductancia cutánea es la parte superor de la mano encima de la muñeca ya que La respuesta galvánica cutánea (GSR) depende totalmente de la actividad de las glándulas sudoríparas ecrinas. La palma de la mano, específicamente la base del dedo pulgar (eminencia tenar) y la base del dedo meñique (eminencia hipotenar), tiene una de las concentraciones más altas de estas glándulas en todo el cuerpo humano. Esto permite capturar variaciones de conductancia mucho más fuertes y claras ante un estímulo de estrés. En esta zona se tiene:

- Menos movimiento: A diferencia de las yemas de los dedos, estas zonas se mueven menos cuando el sujeto está realizando tareas como escribir o resolver el examen.

- Mejor contacto: Al ser áreas más amplias y planas, facilitan que los electrodos (placas metálicas o Ag-AgCl) se mantengan firmes con las cintas de velcro, evitando saltos falsos en la señal

Colocar los sensores en la base de la palma permite que el circuito sea más compacto y similar a un guante o una muñequera técnica, lo cual es mucho más cómodo para el sujeto de prueba que tener cables estorbando en las puntas de los dedos durante un monitoreo continuo. 


 
 








