use dict::Felt252DictTrait;
use debug::PrintTrait;

fn calculate_commision(ref no_of_items: Felt252Dict<u64>,ref sales_amount: Felt252Dict<u64>, user_id: felt252) -> u64{
let number_of_items: u64= no_of_items.get(user_id);
let sale_amout: u64= sales_amount.get(user_id);

let commission = number_of_items * sale_amout * 5/100;
return commission;
}

fn main(){
let mut no_of_items: Felt252Dict<u64> = Default::default();
let mut sales_amount: Felt252Dict<u64> = Default::default();

no_of_items.insert('person_id', 5);
sales_amount.insert('person_id', 50);

let first_commision = calculate_commision(ref no_of_items, ref sales_amount, 'person_id');
first_commision.print();

}