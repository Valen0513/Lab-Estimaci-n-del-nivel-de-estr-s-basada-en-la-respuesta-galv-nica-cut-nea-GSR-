# Lab-Estimaci-n-del-nivel-de-estr-s-basada-en-la-respuesta-galv-nica-cut-nea-GSR-
PARTE A 

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

<img width="1204" height="1600" alt="image" src="https://github.com/user-attachments/assets/2e3c8512-28fa-4b77-8afa-31379d826ba0" />


PARTE B

Para capturar la toma de datos se utilizo el progrma de arduino IDE el cual se encarga de la adquisición y digitalización de la señal de conductancia cutánea mediante un esquema de muestreo periódico. Inicialmente, se define una frecuencia de muestreo (F_s) de 50 Hz, lo que establece un periodo de muestreo (T_s) de 20 ms, garantizando la captura de las variaciones lentas características de la GSR. Dentro del ciclo principal (loop), el sistema realiza la lectura del canal analógico (pin 34) obteniendo un valor digital de 12 bits (0–4095). Posteriormente, este valor es convertido a unidades de tensión mediante la relación:

<img width="243" height="83" alt="image" src="https://github.com/user-attachments/assets/a8cc9c86-8ba1-4c47-ba27-3b86416234bd" />

Para representar el voltaje real de la fuente de alimentación de 3.3 VDC. Finalmente, los datos se transmiten vía serial a una velocidad de 115,200 baudios con una precisión de tres decimales, permitiendo la visualización y el posterior análisis de las componentes estacionaria y transitoria en tiempo real.

<img width="597" height="425" alt="image" src="https://github.com/user-attachments/assets/a1b8da11-1bba-4ac5-bd21-caabe5652d52" />


Luego se pasa a Matlab para la visualizacion y abquisición en tiempo real donde el script establece una comunicación serial con la placa a 115,200 baudios. Mediante una función de captura, el programa recibe los valores de voltaje y los almacena en un vector, mientras actualiza dinámicamente una gráfica. Este proceso permite observar la respuesta del sujeto ante el protocolo de estimulación reposo e inhalación brusca. Una vez finalizado el tiempo de adquisición (T_rec), los datos se guardan en un archivo .mat para asegurar su integridad y permitir análisis posteriores. Para probar esto la persona realizo una inspiración profunda y luego exhalo levemente y siguio respirando normal dio como respuesta la GSR aumentada considerablemente para luego regresar muy paulatinamente al valor inicial tomando nota del valor inicial y hata el valor al que llega. 

<img width="571" height="700" alt="Captura de pantalla 2026-03-04 231836" src="https://github.com/user-attachments/assets/98172089-08eb-4d6d-a8b8-b5e424748621" />


Ahora ya con ese archivo .mat se hace el filtraod y el pr-procesamiento digital. Dado que la señal GSR es inherentemente lenta y propensa a ruidos de alta frecuencia (como interferencias electromagnéticas o temblores musculares), se aplica un filtro pasa-bajos Butterworth de segundo orden con una frecuencia de corte de 1 Hz. El uso de la función filtfilt garantiza un filtrado de fase cero, evitando desfases temporales en la detección de los picos.

<img width="456" height="73" alt="image" src="https://github.com/user-attachments/assets/cb180bbc-81e6-476d-8432-39d38429f4d5" />


Para el análisis de la actividad electrodérmica, se separa la señal filtrada en sus dos componentes principales:

- Componente Tónica (SCL): Se extrae mediante una media móvil (movmean) con una ventana de 10 segundos, representando el nivel basal de conductancia.

- Componente Fásica (SCR): Se obtiene restando la línea base de la señal filtrada. Sobre esta componente se aplica el algoritmo findpeaks con un umbral de 0.01 V para identificar las respuestas simpáticas ante estímulos, calculando automáticamente el número de picos, su amplitud promedio y su valor máximo.

<img width="571" height="232" alt="image" src="https://github.com/user-attachments/assets/e3c65e6e-7c9c-456b-9477-5e453b665a0b" />


Finalmente, se genera un tablero de control con tres subgráficas que permiten validar visualmente el comportamiento fisiológico: la señal filtrada total, la evolución de la línea base (SCL) y los pulsos rápidos de estrés (SCR) detectados. Los resultados estadísticos se despliegan en la consola para la interpretación clínica del nivel de activación del sujeto.

PARTE C 

Implementación de conectividad inalámbrica 

Para cumplir con el concepto de dispositivo vestible, el sistema utiliza el protocolo de comunicación inalámbrica Bluetooth Classic, aprovechando el módulo integrado en el microcontrolador ESP32, la cual se va a alimentar con una power bank de 5 voltios. Esta implementación permite la movilidad del sujeto de prueba y la monitorización remota desde un dispositivo móvil o computador sin interferencias por cables.

