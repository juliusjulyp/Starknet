use debug::PrintTrait;
use traits::Into;


#[derive(Copy,Drop)]

struct Person{
name: felt252,
age: u64,
}

// fn modify_person(ref person: Person){
// person.age = 1;

// }

// fn main(){
// let mut person = Person{
// name: 'Julius',
// age: 20,
// };

// let new_person:felt252 = modify_person(ref person).into();

// new_person.print();
// }

//  ANOTHTER IMPLEMENTATION

fn modify_person (person: @Person){
let mut new_age = *person.age;
new_age = 9;
let the_age:felt252 = new_age.into();
the_age.print();

}

fn main(){
let mut person = Person{
name: 'Julius',
age: 20,
};

let new_person = modify_person(@person);

// new_person.print();
}