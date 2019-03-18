clear all
clc

Training_Class1 = [0.1064 0.5682; 0.1277 0.3409; 0.234 0.1515; 0.4574 0.1364; 0.6915 0.16; 0.8617 0.2576; 0.9043 0.3939; 0.9043 0.5606; 0.8936 0.7045; 0.883 0.8485; 0.8404 0.8258; 0.7979 0.6667; 0.6702 0.553; 0.5319 0.6591; 0.4681 0.75; 0.4255 0.5985; 0.2979 0.553; 0.1809 0.6288];

Training_Class2 = [0.1383 0.9318; 0.0213  0.7197; 0.0532  0.4697;  0.0745  0.2197; 0.2872  0.053; 0.617  0.0682; 0.9468  0.1667; 0.9894  0.3712; 0.9681  0.5682; 0.9574  0.7576; 0.9468  0.9773; 0.7766  0.8939; 0.734  0.6894;  0.617  0.7652; 0.5319  0.947 ; 0.4043  0.8409; 0.2447  0.6667; 0.234  0.8182]; 

Test_Class1 =[0.1064  0.6818; 0.117  0.447; 0.1702  0.2424; 0.3404  0.1364; 0.5851  0.1515; 0.7766  0.2121;  0.883  0.3258; 0.9043  0.4848; 0.8936  0.6364; 0.883  0.7727; 0.8617  0.9015; 0.8191  0.7424; 0.7553  0.5833; 0.5851  0.5909; 0.5213  0.7348; 0.4574  0.6667; 0.3723  0.5606; 0.2234  0.5682];

Test_Class2 = [0.0319  0.8258; 0.0319  0.5909; 0.0638  0.3485; 0.1277  0.1212; 0.4468  0.0455; 0.7979  0.1136 ;1  0.2652 ;  0.9787  0.4773 ;  0.9574  0.6667; 0.9574  0.8561; 0.8085  1 ;  0.7553  0.7803; 0.6489  0.697; 0.5851  0.8485 ; 0.4362  0.9167; 0.3191  0.6288; 0.234  0.75; 0.2234  0.9091];

Training = [Training_Class1;Training_Class2];
Test = [Test_Class1;Test_Class2];
plot(Training_Class1, Training_Class2, 'x', Test_Class1, Test_Class2, 'o');
legend('Train Cls 1','Train Cls 2','Test Cls 1','Test Cls 2')
%"show plot tools and dock figure" din meniul la Figure1 pt vizualizarea graficului corect
%introducerea valorilor in Property Editor Line ca in legenda din documentatie
%se introduc X Data Source si Y Data Source pt cele 4 tipuri de puncte

for j=1:36
for i=1:36 
    v(i)=distanta(Training(i,1),Training(i,2),Test(j,1),Test(j,2));
end
 
[X,I]=min(v);
 
if I>18 fprintf('Vectorul %d apartine clasei 2 \n',j);
else fprintf('Vectorul %d apartine clasei 1 \n',j);
 
end
end


function [ dist ] = distanta( el1,el2,el3,el4 )
 
dist=sqrt((el3-el1)^2+(el4-el2)^2); 
 
end
