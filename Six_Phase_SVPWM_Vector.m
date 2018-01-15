clc;
clear;

planes=SubPlane_6_ph();
switch_vectors = GenSwitchTable(6);
coord_value=planes*switch_vectors';%the sequence is [alpha beta z1 z2]
vector_mag=abs(sqrt(coord_value([1,3],:).^2+coord_value([2,4],:).^2));
aubvcw=switch_vectors;
abcuvw=[switch_vectors(:,[1 3 5]) switch_vectors(:,[2 4 6])];
vector_info=[coord_value' switch_vectors vector_mag'];

axis equal
alpha_beta=plot(coord_value(1,:)',coord_value(2,:)','*');
xlim([-2.5 2.5]);
ylim([-2.5 2.5]);
text(coord_value(1,:)'+0.1,coord_value(2,:)',dec2base(bin2dec(num2str(abcuvw)),8));
% subplot(1,2,2)
% plot(coord_value(3,:)',coord_value(4,:)','*');


