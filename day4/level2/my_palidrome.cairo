use debug::PrintTrait;
use option::OptionTrait;
use array::ArrayTrait;

fn main(){
    palindrm_checker('hello');
}

fn palindrm_checker(my_string: felt252){

    let mut arr = ArrayTrait::<felt252>::new();
    arr.append(my_string);
    
    let first_value = arr.len();
    first_value.print();

    let spanned_array = arr.span();
    spanned_array.print();

    // let popped_value = arr.pop_front().unwrap();

    // //it doesn't return an individual element in the string but the whole string
    // popped_value.print();
}

// fn string_to_array(myfelt: felt252) {


// }