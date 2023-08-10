use debug::PrintTrait;
use traits::Into;
fn main(){
let tup = (500, 6, 8, 12);

let (u,x, y, z) = tup;
let sum = u+x+y+z;
// sum.print();

let turnedu256: u256 = sum.into();
turnedu256.print();
}