use debug::PrintTrait;
use array::ArrayTrait;
use traits::Into;
use option::OptionTrait;

fn calculate_average(arr: Array<u128>) -> u128{

let arr_len = arr.len();
let mut index_to_access = 0;
let mut average: u128 = 0;
let mut result: u128 = 0;
loop{
if arr_len == 0{
break 'array is empty'.print();
}else if index_to_access > arr_len-1{
break;
}else{
result += *arr.at(index_to_access);
}
index_to_access += 1;
};

let my_len: u128 = arr_len.into();
average = result/my_len;
average
}

fn main(){
let mut arr = ArrayTrait::<u128>::new();

arr.append(50);
arr.append(5);
arr.append(5);

let finale = calculate_average(arr);
finale.print();

}