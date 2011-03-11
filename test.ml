type 'a pairs = 'a list list

val abc: int pairs = [[3,4], [4,5], [5,6]];

datatype ('a, 'b) pair = AB of 'a * 'b
                       | BA of 'b * 'a
                       
fun check (AB (a, b), BA (c, d)) = 
                      (a = d) andalso (b = c)
                      
check (AB(0, "h"), BA("h", 0));