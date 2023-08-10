use debug::PrintTrait;
fn prime_number(x: u256){

    if( x== 2|| x == 3){
        'is a prime prime number'.print()
    }else if(x%2 == 0 || x%3== 0 || x%5== 0 || x==1){
        'is not prime'.print()
    }else{
        'is a prime number'.print()
    }
}
fn main(){
    prime_number(1);
}