Configuración de Bluetooth 

Se utiliza la librería BluetoothSerial.h, la cual emula un puerto serie estándar sobre una conexión Bluetooth (perfil SPP - Serial Port Profile). Mediante el comando SerialBT.begin("ESP32-GSR-Estres"), el dispositivo se hace visible para otros terminales con un nombre identificativo, facilitando el emparejamiento.

Este algoritmo procesa la señal localmente para determinar el estado fisiológico del usuario:

- Procesamiento Local: El ESP32 calcula la componente tónica (SCL) mediante un filtro de media exponencial (EMA) y la componente fásica (SCR) en tiempo real.

- Lógica de Umbrales: Se establecen tres niveles de estrés basados en la amplitud de la SCR los cuales se obtuvieron de la prueva de el paciente al realizar la inspiración profunda y luego exhalar lentamente:

- Bajo: < 0.04 V

- Moderado: 0.04 V a 0.08 V

- Alto: > 0.08V

- Mensajería Inalámbrica: Los resultados se empaquetan en una cadena de texto (String) y se envían de forma inalámbrica cada 200 ms. Esto permite que el examinador reciba en su celular o PC no solo el valor crudo del voltaje, sino un diagnóstico inmediato del nivel de estrés del sujeto.

<img width="457" height="713" alt="image" src="https://github.com/user-attachments/assets/126e9cce-c1ce-4c0d-8026-628a90de87a8" />

Visualización en el dispositivo móvil

Para la validación del dispositivo vestible, se utilizó una aplicación de terminal Bluetooth en un dispositivo móvil, la cual recibe los datos procesados directamente desde el ESP32 alimentada por una power bank. Esta etapa permite una monitorización inalámbrica y autónoma, sin necesidad de cables conectados a una computadora.

La pantalla del celular despliega tres valores fundamentales en tiempo real:

- GSR (V): El voltaje total medido, que representa la resistencia de la piel en ese instante.

- SCR (V): La componente fásica filtrada, que indica si hubo una reacción nerviosa súbita (picos de conductancia).

- Nivel de Estrés: Un diagnóstico textual basado en la magnitud de la respuesta fásica.

Umbrales 

El software implementa un algoritmo de decisión basado en la amplitud de la Respuesta de Conductancia Cutánea (SCR). Los criterios de clasificación mostrados en el celular son:

- ESTRÉS BAJO: Se muestra cuando el sujeto está en reposo térmico y mental. Las variaciones de voltaje (SCR) son mínimas o inexistentes (< 0.04 V), indicando predominancia del sistema nervioso parasimpático.

- ESTRÉS MODERADO: Se activa ante estímulos leves o estados de alerta moderada (como una respiración profunda o un ruido inesperado). El sistema detecta variaciones de voltaje entre 0.04V y 0.08 V.

- ESTRÉS ALTO: Se visualiza tras estímulos fuertes que provocan una activación simpática significativa como el ejercicio de inhalación brusca. El aumento súbito de la sudoración reduce la resistencia de la piel, generando una SCR mayor a 0.08 V.

La principal ventaja de observar estos niveles directamente en el celular es que el procesamiento de la señal se realiza internamente en el microcontrolador. Esto significa que el dispositivo no solo transmite datos crudos, sino que realiza un pre-diagnóstico clínico automático, facilitando la interpretación inmediata para el evaluador en un entorno de movilidad.

<img alt="image" src="https://github.com/Valen0513/Lab-Estimaci-n-del-nivel-de-estr-s-basada-en-la-respuesta-galv-nica-cut-nea-GSR-/blob/main/WhatsApp%20Image%202026-03-05%20at%207.06.06%20PM.jpeg" />
PREGUNTAS PARA DISCUSIÓN

 Pregunta 1: ¿A qué se debe que una inspiración profunda incremente la
magnitud de la respuesta galvánica cutánea (GSR)?

La inspiración profunda actúa como un estímulo fisiológico potente que activa de forma transitoria el sistema nervioso simpático. Esto ocurre por dos mecanismos principales:

- Reflejo Autonómico: Al realizar una inhalación brusca y profunda, se produce una activación de los receptores de estiramiento en los pulmones y un cambio en la presión intratorácica. El centro de control cardiovascular y autonómico en el tallo cerebral interpreta esto como una señal de alerta leve, enviando una descarga de acetilcolina hacia las glándulas sudoríparas ecrinas.

