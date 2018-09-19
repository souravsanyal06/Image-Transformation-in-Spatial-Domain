function[scaledIm,transFunc]=Scaling(inputIm,range)

x1 = min(min(inputIm));
x2 = max(max(inputIm));
y1 = range(1);
y2 = range(2);

if ( y1 > y2 )
    disp('Range is not right.');
    exit;
end


a=0;
b=0;

syms a b
eqn1 = x1*a + b == y1;
eqn2 = x2*a + b == y2;
sol = solve([eqn1,eqn2],[a,b]);

a = double(sol.a);
b = double(sol.b);

scaledIm = uint8(a.*double(inputIm) + b) ;

vec = x1:x2;
transFunc = uint8(a.*double(vec) + b ) ;

transFunc = double(transFunc)./double(vec);
end

