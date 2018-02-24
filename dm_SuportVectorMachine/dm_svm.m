% %--------------SVM处理线性可分问题示例-------------
% clc;clear;
% train=[0 0;2 4;3 3;3 4;4 2;4 4;4 3;5 3;6 2;7 1;2 9;3 8;4 6;4 7;5 6;5 8;6 6;7 4;8 4;10 10];  %训练数据       
% group=[1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2]'; %训练数据已知分类情况                                                                     
% testdata=[3 2;4 8;6 5;7 6;2 5;5 2];%测试数据                                                      
% svmModel = svmtrain(train,group,'kernel_function','linear','showplot',true);%训练分类模型
% classification=svmclassify(svmModel,testdata,'Showplot',true);%分类测试



 
%--------------SVM处理线性不可分问题示例-------------
%在选择核函数时，尝试用linear以外的rbf,quadratic,polynomial等，观察获得的分类情况
clear;clc;
%训练数据
train=[5 5;6 4;5 6;5 4;4 5;8 5;8 8;4 5;5 7;7 8;1 2;1 4;4 2;5 1.5;7 3;10 4;4 9;2 8;8 9;8 10]; 
%训练数据分类情况                                                                                      
group=[1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,1,2];                          
%测试数据
testdata=[6 6;5.5 5.5;7 6;12 14;7 11;2 2;9 9;8 2;2 6;5 10;4 7;7 4];   
plot(testdata(:,1),testdata(:,2),'bo','MarkerSize',15);%蓝色大圆圈圈起来的是测试数据 
hold on
%训练分类模型
svmModel = svmtrain(train,group,'kernel_function','rbf','showplot',true);
%分类
classification=svmclassify(svmModel,testdata,'Showplot',true);