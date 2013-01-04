# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl ExtraMath.t'

#########################

use strict;
use warnings;

use Test::More;
BEGIN { use_ok('ExtraMath') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.


is(min(1,2,3,4,5),1,"test min()");
is(max(1,2,3,4,5),5,"test max()");
is(sum(1,2,3,4),10,"test sum()");

isnt(min("a","b","c"),"a",'test min("a","b","c")');


##
## LEAVE THIS LAST
##
done_testing();
