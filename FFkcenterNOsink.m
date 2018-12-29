clc;
clear;

%ss='D:\2016paper\2016GAFF\USEfile\';
%NodePos = importdata(strcat(ss,'100V3-FF.txt'));
NodePos =load('100V3-FF.txt','-ascii')
hold on
x = NodePos(:,2);  % node position x
y = NodePos(:,3);  % node position y
Num = NodePos(:,1);  % node num
state = NodePos(:,4);% node state
father = NodePos(:,5);
xlabel('FF\_400');

for k = 1: size(Num, 1)
    if state(k,1) == 2
%         plot(x( Num(k, 1) + 1,1), y(Num(k, 1) + 1,1),'b.', 'markersize',24);       
    elseif state(k,1) == 1
        plot(x( Num(k, 1) + 1,1), y(Num(k, 1) + 1,1),'r.', 'markersize',20);  
    elseif state(k,1) == 0
        plot(x( Num(k, 1) + 1,1), y(Num(k, 1) + 1,1),'k.', 'markersize',15);  
    end
end


xpos1 = x( (Num(:, 1) + 1), 1);
ypos1 = y( (Num(:, 1) + 1), 1);
xpos2 = x( (father(:, 1) + 1), 1);
ypos2 = y( (father(:, 1) + 1), 1);

z =[100 100];
display(z(:,1));
plot(z(:,1),z(:,2),'b.', 'markersize',24);
for k = 1: size(Num, 1)
  
    if state(k,1) == 1
        plot( [xpos1(k, 1), z(:,1)], [ypos2(k, 1), z(:,2)], 'b--');
    elseif state(k,1) == 0
       plot( [xpos1(k, 1), xpos2(k, 1)], [ypos1(k, 1), ypos2(k, 1)], 'b--');  
    end
end


% for i = 1:size(x)
%    str = [repmat('.', 1, 1) num2str(Num(i,1)')];
%    text(x(i,1), y(i,1), cellstr(str));
% end


hold off;

