% This function calculates the Horizontal Horopter curve
clc;
clear all;

% Declaration of parameters which are subject dependent and determined
% experimentally in A.Zajaczkowska.

%ro=89.70;%107.9;
% For A.J. set sg = 12.32 x0 = 50 for concave,80.79 for straight
%and 180 for convex. pd=6.48,f2=3.3.
%For T.K set sg = 12.32 x0=70 for concave,x0=101.51 for straight line
%and 140 for convex,pd=6.70,f2=3.35.
%For S.V.S. set sg = 3.32 x0=15 for concave,x0=28.46  for straight line
%and 50 for convex,pd=6.60,f2=3.30.

% This part simulate the concave horopter
sg=3.32;%modification 3.32,12.32
xo= 15; % modification 15    %50;%75;   %75; %65  %300.0;%107.9
pd=6.60;%6.60
f2=3.30; % f=pd;f2=f/2;
%%p1=-10:0.2:10;
p1=-10:5:10;
%phi=(pi/180)*(-10);
phi=(pi/180).*(p1);
gmo=pd/xo;
gm=(1/sg).*acosh(cos(phi).*cosh(sg.*gmo));
%gm=0.0594;
%phi= acos(cos(sg*gmo)/cos(sg*gmo));
%phi=-(pi/180)*(5);
x= f2.*((cos(2.*phi)+cos(gm))./sin(gm));
y=f2.*sin(2.*phi)./sin(gm);

% % plot(y,x,'k');
% % axis([-30 30 60 80]);
% % xlabel('Horizontal distance in pixel');
% % ylabel('Vertical distance in pixel');
% % figure();

% % This part simulate straight horopter
xo=28.46;% modification 28.46      %100; %65  %300.0;%107.9
pd=6.60;%modification 6.60
f2=3.30;
%f=pd;
%f2=f/2;
%p1=-10:0.1:10;
p1=-10:5:10;

%phi=(pi/180)*(-10);
phi=(pi/180).*(p1);
gmo=pd/xo;
gm=(1/sg).*acosh(cos(phi).*cosh(sg.*gmo));
%gm=0.0594;
%phi= acos(cos(sg*gmo)/cos(sg*gmo));
%phi=-(pi/180)*(5);
x1= f2.*((cos(2.*phi)+cos(gm))./sin(gm));
y1=f2.*sin(2.*phi)./sin(gm);

% % plot(y1,x1,'k');%,x2,y2,'k.-');
% % %plot(y,x,'k--');
% % xlabel('Horizontal distance in pixel');
% % ylabel('Vertical distance in pixel');
% % axis([-30 30 60 200]);
% % figure();

% This part simulates convex horopter

xo=50;%180;%300; %65  %300.0;%107.9
pd=6.60;%modification 6.60
f2=3.30; % f=pd;f2=f/2;
%p1=-10:0.1:10;
p1=-10:5:10;
%phi=(pi/180)*(-10);
phi=(pi/180).*(p1);
gmo=pd/xo;
gm=(1/sg).*acosh(cos(phi).*cosh(sg.*gmo));
%gm=0.0594;
%phi= acos(cos(sg*gmo)/cos(sg*gmo));
%phi=-(pi/180)*(5);
x2= f2.*((cos(2.*phi)+cos(gm))./sin(gm));
y2=f2.*sin(2.*phi)./sin(gm);

plot(y2,x2,'k');%,x2,y2,'k.-');
%plot(y,x,'k--');
% % axis([-30 30 60 500]);
% % xlabel('Horizontal distance in pixel');
% % ylabel('Vertical distance in pixel');
% % figure();
hold all
scatter(y,x,'ko');
scatter(y1,x1,'ko');
scatter(y2,x2,'ko');
line(y,x,'color','black');
line(y1,x1,'color','black');
line(y2,x2,'color','black');

axis([-30  30 10 100]);
%axis([-30  30 20 200]);


%p1 = [2 3];                         % First Point
%p2 = [9 8];                         % Second Point
%dp = p2-p1;                         % Difference
p1 = [0 0]; 
p2= [0,200];
dp=p2-p1;
figure(1)
h1=quiver(p1(1),p1(2),dp(1),dp(2),1,'color','black');
set(h1,'AutoScale','on', 'AutoScaleFactor', 2)

% grid
% axis([0  10    0  10])
% text(p1(1),p1(2), sprintf('(%.0f,%.0f)',p1))
% text(p2(1),p2(2), sprintf('(%.0f,%.0f)',p2))
% 


