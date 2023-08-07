use debug::PrintTrait;
use array::ArrayTrait;
use option::OptionTrait;
use traits::Into;
use traits::TryInto;
use box::BoxTrait;

#[derive(Copy,Drop)]
enum Data {
Integer: u128,
Felt: felt252,
Tuple: (u32, u32),
}

fn main() {
    let mut data_array: Array<Data> = ArrayTrait::new();

data_array.append(Data::Integer(100));
     data_array.append(Data::Felt('hello'));
    
    data_array.append(Data::Tuple((10, 30)));

// let popped_element = data_array.pop_front();
// popped_element.print();

//using get to getting an array element

let index_to_access = 0;

match data_array.get(index_to_access) {
Option::Some(x) => {
*x.unbox()

},

Option::None(_) => {
let mut data = ArrayTrait::new();
data.append('out of bounds');
panic(data)
}

}
}