use debug::PrintTrait;

fn return_square(x: u32) -> u32{
x * x
}

fn main(){
let my_value = 2_u32;

return_square(my_value).print();
}