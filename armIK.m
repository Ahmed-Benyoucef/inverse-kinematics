function [th] = armIK(px,py,pz)
% Arm robot RRR
% arm link
l1=8;
l2=10;
l3=10;

%th1
th1= atan2(py,px); 

%th3
r= sqrt(px^2+py^2);
k= sqrt(r^2+(pz-l1)^2);
th3= acos((k^2-l2^2-l3^2)/(2*l2*l3));

%th2
beta=atan2(pz-l1,r);
alpha= atan2(l3*sin(th3),(l2+l3*cos(th3)));

th2=beta-alpha;
th1=rad2deg(th1);
th2=rad2deg(th2);
th3=rad2deg(th3);

th=[th1 th2 th3]
end

