clc;
clear all;
close all;
display('welcome to BMI calculator\n');
name=input('Enter your name:','s');
choices=menu('choose an option','metric','imperal');

switch choices
    case 1
        weight=input('enter your weight in kg :');
        height=input('enter your height in meter :');
  
        bmi= (weight)/(height^2);     
        
        sprintf(' name : %s\n weight : %f kg\n height : %f m\n BMI : %f\n',name,weight,height,bmi)
        
    case 2
        weight=input('enter your weight in pound :');
        height=input('enter your height in inches :');
        
        bmi = (703*weight)/(height^2);
        
        sprintf(' name : %s\n weight : %f kg\n height : %f m\n BMI : %f\n',name,weight,height,bmi)
        
end

if(bmi<16)
    fprintf('severe thinness');
elseif(16<=bmi & bmi<17)
     fprintf('moderate thinness');
elseif(17<=bmi & bmi<18.5)
     fprintf('mild thinness');
elseif(18.5<=bmi & bmi<25)
     fprintf('normal');
 elseif(25<=bmi & bmi<30)
     fprintf('over weight');
elseif(35<=bmi & bmi<40)
    fprintf('obese class II');
else
     fprintf('obese class III');
end