%%该程序的功能：绘制脉冲星信号轮廓的信噪比SNR与信号辐射流率，噪声信号流率的关系
%%输入参数：SNR函数
%%输出参数：绘制脉冲星信号轮廓的信噪比SNR与信号辐射流率，噪声信号流率的关系图
%%编写人：丰佳伟
%%编写日期;2022/5/20
clc;clear all;close all;
A=200;
t1=0:0.0335/99:0.0335;
rate_pulsar=linspace(15,150,100);
rate_noise=linspace(30,300,100);
lamda_a=A.*rate_pulsar;
lamda_b=A.*rate_noise;
for i=1:1:100
   for j=1:1:100
       X_S=sum(lamda_a(i).*h(t1));
       X_N=sum(lamda_a(i).*h(t1)+lamda_b(j));
       SNR_value(i,j)=20*log10(X_S/(X_N-X_S));
   end
end

%%绘图
figure(1)
mesh(rate_noise,rate_pulsar,SNR_value);xlabel('rate_{noise}/ph/s/cm^2'),ylabel('rate_{pulsar}/ph/s/cm^2'),zlabel('SNR/dB'),title('带噪声脉冲星信号轮廓的信噪比SNR');
hold on;