use array::ArrayTrait;
use debug::PrintTrait;
use box::BoxTrait;


#[derive(Copy,Drop)]
enum Data {
Integer: u128,
Felt: felt252,
Tuple: (u32, u32),
}

fn main(){

let mut data_array: Array<Data> = ArrayTrait::new();

   data_array.append(Data::Felt('hello'));
    data_array.append(Data::Tuple((9, 4))); 
    data_array.append(Data::Integer(3)); 

let arr_len = data_array.len();
let popped_element = data_array.get(arr_len-1);

let res = match popped_element{
Option::Some(x)=>{
*x.unbox()
},
Option::None(_)=>{
Data::Integer(0)

}
};

//printing values using match statement
match res{
Data::Integer(x)=>{
x.print()
},
Data::Felt(x)=>{
x.print()
},
Data::Tuple(x)=>{
let (num1, num2) = x;
num1.print();
},
}

let mut new_array : Array<Data> = ArrayTrait::new();
let first_el = data_array[0];
let sec_el = data_array[1];
let third_el = data_array[2];

new_array.append(*first_el);
new_array.append(*sec_el);
new_array.append(*third_el);

let first_el_check = new_array.get(0);

let first_el_check_data = match first_el_check{
Option::Some(x)=>{
*x.unbox();
},
Option::None(_)=>{
let mut arr = ArrayTrait::new();
arr.append('Not found');
panic(arr)
}
};

match first_el_check_data{
Data::Integer(x)=>{
x.print();
},
Data::Felt(x)=>{
x.print();
},
Data::Tuple(x)=>{
let (num1, num2) = x;
num1.print();
}
};
}