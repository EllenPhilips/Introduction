function N=PopFunction3(t,y,Const)
N = zeros(3,1);
N(1)=y(1)*Const.r-Const.c*y(2)*y(1);
N(2)=y(2)*(-Const.d)+Const.e*y(2)*y(1)+Const.e2*y(2)*y(3);
N(3)=y(3)*Const.r2-Const.c2*y(2)*y(3);