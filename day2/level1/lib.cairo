//Basically in cairo we have to subsets of datatypes: scalar and compound types
//The scalar types include felt252, integers and booleans
//felt252 in cairo is max prime number possible in a range of numbers represented by 2^{251} + 17 * 2^{192} + 1
//some really cool mathematics above there.
//The concept of felt252(field elements) is that the return type must satisfy 
//the condition that (x/y)*y = x unlike regular cpus.


use debug::PrintTrait;

fn main(){

    //lets declare some u32 here
    let firs_num : u32 = 6;
    //declareing a felt type :
    let myname = 'Julius';
    //addition
    let addition = 10_u128 + 22_u128;

    //subtraction
    let subtract = 20_u128 -  14_u128;

    //multiplication
    let multiply = 4_u128 * 4_u128;

    //quotient
    let division = 40_u128 / 24_128;
    let division1 = 30_u128 / 10_u128;

}
