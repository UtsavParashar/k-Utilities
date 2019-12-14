//- Solution to technical problems

//- Problem
 / Given an array A[] consisting 0s, 1s and 2s, write a function that
 / sorts A[]. The functions should put all 0s first,
 / then all 1s and all 2s in last.
//- Solution
 / function to sort the elements of the array
 / counter variables - c0, c1 and c2
 / inner function to count occurrence of each element
 / returning the occurrence of 0,1,2 based on count
 f:{c0::c1::c2::0;{$[0=x;c0+:1;1=x;c1+:1;2=x;c2+:1;::]}'x;,/(c0;c1;c2){#[x;y]}'!3};

//- Secret Santa Problem
/ Participants and gifts are numbered from 1..n. Write Secret Santa helper function - s[n] taking number of participants as input and producing vector Gi(i=1..n) where value of Gi tells gifts from which person i-persons gets.
/ Restriction - If only one Person he cannot gift himself
/ Gift distribution must be random
/ n=5; 31452 -- Person 1 gets gift from person 3
/ 52341 - Invalid result, person 2 3 4 gets gift for themselves
 s:{if[2>x;:"You cannot gift yourself"];$[max(!x)=o:{(-x)?x}x;s[x];o]};
 /- Test max max (!5)=/:s'[10#5]
 /- TODO - condition of 1 user needs to be resolved