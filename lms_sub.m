function [ret_w,ret_b] = lms_sub(w,b,p1,t1,p2,t2,alpha)

%w_old = [0 0];
%b_old = 0;
n = 100;
while n > 0
%    w_old = w;
%    b_old = b;

    a = w * p1 + b;
    w = w + 2 * alpha * (t1 - a) * p1';
    b = b + 2 * alpha * (t1 - a);
    
    a = w * p2 + b;
    w = w + 2 * alpha * (t2 - a) * p2';
    b = b + 2 * alpha * (t2 - a);
    n = n - 1;
end

ret_w = w;
ret_b = b;