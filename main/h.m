%%该程序的功能：脉冲星辐射光子到达的概率密度函数h(t)
%%输入参数：时间t（单位：秒）
%%输出参数：概率密度
%%编写人：丰佳伟
%%编写日期;2020/5/13
function h_plusar_probability_density = h(t)
       a1 = 0.4748; b1 = 0.01007; c1 = 0.0004564;
       a2 = 0.2663; b2 = 0.02356; c2 = 0.0007343;
       a3 = 0.1425; b3 = 0.02081; c3 = 0.00524;
       a4 = 0.3861; b4 = 0.009784;c4 = 0.001288;
       a5 = 0.1422; b5 = 0.0105;  c5 = 0.003523;
       a6 = 0.2706; b6 = 0.02288; c6 = 0.001933;
       t=mod(t,0.0335);%对输入x取余数
       h_plusar_probability_density = a1*exp(-((t-b1)/c1).^2) + a2*exp(-((t-b2)/c2).^2) + a3*exp(-((t-b3)/c3).^2) + a4*exp(-((t-b4)/c4).^2) + a5*exp(-((t-b5)/c5).^2) + a6*exp(-((t-b6)/c6).^2);
end
