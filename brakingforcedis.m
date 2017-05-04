clear


plotIdealCurve()
hold on 
plotECECurve()
plotBetaLine()
plotDecLine()
plotMBetaLine()

axis([0 1 0 1])
plot([0,0.1228,0.1228,0.5730],[0,0,0.0772,0.2270],'-s');

xlabel('Front braking force ratio F_b(front)/Mg')
ylabel('Rear braking force ratio F_b(rear)/Mg')
legend('Ideal braking force distribution curve','ECE regulation','quasi-ECE regulation','Deceleration line','Mechanical braking distribution line','Braking distribution strategy line')
% /**************************************************************************************************************************************************/
function [Fbf]=plotSpecificPoint(eqn1,eqn2)
syms x;
result=solve(eqn1-eqn2==0,x);
Fbf=double(result);
end
function [Fbf,Fbr]=plotMBetaLine()
syms x;
result=solve(0.5*((1/0.46)*(1.566.^2+(4*0.46*2.7*x)).^0.5-(1.566/0.46+2*x))+x-0.8==0,x);
Fbf_i=double(result);
Fbr_i=-Fbf_i+0.8;
Fbf=0:0.01:1;
Fbr=(Fbr_i/Fbf_i)*Fbf;
plot(Fbf,Fbr);
end

function [Fbf,Fbr]=plotBetaLine()
x=0:0.01:1;
y=0.12*x;
Fbf=x;
Fbr=y;
plot(Fbf,Fbr);
end
function [Fbf,Fbr]=plotIdealCurve()
x=0:0.01:1;
y=0.5*((1/0.46)*(1.566.^2+(4*0.46*2.7*x)).^0.5-(1.566/0.46+2*x));
Fbf=0:0.01:1;
Fbr=y;
plot(Fbf,Fbr);
end
function [Fbf,Fbr]=plotECECurve()
syms y;
i=1;
for x=0:0.01:1
result(i,:)=solve(2.295*x-(x+y+0.07)*(0.46*(x+y)+1.566)==0,y);
i=i+1;
end
result=double(result);
Fbf=0:0.01:1;
Fbr=result(:,2);
plot(Fbf,Fbr);
end

function plotDecLine()
for i=0:0.1:0.9
singleLine(i);
end
hold on
end
function singleLine(value)
x=0:0.01:value;
y=-x+value;
plot(x,y,'k');
end

