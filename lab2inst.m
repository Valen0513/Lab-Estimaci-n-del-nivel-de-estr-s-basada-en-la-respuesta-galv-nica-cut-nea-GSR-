clc; clear; close all;

%% =========================================================
%        LABORATORIO – GSR CON DETECCIÓN DE SCR
% ==========================================================

puerto   = "COM6";
baudrate = 115200;
Fs = 50;  

Trec = input('Digite el tiempo de adquisición en segundos: ');
Ntotal = Fs*Trec;

%% ================== FUNCIÓN DE CAPTURA ===================

function capturar_gsr(nombre_archivo, puerto, baudrate, Fs, Trec)

    Ntotal = Fs*Trec;
    tiempo = (0:Ntotal-1)/Fs;
    voltaje = zeros(Ntotal,1);

    s = serialport(puerto, baudrate);
    configureTerminator(s,"LF");
    flush(s);
    pause(2);

    figure;
    h = plot(tiempo,voltaje,'b','LineWidth',1.5);
    xlabel('Tiempo (s)');
    ylabel('Voltaje (V)');
    title('GSR Tiempo Real');
    grid on;
    ylim([0 3.3]);

    disp("Iniciando captura GSR...");
    disp("Protocolo: Reposo 15 s → Inhalación brusca → Esperar 20 s");

    for k = 1:Ntotal
        dato = str2double(readline(s));
        if ~isnan(dato)
            voltaje(k) = dato;
            set(h,'YData',voltaje);
            drawnow limitrate;
        end
    end

    clear s;
    save(nombre_archivo,"voltaje","tiempo","Fs");

    disp("Captura finalizada y guardada.");
end


capturar_gsr("gsr_data.mat", puerto, baudrate, Fs, Trec);


clc; close all;

load("gsr_data.mat");
x = voltaje;
t = tiempo;

%% 1. FILTRO PASA-BAJOS
fc = 1;  
[b,a] = butter(2,fc/(Fs/2),"low");
x_f = filtfilt(b,a,x);

%% 2. SEPARACIÓN TÓNICA (SCL) 
baseline = movmean(x_f, Fs*10);   
x_phasic = x_f - baseline;        

%% 3. DETECCIÓN DE PICOS SCR
umbral = 0.01;  
[pks,locs] = findpeaks(x_phasic,...
                      'MinPeakHeight',umbral,...
                      'MinPeakDistance',Fs*3);

amplitudes = pks;
tiempos_pico = t(locs);

figure;
plot(t,x_f,'b','LineWidth',1.5); hold on;
plot(tiempos_pico,x_f(locs),'ro','MarkerSize',8,'LineWidth',2);
title('GSR Total (SCL + SCR)');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
legend('GSR','SCR Detectado');
grid on;

figure;

subplot(3,1,1)
plot(t,x_f,'b');
title('Señal GSR Filtrada');
grid on;

subplot(3,1,2)
plot(t,baseline,'g');
title('Componente Tónica (SCL)');
grid on;

subplot(3,1,3)
plot(t,x_phasic,'k'); hold on;
yline(umbral,'r--');
title('Componente Fásica (SCR)');
grid on;

disp("====================================");
disp("RESULTADOS GSR");
disp("Número de SCR detectados: " + length(pks));

if ~isempty(amplitudes)
    disp("Amplitud promedio SCR: " + mean(amplitudes) + " V");
    disp("Amplitud máxima SCR: " + max(amplitudes) + " V");
end

disp("====================================");