use debug::PrintTrait;


#[derive(Copy, Drop)]

struct Contact{
name : felt252,
phone: felt252,
email: felt252,
}

trait ContactTrait {
fn print_details(self : @Contact) -> felt252;
}

impl ContactImpl of ContactTrait {
fn print_details(self: @Contact)  -> felt252 {


let phone_det: felt252 = *self.phone;
phone_det.print();

let email_det: felt252 = *self.email;

email_det.print();


'name is: '.print();
*self.name


// 'Name is:'.print();
// name_det.print();
// ' '.print();
// 'phone is:'.print();
// phone_det.print();
// ' '.print();
// 'email details are'.print();
// email_det.print();

}
}
fn main(){

let contact1 = Contact {
name: 'Julius',
phone: 'phone',
email: 'myemail',
};

contact1.print_details().print();

}