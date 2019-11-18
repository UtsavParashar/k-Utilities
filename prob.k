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