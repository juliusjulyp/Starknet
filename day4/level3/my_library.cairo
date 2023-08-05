 use debug::PrintTrait;
 use array::ArrayTrait;
 use traits::TryInto;
 use traits::Into;
 use option::OptionTrait;

 fn main(){
    my_sqrt(25);
    modulus(20, 10);
    exponention(4);
 }

//  fn series_of_functions(){

    
//  }

 fn my_sqrt(num: u128){


    let mut counter: u128 = 1;
    let mut result: u128 = 1;
  loop{
    result = counter * counter;
   
    if  result == num{
    break counter.print();
    }else if counter == num{
    break 'No squareroot'.print();
    }
    counter +=1;
    };

    
   
 }

 fn modulus(num1: u128, num2: u128) {
    let result: u128 = num1 % num2;

    result.print();
 }

 fn exponention(base:u128, power: u128){

    let mut my_count: u128 = power;
    let mut result: u128 = base;
    loop{
    result *=count;
    if my_count == 1{
    break ;
    }
    };

    result.print();


 }