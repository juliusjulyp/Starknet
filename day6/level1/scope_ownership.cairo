use debug::PrintTrait;


fn testing_outofscope(j: felt252)-> felt252{
//trying to use the value of x that was declared in another function
let z = x + j ;
z
//It will return an error since the value of x was dropped
}
fn main(){
let mut x: felt252 = 3;

let y : felt252 = x + 2;

y.print();


//prints an error.
let test = testing_outofscope(1);
test.print();

}