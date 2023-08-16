use debug::PrintTrait;


#[derive(Drop)]

enum DaysOfWeek{

FirstDay: felt252,
SecondDay: felt252,
ThirdDay: felt252,
FourthDay: felt252,
FifthDay: felt252,
SixthDay: felt252,
SeventhDay: felt252,
}

trait WeekTrait{
fn my_days(self: DaysOfWeek);
}

impl WeekImpl of WeekTrait{
fn my_days(self: DaysOfWeek){
match self{
DaysOfWeek::FirstDay(day)=>{
'Monday'.print();
},
DaysOfWeek::SecondDay(day)=>{
'Tuesday'.print();
},
DaysOfWeek::ThirdDay(day)=>{
'Wednesday'.print();
},
DaysOfWeek::FourthDay(day)=>{
'Thursday'.print();
},
DaysOfWeek::FifthDay(day)=>{
'Friday'.print();
},
DaysOfWeek::SixthDay(day)=>{
'Saturday'.print();
},
DaysOfWeek::SeventhDay(day)=>{
'Sunday'.print();
},
}

}
}

fn main(){

let second_day :DaysOfWeek = DaysOfWeek::SecondDay();
second_day.my_days();


}