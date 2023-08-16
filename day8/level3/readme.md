Level 3
Imagine you're tasked with programming the logic for a vending machine. The vending machine has
various products, each with a unique code, price, and availability. Users can input a code to select a
product. If the code is valid and the product is available, the machine should dispense the product and
update its inventory.
Question:You're working on implementing the logic for the vending machine. You've defined an enum called
Product to represent the available products, and you're using pattern matching to handle user input
and dispense the selected product. Here's the enum and part of the code you've written:
enum Product {
Soda: (),
Chips: (),
Candy: (),
}
fn dispense_product(product_code: u8) -> &str {
match product_code {
// Pattern matching for each product code
// TODO: Add pattern matching arms here
}
}
Your task is to complete the dispense_product function by adding the necessary pattern matching
arms to handle different product codes. For each valid product code, return a string indicating the
dispensed product. If the product code is invalid, return a string indicating that the product is not
available.
For example, if a user inputs 1, the function should return "Soda dispensed". If the input is 2, it
should return "Chips dispensed". If the input is not a valid product code, return "Invalid
code".
Feel free to use the Product enum provided above and add the necessary code to handle the pattern
matching based on the product codes.
Note: In the real world, vending machine logic often involves more complexity, such as checking
available quantities, deducting the appropriate amount from the user's account, and handling change.
However, for the purpose of this question, focus on the enum and pattern matching aspect to
demonstrate your understanding of these concepts.