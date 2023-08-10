use debug::PrintTrait;
use traits:: Into;
use traits::TryInto;
use option::OptionTrait;

fn main(){

    let my_felt252 = 10;

    let my_u8 : u8 = my_felt252.try_into().unwrap();
    my_u8.print();

    let my_u256 : u256 = my_felt252.into();
    my_u256.print();

    let my_other_felt252 = my_u256.into();

    let my_usize: usize = my_u8.into();
    my_usize.print();

}
