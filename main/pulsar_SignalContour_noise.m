%% 该程序的功能：不带噪声和带高斯白噪声的脉冲星信号轮廓的产生与影响因素分析;保存脉冲星轮廓（不带噪声）,脉冲星轮廓（带宇宙背景噪声）
%% 输入参数：探测面积：A_1,A_2,A_3,A_4;脉冲星辐射流率：rate_pulsar_1,rate_pulsar_2,rate_pulsar_3;宇宙背景噪声辐射流率rate_noise_1，rate_noise_2，rate_noise_3;data.txt
%% 输出参数：分析图形
%% 编写人：丰佳伟
%% 编写日期：2022/5/20
clc;
clear all;close all;
A_1=100;A_2=150;A_3=200;A_4=400;
rate_pulsar_1=15;rate_pulsar_2=30;rate_pulsar_3=90;
t=0:0.0335/1023:0.0335;
rate_noise_1=120;rate_noise_2=210;rate_noise_3=300;

lamda_b_1=A_3.*rate_noise_1;   lamda_b_2=A_3.*rate_noise_2;   lamda_b_3=A_3.*rate_noise_3;
lamda_b_4=A_4.*rate_noise_1;   lamda_b_5=A_4.*rate_noise_2;   lamda_b_6=A_4.*rate_noise_3;
%% 带噪声脉冲星信号轮廓
Pulsar_Profile_noise_1=A_3.*rate_pulsar_2.*h(t)+lamda_b_1;   Pulsar_Profile_noise_2=A_3.*rate_pulsar_3.*h(t)+lamda_b_1;
Pulsar_Profile_noise_3=A_4.*rate_pulsar_2.*h(t)+lamda_b_4;   Pulsar_Profile_noise_4=A_4.*rate_pulsar_3.*h(t)+lamda_b_4;

Pulsar_Profile_noise_5=A_3.*rate_pulsar_2.*h(t)+lamda_b_2;   Pulsar_Profile_noise_6=A_3.*rate_pulsar_3.*h(t)+lamda_b_2;
Pulsar_Profile_noise_7=A_4.*rate_pulsar_2.*h(t)+lamda_b_5;   Pulsar_Profile_noise_8=A_4.*rate_pulsar_3.*h(t)+lamda_b_5;  

Pulsar_Profile_noise_9=A_3.*rate_pulsar_2.*h(t)+lamda_b_3;   Pulsar_Profile_noise_10=A_3.*rate_pulsar_3.*h(t)+lamda_b_3;    
Pulsar_Profile_noise_11=A_4.*rate_pulsar_2.*h(t)+lamda_b_6;   Pulsar_Profile_noise_12=A_4.*rate_pulsar_3.*h(t)+lamda_b_6;

%% 脉冲星信号轮廓（不带噪声）
Pulsar_Profile_1=A_1.*rate_pulsar_1.*h(t);   Pulsar_Profile_2=A_1.*rate_pulsar_2.*h(t);
Pulsar_Profile_3=A_2.*rate_pulsar_1.*h(t);   Pulsar_Profile_4=A_2.*rate_pulsar_2.*h(t);
Pulsar_Profile_5=A_3.*rate_pulsar_1.*h(t);   Pulsar_Profile_6=A_3.*rate_pulsar_2.*h(t);


