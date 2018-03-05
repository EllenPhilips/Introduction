clearvars
clc
close all

N= [100, 25];
N2=[100, 25, 80];

Const.c= 0.01;
Const.e=0.005;
Const.d=0.24;
Const.r=0.48;
Const.a=0.1;
Const.c2= 0.01;
Const.e2=0.005;
Const.r2=0.48;
T=[0 100];

options = odeset('NormControl','on');
%% wolves
[t1,y1]=ode45(@(t,y)PopFunction(t,y,Const),T,N,options);
%% human hunting
[t2,y2]=ode45(@(t,y)PopFunction2(t,y,Const),T,N,options);
%% deer
[t3,y3]=ode45(@(t,y)PopFunction3(t,y,Const),T,N2,options);
%%
subplot(2,2,1)
plot(t1,y1(:,1))
hold on
plot(t1,y1(:,2))
ylabel('Number of individuals')
xlabel('Time')
legend('Boars', 'Wolves','Location', 'southoutside','Orientation','horizontal')
title('Boars+wolves')

subplot(2,2,2)
xlim=150;
plot(t2,y2(:,1))
hold on
plot(t2,y2(:,2))
ylabel('Number of individuals')
xlabel('Time')
legend('Boars', 'Wolves', 'Location', 'southoutside','Orientation','horizontal')
title('Boars+wolves+human')

subplot(2,2,3)
plot(t3,y3(:,1))
hold on
plot(t3,y3(:,2))
hold on
plot(t3,y3(:,3))
ylabel('Number of individuals')
xlabel('Time')
legend('Boars', 'Wolves', 'Deer','Location', 'southoutside','Orientation','horizontal')
title('Boars+wolves+deer')
%%
%figure (2)
subplot(2,2,4)
plot3 (y3(:,1),y3(:,2),y3(:,3))
xlabel('B')
ylabel('W')
zlabel('D')