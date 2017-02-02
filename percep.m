%perceptron
w_init = [0.5 0.3];
b_init = 0.1;
%subproblem1
w = w_init; %initial wight
b = b_init; %initial bias
p1 = [0 1]';
t1 = 0;
p2 = [1 1]';
t2 = 1;
[w1,b1] = percep_sub(w,b,p1,t1,p2,t2);
subplot(3,3,1);
plot_line(w1,b1);
plot(p1(1),p1(2),'rx');
plot(p2(1),p2(2),'bx');
title('sub-problem 1');

%subproblem2
w = w_init; %initial wight
b = b_init; %initial bias
p1 = [0 1]';
t1 = 0;
p2 = [0.5 0.5]';
t2 = 1;
[w2,b2] = percep_sub(w,b,p1,t1,p2,t2);
subplot(3,3,4);
plot_line(w2,b2);
plot(p1(1),p1(2),'rx');
plot(p2(1),p2(2),'bx');
title('sub-problem 2');

%subproblem3
w = w_init; %initial wight
b = b_init; %initial bias
p1 = [0 0]';
t1 = 0;
p2 = [1 1]';
t2 = 1;
[w3,b3] = percep_sub(w,b,p1,t1,p2,t2);
subplot(3,3,2);
plot_line(w3,b3);
plot(p1(1),p1(2),'rx');
plot(p2(1),p2(2),'bx');
title('sub-problem 3');

%subproblem4
w = w_init; %initial wight
b = b_init; %initial bias
p1 = [0 0]';
t1 = 0;
p2 = [0.5 0.5]';
t2 = 1;
[w4,b4] = percep_sub(w,b,p1,t1,p2,t2);
subplot(3,3,5);
plot_line(w4,b4);
plot(p1(1),p1(2),'rx');
plot(p2(1),p2(2),'bx');
title('sub-problem 4');

%subproblem5
w = w_init; %initial wight
b = b_init; %initial bias
p1 = [1 0]';
t1 = 0;
p2 = [1 1]';
t2 = 1;
[w5,b5] = percep_sub(w,b,p1,t1,p2,t2);
subplot(3,3,3);
plot_line(w5,b5);
plot(p1(1),p1(2),'rx');
plot(p2(1),p2(2),'bx');
title('sub-problem 5');

%subproblem6
w = w_init; %initial wight
b = b_init; %initial bias
p1 = [1 0]';
t1 = 0;
p2 = [0.5 0.5]';
t2 = 1;
[w6,b6] = percep_sub(w,b,p1,t1,p2,t2);
subplot(3,3,6);
plot_line(w6,b6);
plot(p1(1),p1(2),'rx');
plot(p2(1),p2(2),'bx');
title('sub-problem 6');

range = [-1 2];
step = 0.05;

% min(1,2)
subplot(3,3,7);
hold on;
for i = range(1):step:range(2)
    for j = range(1):step:range(2)
        if (w1(1)*i + w1(2)*j + b1 < 0) && (w2(1)*i + w2(2)*j + b2 < 0)
            plot(i,j,'r');
        else
            plot(i,j,'b');        
        end
    end
end
axis([-0.5 1.5 -0.5 1.5]);
title('max(1,2)');

 % min(3,4)
subplot(3,3,8);
hold on;
for i = range(1):step:range(2)
    for j = range(1):step:range(2)
        if (w3(1)*i + w3(2)*j + b3 < 0) && (w4(1)*i + w4(2)*j + b4 < 0)
            plot(i,j,'r');
        else
            plot(i,j,'b');        
        end
    end
end
axis([-0.5 1.5 -0.5 1.5]);
title('max(3,4)');

 % min(5,6)
subplot(3,3,9);
hold on;
for i = range(1):step:range(2)
    for j = range(1):step:range(2)
        if (w5(1)*i + w5(2)*j + b5 < 0) && (w6(1)*i + w6(2)*j + b6 < 0)
            plot(i,j,'r');
        else
            plot(i,j,'b');
        end
    end
end
axis([-0.5 1.5 -0.5 1.5]);
title('max(5,6)');

% max( min(1,2), min(3,4), min(5,6) )
figure;
hold on;
for i = range(1):step:range(2)
    for j = range(1):step:range(2)
        if ( ( w1(1)*i + w1(2)*j + b1 > 0 || w2(1)*i + w2(2)*j + b2 > 0) && ( w3(1)*i + w3(2)*j + b3 > 0 || w4(1)*i + w4(2)*j + b4 > 0) && ( w5(1)*i + w5(2)*j + b5 > 0 || w6(1)*i + w6(2)*j + b6 > 0) )
            plot(i,j,'b');
        else
            plot(i,j,'r');
        end
    end
end
plot([0 0 1],[0 1 0],'rx');
plot([0.5 1],[0.5 1],'bx');

title('min( max(1,2), max(3,4), max(5,6) )');
