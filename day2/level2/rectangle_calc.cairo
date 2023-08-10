use debug::PrintTrait;
use traits::Into;

fn calc_rec(length: u32, width:u32) -> felt252{
let output: u32 = length* 2 + width*2;
let per: felt252 = output.into();
per
}

fn main(){
let x: u32 = 2;
let y: u32 = 2;
let per_finder = calc_rec(x,y);

per_finder.print();
}