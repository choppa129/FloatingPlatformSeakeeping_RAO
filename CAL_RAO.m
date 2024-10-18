% 读取变量数据
A = eval('AddMass');
B = eval('Damping');
F = eval('WaveEx');
D = eval('WaveDir');
C11 = 159353;
C33 = 17730228.6;
C55 = 4468000000;
M11 = 98540000;
M33 = 98540000;
M55 = 157664000000;
w = eval('WaveFreq');

% 解耦
for l=1:43
    S(l) =319.34*(5.7^2)/(17.4^4)/(w(l)^5)*exp(-1948/(17.4*w(l))^4)*(3^(exp(-((0.159*w(l)*17.4-1)^2)/(2*0.07*0.07))));
    RAO11(l) = abs(F(1,l,1,1)*exp(1i*F(1,l,1,2))/(-w(l)*w(l)*(M11+A(l,1,1))-1i*w(l)*B(l,1,1)+C11));
    RAO13(l) = abs(F(1,l,2,1)*exp(1i*F(1,l,2,2))/(-w(l)*w(l)*(M33+A(l,2,2))-1i*w(l)*B(l,2,2)+C33));
    RAO15(l) = abs(F(1,l,3,1)*exp(1i*F(1,l,3,2))/(-w(l)*w(l)*(M55+A(l,3,3))-1i*w(l)*B(l,2,2)+C55));

    RAO21(l) = abs(F(2,l,1,1)*exp(1i*F(2,l,1,2))/(-w(l)*w(l)*(M11+A(l,1,1))-1i*w(l)*B(l,1,1)+C11));
    RAO23(l) = abs(F(2,l,2,1)*exp(1i*F(2,l,2,2))/(-w(l)*w(l)*(M33+A(l,2,2))-1i*w(l)*B(l,2,2)+C33));
    RAO25(l) = abs(F(2,l,3,1)*exp(1i*F(2,l,3,2))/(-w(l)*w(l)*(M55+A(l,3,3))-1i*w(l)*B(l,3,3)+C55));

    RAO31(l) = abs(F(3,l,1,1)*exp(1i*F(3,l,1,2))/(-w(l)*w(l)*(M11+A(l,1,1))-1i*w(l)*B(l,1,1)+C11));
    RAO33(l) = abs(F(3,l,2,1)*exp(1i*F(3,l,2,2))/(-w(l)*w(l)*(M33+A(l,2,2))-1i*w(l)*B(l,2,2)+C33));
    RAO35(l) = abs(F(3,l,3,1)*exp(1i*F(3,l,3,2))/(-w(l)*w(l)*(M55+A(l,3,3))-1i*w(l)*B(l,3,3)+C55));

    RAO41(l) = abs(F(4,l,1,1)*exp(1i*F(4,l,1,2))/(-w(l)*w(l)*(M11+A(l,1,1))-1i*w(l)*B(l,1,1)+C11));
    RAO43(l) = abs(F(4,l,2,1)*exp(1i*F(4,l,2,2))/(-w(l)*w(l)*(M33+A(l,2,2))-1i*w(l)*B(l,2,2)+C33));
    RAO45(l) = abs(F(4,l,3,1)*exp(1i*F(4,l,3,2))/(-w(l)*w(l)*(M55+A(l,3,3))-1i*w(l)*B(l,3,3)+C55));
end

for l=44:230
    S(l) =319.34*(5.7^2)/(17.4^4)/(w(l)^5)*exp(-1948/(17.4*w(l))^4)*(3^(exp(-((0.159*w(l)*17.4-1)^2)/(2*0.09*0.09))));
    RAO11(l) = abs(F(1,l,1,1)*exp(1i*F(1,l,1,2))/(-w(l)*w(l)*(M11+A(l,1,1))-1i*w(l)*B(l,1,1)+C11));
    RAO13(l) = abs(F(1,l,2,1)*exp(1i*F(1,l,2,2))/(-w(l)*w(l)*(M33+A(l,2,2))-1i*w(l)*B(l,2,2)+C33));
    RAO15(l) = abs(F(1,l,3,1)*exp(1i*F(1,l,3,2))/(-w(l)*w(l)*(M55+A(l,3,3))-1i*w(l)*B(l,2,2)+C55));

    RAO21(l) = abs(F(2,l,1,1)*exp(1i*F(2,l,1,2))/(-w(l)*w(l)*(M11+A(l,1,1))-1i*w(l)*B(l,1,1)+C11));
    RAO23(l) = abs(F(2,l,2,1)*exp(1i*F(2,l,2,2))/(-w(l)*w(l)*(M33+A(l,2,2))-1i*w(l)*B(l,2,2)+C33));
    RAO25(l) = abs(F(2,l,3,1)*exp(1i*F(2,l,3,2))/(-w(l)*w(l)*(M55+A(l,3,3))-1i*w(l)*B(l,3,3)+C55));

    RAO31(l) = abs(F(3,l,1,1)*exp(1i*F(3,l,1,2))/(-w(l)*w(l)*(M11+A(l,1,1))-1i*w(l)*B(l,1,1)+C11));
    RAO33(l) = abs(F(3,l,2,1)*exp(1i*F(3,l,2,2))/(-w(l)*w(l)*(M33+A(l,2,2))-1i*w(l)*B(l,2,2)+C33));
    RAO35(l) = abs(F(3,l,3,1)*exp(1i*F(3,l,3,2))/(-w(l)*w(l)*(M55+A(l,3,3))-1i*w(l)*B(l,3,3)+C55));

    RAO41(l) = abs(F(4,l,1,1)*exp(1i*F(4,l,1,2))/(-w(l)*w(l)*(M11+A(l,1,1))-1i*w(l)*B(l,1,1)+C11));
    RAO43(l) = abs(F(4,l,2,1)*exp(1i*F(4,l,2,2))/(-w(l)*w(l)*(M33+A(l,2,2))-1i*w(l)*B(l,2,2)+C33));
    RAO45(l) = abs(F(4,l,3,1)*exp(1i*F(4,l,3,2))/(-w(l)*w(l)*(M55+A(l,3,3))-1i*w(l)*B(l,3,3)+C55));
