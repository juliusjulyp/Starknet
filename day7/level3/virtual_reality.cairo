use debug::PrintTrait;
use traits::TryInto;
use traits::Into;
use option::OptionTrait;

//Was actually trying to create another type so as I can pass is to my ty Spacecraft but realized
//its definetly gonna give me problems. so I dropped it.
// #[derive(Copy, Drop)]
// struct Mydata{
// species_number: u32,
// species_name: (felt252,felt252),
// }

#[derive(Copy, Drop)]
struct Spacecraft{
name: felt252,
position: (u32, u32, u32),
datacollected: felt252,
}

trait SpacecraftTrait {
fn lauching(ref self : Spacecraft ) -> Spacecraft;
fn navigating(ref self: Spacecraft) -> Spacecraft;
fn collecting_data(ref self: Spacecraft)->Spacecraft;
}

impl SpacecraftTraitImpl of SpacecraftTrait {
fn lauching(ref self : Spacecraft ) -> Spacecraft{

Spacecraft{
name: 'blockchainer',
position: (0, 0, 0),
datacollected: 'no species',
}
}

fn navigating(ref self: Spacecraft) -> Spacecraft{
Spacecraft{
name: 'blockchainer',
position: (5, 6, 9),
datacollected: 'no species'
}
}

fn collecting_data(ref self: Spacecraft) -> Spacecraft{
Spacecraft{
name: 'blockchainer',
position: (12, 20, 30),
datacollected: '2 species'
}

}
}

//WE IMPLEMENT ANOTHER TRAIT IMPLEMENTATION THAT CAN HELP US PRINT VALUES OF DIFFERENT OCCASIONS

impl SpacecraftImpl of PrintTrait<Spacecraft>{
fn print(self: Spacecraft){
self.name.print();
//since my positions are represented by a tuple I will have to destructure them so as 
//I can be able to print them.
let (x, y, z) = self.position;
x.print();
y.print();
z.print();
self.datacollected.print();

}
}

fn main(){
let mut spacecraft = Spacecraft{
name : '',
position: (0, 0, 0),
datacollected: '',
};

spacecraft.lauching().print();
spacecraft.navigating().print();
spacecraft.collecting_data().print();
}