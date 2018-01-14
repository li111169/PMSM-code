%Choose alpha-beta plane or z1-z2 plane SubPlane_6_ph(k,wt) 
%k for [1 1 5 5]'
%wt for [0 pi/2 0 pi/2]'
function planes = SubPlane_6_ph(~)

    k=[1 1 5 5]';
    wt=[0 pi/2 0 pi/2]';
    theta=pi/6;
    wt_temp=[wt (wt-theta) (wt-4*theta) (wt-5*theta) (wt-8*theta) (wt-9*theta)];
    planes=[cos(k.*wt) cos(k.*(wt-theta)) cos(k.*(wt-4*theta)) cos(k.*(wt-5*theta)) cos(k.*(wt-8*theta)) cos(k.*(wt-9*theta))];
 
end

%version 01
% function result = SubPlane_6_ph(wt,theta,k)
% m=1;
% for i=1:length(k)
% for j=1:length(wt)
%     
%     Sk_vector(:,m)=[cos(k(i)*wt(j)) cos(k(i)*(wt(j)-theta)) cos(k(i)*(wt(j)-4*theta)) cos(k(i)*(wt(j)-5*theta)) cos(k(i)*(wt(j)-8*theta)) cos(k(i)*(wt(j)-9*theta))]';
%     m=m+1;
% end
% end
% result=Sk_vector;
% 
% end