use debug::PrintTrait;

fn main(){
    control_flow(20, 90, 40);

}

fn control_flow(num1: u128, num2: u128, num3: u128){

    if num1 > num2 && num1 >num3{
        'The first number is greater'.print();
        num1.print();
    }else if(num2> num1 && num2 > num3){
        'The second number is greater'.print();
        num2.print();
    }else{
        'The third number is greater'.print();
        num3.print();
    }

}