- Llenado de los Conductos Sudoríparos: La activación simpática provoca que las glándulas secreten sudor. Incluso si el sudor no llega a desbordarse por el poro, el llenado de los conductos sudoríparos crea puestes de baja resistencia eléctrica a través de la epidermis que es aislante. Como la conductancia es el inverso de la resistencia G = 1/R, al llenarse estos canales, la conductancia aumenta súbitamente, generando el pico que observaste en MATLAB o en tu celular.

• Pregunta 2: ¿Cuáles serían las ventajas y desventajas de utilizar la GSR
como indicador de estrés?

Ventajas:

- Sensibilidad al Sistema Simpático: A diferencia del ritmo cardíaco, que está influenciado tanto por el sistema simpático como por el parasimpático, las glándulas sudoríparas ecrinas están controladas exclusivamente por el sistema simpático que es uno de los sistemas que solo tiene el sistema simpatico. Esto hace que la GSR sea una medida muy limpia del nivel de alerta o estrés.

- No Invasiva y Bajo Costo: se puede implementar con materiales sencillos como lo implementamos nostoros que fue con electrodos metálicos, resistencias y un capacitor, sin causar dolor o incomodidad al sujeto ya que se tilizo una muñequera para que no le incomodara a la persona.

- Respuesta Rápida: Permite identificar reacciones emocionales o cognitivas en cuestión de pocos segundos después de ocurrido el estímulo, auque aveces se demora en bajar cuando esta en estres alto.

Desventajas:

- Inespecificidad Emocional: La GSR indica cuánta activación hay  que seria la excitación, pero no qué emoción la causa. El sensor marcará un nivel alto tanto si el sujeto está muy asustado como si está muy feliz o muy enojado.

- Sensibilidad a Factores Externos: La señal es altamente dependiente de la temperatura ambiente y la humedad. Un clima cálido puede elevar la línea base (SCL) y enmascarar las respuestas al estrés.

- Artefactos de Movimiento: Como observaste al diseñar el vestible, cualquier movimiento que altere el contacto del electrodo con la piel genera ruido que puede confundirse con una respuesta de estrés (SCR) real, y como es en la parte de la mano la persona la mueve mucho y eso puede causar ruido como que suba de nivel normal a estres moderado o alto.

CONCLUSIONES

- Validación del Diseño de Seguridad: Se demostró mediante cálculos de la Ley de Ohm que el uso de una resistencia limitadora de 68Kohm garantiza la integridad del sujeto de prueba. Incluso en el peor escenario de cortocircuito en la piel, la corriente resultante es 0.073mA se mantiene trece veces por debajo del umbral de percepción de 1mA, cumpliendo con los estándares de seguridad para instrumentación biomédica.

- Eficacia de la Configuración de Sensores: la ubicación de los electrodos permitió una captura óptima de la señal. Esta zona, al poseer una alta densidad de glándulas sudoríparas ecrinas, facilitó la identificación de las variaciones de conductancia sin necesidad de etapas de amplificación complejas, validando el uso del divisor de tensión como transductor primario.

- Separación de Componentes de la EDA: Mediante el procesamiento digital en MATLAB, fue posible distinguir con éxito la componente tónica (SCL) de la fásica (SCR). El uso de filtros pasa-bajos y medias móviles permitió aislar las respuestas simpáticas ante estímulos específicos como la inspiración profunda, demostrando que la GSR es un indicador dinámico y sensible para la estimación del estado autonómico.

- Ventajas del Dispositivo Vestible e Inalámbrico: La implementación de la transmisión vía Bluetooth hacia un dispositivo móvil eliminó los artefactos de movimiento y el ruido inducido por cables largos. Además, la capacidad del ESP32 para clasificar el estrés en tiempo real Bajo, Moderado, Alto demuestra el potencial de los sistemas embebidos para el pre-diagnóstico clínico en entornos de movilidad.

REFERENCIAS

- Boucsein, W. (2012). Electrodermal Activity. Springer Science & Business Media. (Referencia fundamental sobre la fisiología de la piel).

- Figner, B., & Murphy, R. O. (2011). Using skin conductance in judgment and decision making research. En A Handbook of Process Tracing Methods for Decision Research (pp. 163-184). Routledge.

- Loggia, M. L., Juneau, M., & Bushnell, C. M. (2011). Autonomic responses to heat pain: Heart rate, skin conductance, and their relation to verbal ratings and stimulus intensity. Pain, 152(3), 592-598. 

- Mainardi, L. T. (2011). Biomedical Signal Processing. En Encyclopedia of Biomedical Engineering. Elsevier. (Para la parte del filtrado y procesamiento en MATLAB).

- Universidad Militar Nueva Granada. (2025). Guía de Laboratorio: Estimación del nivel de estrés basada en la respuesta galvánica cutánea (GSR). Facultad de Ingeniería, Programa de Ingeniería Biomédica.




 
 








