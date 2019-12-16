/****************************
/ Generic Utilities
/ Author - Utsav Parashar
/****************************

/- Count number of distinct elements in a list
/- input - list
/- output - dictionary with key as unique elements and values as count
f:{(!=x)!#:'.=x};;
/- Test l:`GOOG`AMZN`GOOG`AMZN`IBM`GOOG; f[l]