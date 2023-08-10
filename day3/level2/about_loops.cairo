use debug::PrintTrait;
use array::ArrayTrait;
use option::OptionTrait;


 
 fn main(){

 }

 fn my_tuple() {
    let mut list = ArrayTrait::new();
list.append(20);
list.append(30);
list.append(40);

let mut index_access = 0;

    let mut new_array = ArrayTrait::<u128>::new();
    let mut value: u128 = 
     
     loop{
        if (index_access == new_array.len) {
            break;
            
        }else if(index_access >= 0){
             new_array.append(*list.at(index_access) + 10);
            index_access+=1

            
        }else{
            break;
        }
     };

 }