use debug::PrintTrait;
use traits::Into;

fn main(){
      my_factorial(5);
   
   

}

fn my_factorial(my_num: u128){

    let mut counter: u128 = my_num-1;
    counter.print();
    let mut result: u128 = my_num;

    loop{
         result = my_num* counter;
        if counter == 1{
          
            break ;
        }
        
        counter -=1;
    };
    result.print();
}


