config var n: int = 4;

var D = {1..n, 1..n};
var A, B, C, E: [D] int;

for (i,j) in D {
  A(i,j) = i+j;
  B(i,j) = i*j;
}

C = A + B;

E = A + B + C;

writeln(A);
writeln(B);
writeln(C);
writeln(E);
