%% 该程序的功能：拟合得到的脉冲星信号脉冲轮廓
%% 输入参数：拟合概率密度函数，设置的时间序列 t=0:0.0335/1023:0.0335
%% 输出参数：脉冲星轮廓图
%% 编写人：丰佳伟
%% 编写日期;2020/5/13
clear all;close all;clc;
T=readtable('data.txt');x=T.Var1;y=T.Var2;

t=0:0.0335/1023:0.0335;
Plusar_P_D = h(t);
figure(1);
plot(t,Plusar_P_D,'b-');
xlabel('时间/s');
ylabel('概率密度');
%% legend('原始数据','拟合函数');
title('时间-概率密度曲线');
hold on;
