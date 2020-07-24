% MATLAB program to find the determinant and inverse of a MxN matrix without using any inbuilt functions.

%calculate determinant 
m = input('Enter a 3x3 matrix using bracket notation: ');
a = m(1,1);
b = m(1,2);
c = m(1,3);
d = m(2,1);
e = m(2,2);
f = m(2,3);
g = m(3,1);
h = m(3,2);
i = m(3,3);
detA = a*(e*i-f*h);
detB = b*(d*i-f*g);
detC = c*(d*h-e*g);
det = detA - detB + detC;
disp('Determinant is')
disp(det)
%calculate cofactor
a2 = e*i-h*f;
b2 = -(d*i-g*f);
c2 = d*h-g*e;
d2 = -(b*i-h*c);
e2 = a*i-g*c;
f2 = -(a*h-g*b);
g2 = b*f-e*c; 
h2 = -(a*f-d*c);
i2 = a*e-d*b;
%cofactor matrix
n = [a2 b2 c2; d2 e2 f2; g2 h2 i2];
n=n';
%calculate inverse
if(det ~= 0)
    inv = (1/det)*n;
    disp(inv);
else
    fprintf('Matrix is not invertible.\n');
end;