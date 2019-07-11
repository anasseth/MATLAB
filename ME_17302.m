clear,clc
clear all,clc

fprintf('Muhammad Anas \n')
fprintf('ME-17302 \n')
fprintf('MATLAB Assignment 3\n ')
%
fprintf( '\n question no 1\n')
r=4;c=6;
for k=1:r;h=1:c;
    y(k,h)=(2*k)-(3*h);
end
y
disp(' ')
disp(' ')

%
fprintf( '\n question no 2 \n')
V=randi([-10 20],1,19)
n=length(V);
for k=1:n
    if V(k)>0
        V(k)=2*V(k);
    elseif V(k)<=0
        V(k)=3*V(k);
    end
end
V
disp(' ')
disp(' ')

%
fprintf( '\n question no 3 \n')
NYC=[33 33 18 29 40 55 19 22 32 37 58 54 51 52 45 41 45 39 36 45 33 18 19 19 28 34 44 21 23 30 39]
DEN=[39 48 61 39 14 37 43 38 46 39 55 46 46 39 54 45 52 52 62 45 62 40 25 57 60 57 20 32 50 48 28]
NYCA=round(mean(NYC));DENA=round(mean(DEN));
fprintf('The avg. temp. in NYC and DEN are %4.2f and %2.1f. \n',NYCA,DENA)
NNYCA=sum(NYC>NYCA);NDENA=sum(DEN>DENA);
fprintf('No.of days with above avg. temp. are %2.1f in NYC and %2.1f in DEN. \n',NNYCA,NDENA)
HT=sum(DEN>NYC);
fprintf('The no. of days DEN having greater temperature than NYC are %2.1f. \n',HT)
disp(' ')
disp(' ')

%
fprintf( '\n question no 4 \n')
F=[0 1 1];
for k=3:25
    F(k)=F(k-1)+F(k-2);
end
F
disp(' ')
disp(' ')

%
fprintf( '\n question no 5 \n')
x=[9 -1.5 13.4 13.3 -2.1 4.6 1.1 5 -6.1 10 0.2];
n=length(x);
for k=1:n-1;
    y=x(k);
    for h=k+1:n
        if x(h)<y;
            y=x(h);
            x(h)=x(k);
            x(k)=y;
        end
    end
end
x
disp(' ')
disp(' ')

% 

fprintf ('\n Question 6 \n')
scores=[72 81 44 68 90 53 80 75 74 65 50 92 85 69 41 73 70 86 61 65 79 94 69]
avg=round(mean(scores))
stdevi=round(std(scores))

for i=1:length(scores)
    if scores(i) >= (avg+1.3*stdevi)
        fprintf('your percentage is %5.2f & grade is A \n',scores(i))
    elseif (scores(i) < (avg+1.3*stdevi)) & (scores(i) >= avg+0.5*stdevi)
        fprintf('your percentage is %5.2f & grade is B \n',scores(i))
    elseif (scores(i) <= avg+0.5*stdevi) & (scores(i) >= avg-0.5*stdevi)
        fprintf('your percentage is %5.2f & grade is C \n',scores(i))
    elseif (scores(i) >= (avg-1.3*stdevi)) & (scores(i) < avg-0.5*stdevi)
        fprintf('your percentage is %5.2f & grade is D \n',scores(i))
    else
        fprintf('your percentage is %5.2f & grade is F \n',scores(i))
    end
end

%
fprintf( '\n question no7 \n')
x=100:999;
n=length(x);
disp('  numbers')
for k=1:n
    h=num2str(x(k));A=str2num(h(1));B=str2num(h(2));C=str2num(h(3));
    if A*B*C==6*(A+B+C)
        disp(x(k))
    end
end
disp(' ')
disp(' ')

%
fprintf( '\n question no 8 \n')
W=input('enter weight in lbs:');
H=input('enter height in inches:');
BMI=703*W/H^2;
if BMI<=18.5
    fprintf('your BMI is %4.2f and you are underweight \n',BMI)
elseif BMI<=24.9
    fprintf('your BMI is %4.2f and you are normalweight \n',BMI)
elseif BMI<=29.9
    fprintf('your BMI is %4.2f and you are overweight \n',BMI)
elseif 29.9<BMI
    fprintf('your BMI is %4.2f and you are obese weight \n',BMI)
end
disp(' ')
disp(' ')

%
fprintf( '\n question no 9 \n')
car=input('car type:','s');
d=input('enter days:');
m=input('enter miles:');
switch car
    case 'sedan'
       if d<=6
           if m<=80*d
               f=79*d;
               fprintf('your rent is %4.2f $ \n',f)
           elseif (m-80*d)>0
               f=79*d + (m-80*d)*0.69;
               fprintf('your rent is %4.2f $ \n',f)
           end
       end
       if d<=29
           if m<=100*d
               f=69*d;
               fprintf('your rent is %4.2f $ \n',f)
           elseif (m-100*d)>0
               f=69*d + (m-100*d)*0.59;
               fprintf('your rent is %4.2f $ \n',f)
           end
       end
       if 30<=d
           if m<=120*d
               f=59*d;
               fprintf('your rent is %4.2f $ \n',f)
           elseif (m-120*d)>0
               f=59*d + (m-120*d)*0.49;
               fprintf('your rent is %4.2f $ \n',f)
           end
       end
    case 'SUV'
       if d<=6
           if m<=80*d
               f=84*d;
               fprintf('your rent is %4.2f $ \n',f)
           elseif (m-80*d)>0
               f=84*d + (m-80*d)*0.74;
               fprintf('your rent is %4.2f $ \n',f)
           end
       end
       if d<=29
           if m<=100*d
               f=74*d;
               fprintf('your rent is %4.2f $ \n',f)
           elseif (m-100*d)>0
               f=74*d + (m-100*d)*0.64;
               fprintf('your rent is %4.2f $ \n',f)
           end
       end
       if 30<=d
           if m<=120*d
               f=64*d;
               fprintf('your rent is %5.2f $ \n',f)
           elseif (m-120*d)>0
               f=64*d + (m-120*d)*0.54;
               fprintf('your rent is %5.2f $ \n',f)
           end
       end
end
disp(' ')
disp(' ')




%
fprintf( '\n question no 10 \n')
A=input('enter area:');
IU=menu('enter input unit:','cm^2','m^2','yd^2','in^2','ft^2','cm^2');
OU=menu('enter output unit:','cm^2','m^2','yd^2','in^2','ft^2','cm^2');
switch OU
    case 1
        AO=A*6.4516;
        fprintf('converted area is %5.2f cm^2 \n',AO)
    case 2
        AO=A*0.0929;
        fprintf('converted area is %5.2f m^2 \n',AO)
    case 3
        AO=A*1.2*(10^-4);
        fprintf('converted area is %5.2f yd^2 \n',AO)
    case 4
        AO=A/6.4516;
        fprintf('converted area is %5.2f in^2 \n',AO)
    case 5
        AO=A/0.0929;
        fprintf('converted area is %5.2f ft^2 \n',AO)
    case 6
        AO=A/1.2*(10^-4);
        fprintf('converted area is %5.2f cm^2 \n',AO)
end



