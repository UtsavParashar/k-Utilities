//**
 / Mathematical Functions
 / Author - Utsav Parashar
//**

/- Factorial
fact:{*/1+!x}

/- Fibonacci Series
fib:{{x,sum -2#x}/[x;0 1]}

/- Permutation (almost like prm)
per:{{,/x{x,/:(y^x)}\:y}[;y]/[x-1;y]}
/Test - per[2;1+!3]

/- Combination (almost like cmb)
com:{{,/x{x,/:y&y>max x}\:y}[;y]/[x-1;y]}
/Test - com[2;1+!3]