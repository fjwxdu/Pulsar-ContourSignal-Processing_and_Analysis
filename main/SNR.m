%%该程序的功能：计算脉冲星信号轮廓的信号比SNR
%%输入参数：信号功率大小，噪声功率大小
%%输出参数：信噪比
%%编写人：丰佳伟
%%编写日期;2022/5/20
function f_SNR = SNR(P_S,P_N)
    s1=0;s2=0;
    P_S.^2
    s=s1+s2;
    f_SNR=10*log10(s);
end
