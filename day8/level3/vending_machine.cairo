use debug::PrintTrait;

enum Product{
Soda: (),
Chips: (),
Candy: (),
}

fn dispense_product(product_code: u8) -> &felt252{
// Patter matching for each product
match Product{

Product::Soda(_) => product_code,
Product::Chips(_)=> product_code,
Product::Candy(_)=> product_code,


}

match product_code{
Product::Soda(_) => {
'Soda dispensed.print();
1},
Product::Chips(_) => {
'Chips dispensed.print();
2},
Product::Candy(_) => {
'Candy dispensed.print();
3},
}
//TOD0: Add pattern matching arms here

}


fn main(){
let my_product: Product = Product::Cheaps(1);
my_product.dispense_product();
}