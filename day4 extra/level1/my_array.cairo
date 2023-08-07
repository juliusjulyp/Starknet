use debug::PrintTrait;
use array::ArrayTrait;

fn main() {

    let mut my_array = ArrayTrait::new();

    my_array.append(10);
    my_array.append(20);
    my_array.append(30);

    my_array.print();
}