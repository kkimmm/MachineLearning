% %--------------SVM�������Կɷ�����ʾ��-------------
% clc;clear;
% train=[0 0;2 4;3 3;3 4;4 2;4 4;4 3;5 3;6 2;7 1;2 9;3 8;4 6;4 7;5 6;5 8;6 6;7 4;8 4;10 10];  %ѵ������       
% group=[1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2]'; %ѵ��������֪�������                                                                     
% testdata=[3 2;4 8;6 5;7 6;2 5;5 2];%��������                                                      
% svmModel = svmtrain(train,group,'kernel_function','linear','showplot',true);%ѵ������ģ��
% classification=svmclassify(svmModel,testdata,'Showplot',true);%�������



 
%--------------SVM�������Բ��ɷ�����ʾ��-------------
%��ѡ��˺���ʱ��������linear�����rbf,quadratic,polynomial�ȣ��۲��õķ������
clear;clc;
%ѵ������
train=[5 5;6 4;5 6;5 4;4 5;8 5;8 8;4 5;5 7;7 8;1 2;1 4;4 2;5 1.5;7 3;10 4;4 9;2 8;8 9;8 10]; 
%ѵ�����ݷ������                                                                                      
group=[1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,1,2];                          
%��������
testdata=[6 6;5.5 5.5;7 6;12 14;7 11;2 2;9 9;8 2;2 6;5 10;4 7;7 4];   
plot(testdata(:,1),testdata(:,2),'bo','MarkerSize',15);%��ɫ��ԲȦȦ�������ǲ������� 
hold on
%ѵ������ģ��
svmModel = svmtrain(train,group,'kernel_function','rbf','showplot',true);
%����
classification=svmclassify(svmModel,testdata,'Showplot',true);