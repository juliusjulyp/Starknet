use debug::PrintTrait;
// use core::traits::Neg::<core::integer::u128>

fn main(){
    number_check(-5)
}

fn number_check(num : u128){
    if num == 0 {
        'number is zero '.print();
    }else if(num < 0){
        'number is negative'.print();
    }else{
        'number is positive'.print();
    }
}