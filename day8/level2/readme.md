Level 2
The following snippet was taken from the official cairo book
#[derive(Drop)]
enum Message {
Quit: (),
Echo: felt252,
Move: (u128, u128),
}
Extend the Message enum by adding a new variant called ChangeColor that includes a tuple (u8,
u8, u8) representing RGB values. Write a function that takes a Message variant and performs
different actions based on the type of message. For the ChangeColor variant, print the RGB values.