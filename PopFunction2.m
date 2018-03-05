function N=PopFunction2(t,y,Const)
N = zeros(2,1);
N(1)=y(1)*Const.r-Const.c*y(2)*y(1)-Const.a*y(1);
N(2)=y(2)*(-Const.d)+Const.e*y(2)*y(1);