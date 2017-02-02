function [ret_w,ret_b] = percep_sub(w,b,p1,t1,p2,t2)

w_old = [0 0];
b_old = 0;
while ~((w(1) == w_old(1)) && (w(2) == w_old(2)) && (b == b_old))
    w_old = w;
    b_old = b;

    a = hard_limit(w * p1 + b);
    w = w + (t1 - a) * p1';
    b = b + (t1 - a);
    
    a = hard_limit(w * p2 + b);
    w = w + (t2 - a) * p2';
    b = b + (t2 - a);
end

ret_w = w;
ret_b = b;