end
ST = transpose(S);
RAO13T = transpose(RAO13);
[m11,p11] = max(RAO11)
[m13,p13] = max(RAO13)
[m15,p15] = max(RAO15)
[m21,p21] = max(RAO21)
[m23,p23] = max(RAO23)
[m25,p25] = max(RAO25)
[m31,p31] = max(RAO31)
[m33,p33] = max(RAO33)
[m35,p35] = max(RAO35)
[m41,p41] = max(RAO41)
[m43,p43] = max(RAO43)
[m45,p45] = max(RAO45)
% disp(w(p11))
% disp(w(p13))
% disp(w(p15))
% disp(w(p21))
% disp(w(p23))
% disp(w(p25))
% disp(w(p31))
% disp(w(p33))
% disp(w(p35))
% disp(w(p41))
% disp(w(p43))
% disp(w(p45))
A(13,3,3)

% % 显示数据 解耦
% f=figure;%父级fig
% set(f,'Position',[100 100 850 250]);
% 
% plot(w,RAO11);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{11}(m/m)')
% saveas(gcf,'解耦RAO11.emf')
% 
% 
% plot(w,RAO13);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{13}(m/m)')
% saveas(gcf,'解耦RAO13.emf')
% 
% plot(w,RAO15);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{15}(m/m)')
% saveas(gcf,'解耦RAO15.emf')
% 
% plot(w,RAO21);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{21}(m/m)')
% saveas(gcf,'解耦RAO21.emf')
% 
% plot(w,RAO23);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{23}(m/m)')
% saveas(gcf,'解耦RAO23.emf')
% 
% plot(w,RAO25);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{25}(m/m)')
% saveas(gcf,'解耦RAO25.emf')
% 
% plot(w,RAO31);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{31}(m/m)')
% saveas(gcf,'解耦RAO31.emf')
% 
% plot(w,RAO33);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{33}(m/m)')
% saveas(gcf,'解耦RAO33.emf')
% 
% plot(w,RAO35);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{35}(m/m)')
% saveas(gcf,'解耦RAO35.emf')
% 
% plot(w,RAO41);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{41}(m/m)')
% saveas(gcf,'解耦RAO41.emf')
% 
% plot(w,RAO43);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{43}(m/m)')
% saveas(gcf,'解耦RAO43.emf')
% 
% plot(w,RAO45);
% xlabel('\omega(rad/s)')
% ylabel('解耦RAO_{45}(m/m)')
% saveas(gcf,'解耦RAO45.emf')

%耦合
M = [M11,0,-586313000;
     0,M33,0;
     -586313000,0,M55];
C = [C11,0,0;
     0,C33,0;
     0,0,C55];

