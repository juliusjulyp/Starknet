use debug::PrintTrait;
use array::ArrayTrait;
use traits::Into;

fn main(){
let mut new_array = ArrayTrait::<u128>::new();
new_array.append(2);
new_array.append(3);
new_array.append(4);
new_array.append(7);

largest_number_finder(new_array);

}

fn largest_number_finder(our_array: Array<u128>) {


let mut largest_number = 1;

loop{
let mut index_to_access = 0;
let mut my_value = *our_array.at(index_to_access);

if my_value > largest_number {
largest_number = my_value;
}else if largest_number > my_value {
 break largest_number = largest_number;
 }
else if index_to_access == our_array.len()-1{
 break largest_number.print();
}else {
break;
}
index_to_access +=1;

};


let my_output: felt252 = largest_number.into();

my_output.print();
}
