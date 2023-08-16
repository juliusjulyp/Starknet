use debug::PrintTrait;

#[derive(Drop)]
enum Message {
Quit: (),
Echo: felt252,
Move: (u128, u128),
ChangeColor: (u8, u8, u8),
}

trait processTrait {
fn process(self: Message);
}

impl processImpl of processTrait{
fn process(self: Message){
match self{
Message::Quit(())=>{
'quitting'.print();
},
Message::Echo(x)=>{
x.print();
},
Message::Move((u, v))=>{
'moving'.print();
},
Message::ChangeColor((red, green, blue))=>{
'The color has changed to'.print();
red.print();
green.print();
blue.print();
},
}
}


}

// impl myprint of PrintTrait<Message> {
// fn print(self: Message){
// self.red.print();
// self.green.print();
// self.blue.print();
// }
// }

fn main(){
let msg: Message = Message::ChangeColor((255, 0, 0));

msg.process();

}

