function [x] = plot_line(w,b)
range = [-1 2];
step = 0.05;
x = zeros(1,2);
y = zeros(1,2);
x(1) = range(1);
x(2) = range(2);
y(1) = (-b - w(1) * x(1)) / w(2);
y(2) = (-b - w(1) * x(2)) / w(2);
plot(x,y);
hold on;
for i = range(1):step:range(2)
    for j = range(1):step:range(2)
        if (w(1)*i + w(2)*j + b > 0)
            plot(i,j,'b');
        else
            plot(i,j,'r');
        end
    end
end

axis([-0.5 1.5 -0.5 1.5]);