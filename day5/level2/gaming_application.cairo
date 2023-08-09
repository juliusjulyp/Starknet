use debug::PrintTrait;


#[derive(Copy, Drop)]
struct InventoryItem {
name: felt252,
description: felt252,
quantity: u32,
equipped: bool,
}

trait InventoryItemTrait {
fn equipItem(self: @InventoryItem)-> bool;
fn unequippedItem(self: @InventoryItem) -> bool;
}

impl InventoryItemImpl of InventoryItemTrait {
    fn equipItem(self: @InventoryItem) -> bool{
    *self.equipped = true;
    }

    fn unequippedItem(self: @InventoryItem) -> bool{
    *self.equipped = false
    }
}

fn main() {

let inventoryitem = InventoryItem {
name : 'cryptozombies',
description: 'codinggame',
quantity: 10,
equipped: false,

};

inventoryitem.equipItem().print();
inventoryitem.unequippedItem().print();
}