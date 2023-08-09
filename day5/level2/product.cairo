use dict::Felt252DictTrait;
use debug::PrintTrait;

fn add_product(ref my_dict: Felt252Dict<u64>, product_name: felt252, quantity: u64){
my_dict.insert(product_name, quantity);
}

fn main(){
let mut product: Felt252Dict<u64> = Default::default();

add_product(ref product, 'ball', 4);
let ball_quantity = product.get('ball');

ball_quantity.print();
}