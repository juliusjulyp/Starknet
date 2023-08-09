use dict::Felt252DictTrait;
use debug::PrintTrait;


fn get_student_grade(name: felt252, ref result : Felt252Dict<u64>) -> u64{
let mark: u64 =result.get(name);
return mark;
}



fn main(){
let mut student_grades: Felt252Dict<u64> = Default::default();

student_grades.insert('Alex', 85);
student_grades.insert('Maria', 2); 
student_grades.insert('John', 78);

let output: u64 = get_student_grade('Maria', ref student_grades);
output.print();
}