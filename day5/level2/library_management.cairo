////THIS CODE HAS ANOTHER IMPLEMENTATION IN  DAY 7 LEVEL 2 AS LIBRARY_MANAGEMENT.CAIRO.

use debug::PrintTrait;

#[derive(Copy,Drop)]

struct Book {
title: felt252,
author: felt252,
isbn: felt252,
isavailable: bool,
}

trait BookTrait {
fn borrowBook(self: @Book) -> bool;
fn returnBook(self: @Book) -> bool;
}

impl BookImpl of BookTrait {
fn borrowBook(self: @Book) -> bool{
    let availability: bool = *self.isAvailable;
    if availability {
    false
    }else{
    }
}

fn returnBook(self: @Book) -> bool{
*self.isAvailable = true;
*self.isAvailable
}
}

fn main() {

let book = Book{
title: 'Smart contracts',
author: 'Julius',
isbn: 'blck',
isAvailable: true,
};

book.borrowBook().print();
book.returnBook().print();
}