figure(1);
subplot(2,3,1);plot(t,Pulsar_Profile_1,'r-',t,Pulsar_Profile_2,'b-');title('图(a) A=100cm^2'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=15ph/s/cm^2','rate_{pulsar}=30ph/s/cm^2');
subplot(2,3,2);plot(t,Pulsar_Profile_3,'r-',t,Pulsar_Profile_4,'b-');title('图(b) A=150cm^2');xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=15ph/s/cm^2','rate_{pulsar}=30ph/s/cm^2');
subplot(2,3,3);plot(t,Pulsar_Profile_5,'r-',t,Pulsar_Profile_6,'b-');title('图(c) A=200cm^2');xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=15ph/s/cm^2','rate_{pulsar}=30ph/s/cm^2');
subplot(2,3,4);plot(t,Pulsar_Profile_1,'r-',t,Pulsar_Profile_3,'b-',t,Pulsar_Profile_5,'g-');title('图(d) rate_{pulsar}=15ph/s/cm^2');xlabel('一个周期的时间/s'),ylabel('光子到达数量');legend('A=100cm^2','A=150cm^2','A=200cm^2');
subplot(2,3,5);plot(t,Pulsar_Profile_2,'r-',t,Pulsar_Profile_4,'b-',t,Pulsar_Profile_6,'g-');title('图(f) rate_{pulsar}=30ph/s/cm^2');xlabel('一个周期的时间/s'),ylabel('光子到达数量');legend('A=100cm^2','A=150cm^2','A=200cm^2');
hold on;

% figure(2);
% subplot(4,4,1);plot(t,Pulsar_Profile_noise_1,'r-',t,Pulsar_Profile_noise_3,'b-');%噪声为rate_noise_1，脉冲星辐射流率为rate_pulsar_2，面积不同，分别为A3，A4。
% subplot(4,4,2);plot(t,Pulsar_Profile_noise_2,'r-',t,Pulsar_Profile_noise_4,'b-');%噪声为rate_noise_1，脉冲星辐射流率为rate_pulsar_3，面积不同，分别为A3，A4。
% subplot(4,4,3);plot(t,Pulsar_Profile_noise_5,'r-',t,Pulsar_Profile_noise_7,'b-');%噪声为rate_noise_2，脉冲星辐射流率为rate_pulsar_2，面积不同，分别为A3，A4。
% subplot(4,4,4);plot(t,Pulsar_Profile_noise_6,'r-',t,Pulsar_Profile_noise_8,'b-');%噪声为rate_noise_2，脉冲星辐射流率为rate_pulsar_3，面积不同，分别为A3，A4。
% subplot(4,4,5);plot(t,Pulsar_Profile_noise_9,'r-',t,Pulsar_Profile_noise_11,'b-');%噪声为rate_noise_3，脉冲星辐射流率为rate_pulsar_2，面积不同，分别为A3，A4。
% subplot(4,4,6);plot(t,Pulsar_Profile_noise_10,'r-',t,Pulsar_Profile_noise_12,'b-');%噪声为rate_noise_3，脉冲星辐射流率为rate_pulsar_3，面积不同，分别为A3，A4。
% subplot(4,4,7);plot(t,Pulsar_Profile_noise_1,'r-',t,Pulsar_Profile_noise_5,'b-',t,Pulsar_Profile_noise_9,'g-');%脉冲星辐射流率为rate_pulsar_2，面积为A3，噪声分别为rate_noise_1，rate_noise_2，rate_noise_3。
% subplot(4,4,8);plot(t,Pulsar_Profile_noise_2,'r-',t,Pulsar_Profile_noise_6,'b-',t,Pulsar_Profile_noise_10,'g-');%脉冲星辐射流率为rate_pulsar_3，面积为A3，噪声分别为rate_noise_1，rate_noise_2，rate_noise_3。
% subplot(4,4,9);plot(t,Pulsar_Profile_noise_3,'r-',t,Pulsar_Profile_noise_7,'b-',t,Pulsar_Profile_noise_11,'g-');%脉冲星辐射流率为rate_pulsar_2，面积为A4，噪声分别为rate_noise_1，rate_noise_2，rate_noise_3。
% subplot(4,4,10);plot(t,Pulsar_Profile_noise_4,'r-',t,Pulsar_Profile_noise_8,'b-',t,Pulsar_Profile_noise_12,'g-');%脉冲星辐射流率为rate_pulsar_3，面积为A3，噪声分别为rate_noise_1，rate_noise_2，rate_noise_3。
% subplot(4,4,11);plot(t,Pulsar_Profile_noise_1,'r-',t,Pulsar_Profile_noise_2,'b-');%面积为A3，噪声为rate_noise_1，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
% subplot(4,4,12);plot(t,Pulsar_Profile_noise_3,'r-',t,Pulsar_Profile_noise_4,'b-');%面积为A4，噪声为rate_noise_1，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
% subplot(4,4,13);plot(t,Pulsar_Profile_noise_5,'r-',t,Pulsar_Profile_noise_6,'b-');%面积为A3，噪声为rate_noise_2，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
% subplot(4,4,14);plot(t,Pulsar_Profile_noise_7,'r-',t,Pulsar_Profile_noise_8,'b-');%面积为A4，噪声为rate_noise_2，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
% subplot(4,4,15);plot(t,Pulsar_Profile_noise_9,'r-',t,Pulsar_Profile_noise_10,'b-');%面积为A3，噪声为rate_noise_3，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
% subplot(4,4,16);plot(t,Pulsar_Profile_noise_11,'r-',t,Pulsar_Profile_noise_12,'b-');%面积为A4，噪声为rate_noise_3，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
% hold on;

figure(3)
subplot(2,2,1);plot(t,Pulsar_Profile_noise_1,'r-',t,Pulsar_Profile_noise_5,'b-',t,Pulsar_Profile_noise_9,'g-'),title('图(a) rate_{pulsar}=30ph/s/cm^2,A=200cm^2'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{noise}=120ph/s/cm^2','rate_{noise}=210ph/s/cm^2','rate_{noise}=300ph/s/cm^2');%脉冲星辐射流率为rate_pulsar_2，面积为A3，噪声分别为rate_noise_1，rate_noise_2，rate_noise_3。
subplot(2,2,2);plot(t,Pulsar_Profile_noise_2,'r-',t,Pulsar_Profile_noise_6,'b-',t,Pulsar_Profile_noise_10,'g-'),title('图(b) rate_{pulsar}=90ph/s/cm^2,A=200cm^2'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{noise}=120ph/s/cm^2','rate_{noise}=210ph/s/cm^2','rate_{noise}=300ph/s/cm^2');%脉冲星辐射流率为rate_pulsar_3，面积为A3，噪声分别为rate_noise_1，rate_noise_2，rate_noise_3。
subplot(2,2,3);plot(t,Pulsar_Profile_noise_3,'r-',t,Pulsar_Profile_noise_7,'b-',t,Pulsar_Profile_noise_11,'g-'),title('图(c) rate_{pulsar}=30ph/s/cm^2,A=400cm^2'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{noise}=120ph/s/cm^2','rate_{noise}=210ph/s/cm^2','rate_{noise}=300ph/s/cm^2');%脉冲星辐射流率为rate_pulsar_2，面积为A4，噪声分别为rate_noise_1，rate_noise_2，rate_noise_3。
subplot(2,2,4);plot(t,Pulsar_Profile_noise_4,'r-',t,Pulsar_Profile_noise_8,'b-',t,Pulsar_Profile_noise_12,'g-'),title('图(d) rate_{pulsar}=90ph/s/cm^2,A=400cm^2'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{noise}=120ph/s/cm^2','rate_{noise}=210ph/s/cm^2','rate_{noise}=300ph/s/cm^2');%脉冲星辐射流率为rate_pulsar_3，面积为A4，噪声分别为rate_noise_1，rate_noise_2，rate_noise_3。


hold on;

figure(4)
subplot(2,3,1);plot(t,Pulsar_Profile_noise_1,'r-',t,Pulsar_Profile_noise_2,'b-'),title('图(a) rate_{noise}=120,A=200'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=30ph/s/cm^2','rate_{pulsar}=90ph/s/cm^2');%面积为A3，噪声为rate_noise_1，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
subplot(2,3,4);plot(t,Pulsar_Profile_noise_3,'r-',t,Pulsar_Profile_noise_4,'b-'),title('图(b) rate_{noise}=120,A=400'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=30ph/s/cm^2','rate_{pulsar}=90ph/s/cm^2');%面积为A4，噪声为rate_noise_1，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
subplot(2,3,2);plot(t,Pulsar_Profile_noise_5,'r-',t,Pulsar_Profile_noise_6,'b-'),title('图(c) rate_{noise}=210,A=200'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=30ph/s/cm^2','rate_{pulsar}=90ph/s/cm^2');%面积为A3，噪声为rate_noise_2，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
subplot(2,3,5);plot(t,Pulsar_Profile_noise_7,'r-',t,Pulsar_Profile_noise_8,'b-'),title('图(d) rate_{noise}=210,A=400'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=30ph/s/cm^2','rate_{pulsar}=90ph/s/cm^2');%面积为A4，噪声为rate_noise_2，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
subplot(2,3,3);plot(t,Pulsar_Profile_noise_9,'r-',t,Pulsar_Profile_noise_10,'b-'),title('图(e) rate_{noise}=300,A=200'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=30ph/s/cm^2','rate_{pulsar}=90ph/s/cm^2');%面积为A3，噪声为rate_noise_3，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
subplot(2,3,6);plot(t,Pulsar_Profile_noise_11,'r-',t,Pulsar_Profile_noise_12,'b-'),title('图(f) rate_{noise}=300,A=400'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('rate_{pulsar}=30ph/s/cm^2','rate_{pulsar}=90ph/s/cm^2');%面积为A4，噪声为rate_noise_3，脉冲星辐射流率分别为rate_pulsar_2，rate_pulsar_3。
hold on;

figure(5)
subplot(2,3,1);plot(t,Pulsar_Profile_noise_1,'r-',t,Pulsar_Profile_noise_3,'b-'),title('图(a) rate_{pulsar}=30,rate_{noise}=120'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('A=200cm^2','A=400cm^2');%噪声为rate_noise_1，脉冲星辐射流率为rate_pulsar_2，面积不同，分别为A3，A4。
subplot(2,3,4);plot(t,Pulsar_Profile_noise_2,'r-',t,Pulsar_Profile_noise_4,'b-'),title('图(b) rate_{pulsar}=90,rate_{noise}=120'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('A=200cm^2','A=400cm^2');%噪声为rate_noise_1，脉冲星辐射流率为rate_pulsar_3，面积不同，分别为A3，A4。
subplot(2,3,2);plot(t,Pulsar_Profile_noise_5,'r-',t,Pulsar_Profile_noise_7,'b-'),title('图(c) rate_{pulsar}=30,rate_{noise}=210'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('A=200cm^2','A=400cm^2');%噪声为rate_noise_2，脉冲星辐射流率为rate_pulsar_2，面积不同，分别为A3，A4。
subplot(2,3,5);plot(t,Pulsar_Profile_noise_6,'r-',t,Pulsar_Profile_noise_8,'b-'),title('图(d) rate_{pulsar}=90,rate_{noise}=210'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('A=200cm^2','A=400cm^2');%噪声为rate_noise_2，脉冲星辐射流率为rate_pulsar_3，面积不同，分别为A3，A4。
subplot(2,3,3);plot(t,Pulsar_Profile_noise_9,'r-',t,Pulsar_Profile_noise_11,'b-'),title('图(e) rate_{pulsar}=30,rate_{noise}=300'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('A=200cm^2','A=400cm^2');%噪声为rate_noise_3，脉冲星辐射流率为rate_pulsar_2，面积不同，分别为A3，A4。
subplot(2,3,6);plot(t,Pulsar_Profile_noise_10,'r-',t,Pulsar_Profile_noise_12,'b-'),title('图(f) rate_{pulsar}=90,rate_{noise}=300'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),legend('A=200cm^2','A=400cm^2');%噪声为rate_noise_3，脉冲星辐射流率为rate_pulsar_3，面积不同，分别为A3，A4。
hold on;


%% 保存数据 脉冲星轮廓（不带噪声）
save ../data_noiseless/Pulsar_Profile_1.txt Pulsar_Profile_1 -ascii;save('../data_noiseless/Pulsar_Profile_1.mat','Pulsar_Profile_1');  
save ../data_noiseless/Pulsar_Profile_2.txt Pulsar_Profile_2 -ascii;save('../data_noiseless/Pulsar_Profile_2.mat','Pulsar_Profile_2');  
save ../data_noiseless/Pulsar_Profile_3.txt Pulsar_Profile_3 -ascii;save('../data_noiseless/Pulsar_Profile_3.mat','Pulsar_Profile_3');  
save ../data_noiseless/Pulsar_Profile_4.txt Pulsar_Profile_4 -ascii;save('../data_noiseless/Pulsar_Profile_4.mat','Pulsar_Profile_4');  
save ../data_noiseless/Pulsar_Profile_5.txt Pulsar_Profile_5 -ascii;save('../data_noiseless/Pulsar_Profile_5.mat','Pulsar_Profile_5');  
save ../data_noiseless/Pulsar_Profile_6.txt Pulsar_Profile_6 -ascii;save('../data_noiseless/Pulsar_Profile_6.mat','Pulsar_Profile_6');  
%% 保存数据 脉冲星轮廓（带噪声）
save ../data_noise/Pulsar_Profile_noise_1.txt Pulsar_Profile_noise_1 -ascii;save('../data_noise/Pulsar_Profile_noise_1.mat','Pulsar_Profile_noise_1');  
save ../data_noise/Pulsar_Profile_noise_2.txt Pulsar_Profile_noise_2 -ascii;save('../data_noise/Pulsar_Profile_noise_2.mat','Pulsar_Profile_noise_2'); 
save ../data_noise/Pulsar_Profile_noise_3.txt Pulsar_Profile_noise_3 -ascii;save('../data_noise/Pulsar_Profile_noise_3.mat','Pulsar_Profile_noise_3'); 
save ../data_noise/Pulsar_Profile_noise_4.txt Pulsar_Profile_noise_4 -ascii;save('../data_noise/Pulsar_Profile_noise_4.mat','Pulsar_Profile_noise_4'); 
save ../data_noise/Pulsar_Profile_noise_5.txt Pulsar_Profile_noise_5 -ascii;save('../data_noise/Pulsar_Profile_noise_5.mat','Pulsar_Profile_noise_5'); 
save ../data_noise/Pulsar_Profile_noise_6.txt Pulsar_Profile_noise_6 -ascii;save('../data_noise/Pulsar_Profile_noise_6.mat','Pulsar_Profile_noise_6'); 
save ../data_noise/Pulsar_Profile_noise_7.txt Pulsar_Profile_noise_7 -ascii;save('../data_noise/Pulsar_Profile_noise_7.mat','Pulsar_Profile_noise_7'); 
save ../data_noise/Pulsar_Profile_noise_8.txt Pulsar_Profile_noise_8 -ascii;save('../data_noise/Pulsar_Profile_noise_8.mat','Pulsar_Profile_noise_8'); 
save ../data_noise/Pulsar_Profile_noise_9.txt Pulsar_Profile_noise_9 -ascii;save('../data_noise/Pulsar_Profile_noise_9.mat','Pulsar_Profile_noise_9'); 
save ../data_noise/Pulsar_Profile_noise_10.txt Pulsar_Profile_noise_10 -ascii;save('../data_noise/Pulsar_Profile_noise_10.mat','Pulsar_Profile_noise_10'); 
save ../data_noise/Pulsar_Profile_noise_11.txt Pulsar_Profile_noise_11 -ascii;save('../data_noise/Pulsar_Profile_noise_11.mat','Pulsar_Profile_noise_11'); 
save ../data_noise/Pulsar_Profile_noise_12.txt Pulsar_Profile_noise_12 -ascii;save('../data_noise/Pulsar_Profile_noise_12.mat','Pulsar_Profile_noise_12'); 

%% 带高斯白噪声的脉冲星信号分析
snr_0=-40;snr_1=-32;snr_2=-26;snr_3=0;snr_4=26;snr_5=32;snr_6=40;snr_7=60;
y_Guassin_0=awgn(Pulsar_Profile_noise_1,snr_0,'measured');
y_Guassin_1=awgn(Pulsar_Profile_noise_1,snr_1,'measured');
y_Guassin_2=awgn(Pulsar_Profile_noise_1,snr_2,'measured');
y_Guassin_3=awgn(Pulsar_Profile_noise_1,snr_3,'measured');
y_Guassin_4=awgn(Pulsar_Profile_noise_1,snr_4,'measured');
y_Guassin_5=awgn(Pulsar_Profile_noise_1,snr_5,'measured');
y_Guassin_6=awgn(Pulsar_Profile_noise_1,snr_6,'measured');
y_Guassin_7=awgn(Pulsar_Profile_noise_1,snr_7,'measured');

% y_Guassin_1=awgn(Pulsar_Profile_noise_1,snr,sigpower,'db');
% y_0=awgn(g_0,snr,'measured');
figure(6)
subplot(3,3,1);plot(t,Pulsar_Profile_noise_1,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(a) 原始信号');
subplot(3,3,2);plot(t,y_Guassin_0,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(f) 高斯白噪声SNR=-40dB');
subplot(3,3,3);plot(t,y_Guassin_1,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(b) 高斯白噪声SNR=-32dB');
subplot(3,3,4);plot(t,y_Guassin_2,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(c) 高斯白噪声SNR=-26dB');
subplot(3,3,5);plot(t,y_Guassin_3,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(d) 高斯白噪声SNR=0dB');
subplot(3,3,6);plot(t,y_Guassin_4,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(e) 高斯白噪声SNR=26dB');
subplot(3,3,7);plot(t,y_Guassin_5,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(g) 高斯白噪声SNR=32dB');
subplot(3,3,8);plot(t,y_Guassin_6,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(g) 高斯白噪声SNR=40dB');
subplot(3,3,9);plot(t,y_Guassin_7,'-b'),xlabel('一个周期的时间/s'),ylabel('光子到达数量'),title('图(h) 高斯白噪声SNR=60dB');
hold on;