for j=1:230
    Am = [A(j,1,1),A(j,2,1),A(j,3,1);
        A(j,1,2),A(j,2,2),A(j,3,2);
        A(j,1,3),A(j,2,3),A(j,3,3)];

    Bm = [B(j,1,1),B(j,2,1),B(j,3,1);
        B(j,1,2),B(j,2,2),B(j,3,2);
        B(j,1,3),B(j,2,3),B(j,3,3)];

    F1m = [F(1,j,1,1)*exp(1i*F(1,j,1,2));F(1,j,2,1)*exp(1i*F(1,j,2,2));F(1,j,3,1)*exp(1i*F(1,j,3,2))];
    F2m = [F(2,j,1,1)*exp(1i*F(2,j,1,2));F(2,j,2,1)*exp(1i*F(2,j,2,2));F(2,j,3,1)*exp(1i*F(2,j,3,2))];
    F3m = [F(3,j,1,1)*exp(1i*F(3,j,1,2));F(3,j,2,1)*exp(1i*F(3,j,2,2));F(3,j,3,1)*exp(1i*F(3,j,3,2))];
    F4m = [F(4,j,1,1)*exp(1i*F(4,j,1,2));F(4,j,2,1)*exp(1i*F(4,j,2,2));F(4,j,3,1)*exp(1i*F(4,j,3,2))];
    
    a1 = (-w(j)*w(j)*(M+Am)-1i*w(j)*Bm+C)\F1m;
    a2 = (-w(j)*w(j)*(M+Am)-1i*w(j)*Bm+C)\F2m;
    a3 = (-w(j)*w(j)*(M+Am)-1i*w(j)*Bm+C)\F3m;
    a4 = (-w(j)*w(j)*(M+Am)-1i*w(j)*Bm+C)\F4m;

    a11(j) = abs(a1(1));
    a13(j) = abs(a1(2));
    a15(j) = abs(a1(3));

    a21(j) = abs(a2(1));
    a23(j) = abs(a2(2));
    a25(j) = abs(a2(3));

    a31(j) = abs(a3(1));
    a33(j) = abs(a3(2));
    a35(j) = abs(a3(3));

    a41(j) = abs(a4(1));
    a43(j) = abs(a4(2));
    a45(j) = abs(a4(3));

    eig((M+Am)\C);
end
    
% [amax11,pp11] = max(a11)
% [amax13,pp13] = max(a13)
% [amax15,pp15] = max(a15)
% [amax21,pp21] = max(a21)
% [amax23,pp23] = max(a23)
% [amax25,pp25] = max(a25)
% [amax31,pp31] = max(a31)
% [amax33,pp33] = max(a33)
% [amax35,pp35] = max(a35)
% [amax41,pp41] = max(a41)
% [amax43,pp43] = max(a43)
% [amax45,pp45] = max(a45)
% 
% disp(w(pp11))
% disp(w(pp13))
% disp(w(pp15))
% disp(w(pp21))
% disp(w(pp23))
% disp(w(pp25))
% disp(w(pp31))
% disp(w(pp33))
% disp(w(pp35))
% disp(w(pp41))
% disp(w(pp43))
% disp(w(pp45))

% % 显示数据 耦合
% f=figure;%父级fig
% set(f,'Position',[100 100 850 250]);
% 
% plot(w,a11);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{11}(m/m)')
% saveas(gcf,'RAO11.emf')
% 
% plot(w,a13);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{13}(m)')
% saveas(gcf,'RAO13.emf')
% 
% plot(w,a15);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{15}(m)')
% saveas(gcf,'RAO15.emf')
% 
% 
% plot(w,a21);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{21}(m)')
% saveas(gcf,'RAO21.emf')
% 
% plot(w,a23);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{23}(m)')
% saveas(gcf,'RAO23.emf')
% 
% plot(w,a25);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{25}(m)')
% saveas(gcf,'RAO25.emf')
% 
% plot(w,a31);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{31}(m)')
% saveas(gcf,'RAO31.emf')
% 
% plot(w,a33);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{33}(m)')
% saveas(gcf,'RAO33.emf')
% 
% plot(w,a35);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{35}(m)')
% saveas(gcf,'RAO35.emf')
% 
% plot(w,a41);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{41}(m)')
% saveas(gcf,'RAO41.emf')
% 
% plot(w,a43);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{43}(m)')
% saveas(gcf,'RAO43.emf')
% 
% plot(w,a45);
% xlabel('\omega(rad/s)')
% ylabel('耦合RAO_{45}(m)')
% saveas(gcf,'RAO45.emf')
% 
% 
% 
% % 显示数据 对比
% f=figure;%父级fig
% set(f,'Position',[100 100 850 250]);
% 
% plot(w,a11,w,RAO11);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{11}(m/m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO11.emf')
% 
% plot(w,a13,w,RAO13);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{13}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO13.emf')
% 
% plot(w,a15,w,RAO15);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{15}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO15.emf')
% 
% 
% plot(w,a21,w,RAO21);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{21}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO21.emf')
% 
% plot(w,a23,w,RAO23);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{23}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO23.emf')
% 
% plot(w,a25,w,RAO25);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{25}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO25.emf')
% 
% plot(w,a31,w,RAO31);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{31}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO31.emf')
% 
% plot(w,a33,w,RAO33);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{33}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO33.emf')
% 
% plot(w,a35,w,RAO35);
% xlabel('\omega(rad/s)')
% ylabel('对比RAO_{35}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO35.emf')
% 
% plot(w,a41,w,RAO41);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{41}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO41.emf')
% 
% plot(w,a43,w,RAO43);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{43}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO43.emf')
% 
% plot(w,a45,w,RAO45);
% xlabel('\omega(rad/s)')
% ylabel('RAO_{45}(m)')
% legend('耦合','解耦')
% saveas(gcf,'对比RAO45.emf')