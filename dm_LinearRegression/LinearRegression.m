%------------线性回归------------
clc;
clear;
x2 = [0.1:0.01:0.18,0.2,0.21,0.23]'
y = [42.0 41.5 45.0 45.5 45.0 47.5 49.0 55.0 50.0 55.0 55.5 60.5]'
x = [ones(12,1),x2]
figure
plot(x2,y,'+')
[b,bint,r,rint,stats] = regress(y,x)
% [b，bint，r，rint，statsl = regess(y，x，alpha)：alpha为显著性水平(缺省时设定为0.05)，
% 输出向量b为回归系数估计值，bint为它们的置信区间，r为残差，rint为其置信区间，
% stats是用于检验回归模型的统计量，有四个数值，第一个是R2，其中R是相关系数，第二个是F统计量值，第三个是与统计量F对应的概率P，第四个是 an estimate of the error variance（一个错误的方差估计）
% stats参数解释如下： R2表示方差解释率，R2越接近1说明数据拟合程度越好。F统计量用于检验模型是否通过检验。通过查F分布表，如果F>F分布表中对应的值，则通过检验。P为F 统计量对应的概率，越接近0越好，当P<α时拒绝H0，回归模型成立！！！
rcoplot(r,rint)
%rcoplot(r,rint)函数使用来画 regress()拟合后的数据残差图的，能用其辨别出个别的离群点。
%其中 r和 rint是regress()的两个返回值。r代表残差，rint代表各个数据点相应的95%置信区间。
%用rcoplot()作图后如果存在红颜色的竖条，表明该点为离群点。
hold on
figure(2)
z = b(1)+b(2)*x2
plot(x2,y,'+',x2,z,'r')
legend('预测图','回归线图')
