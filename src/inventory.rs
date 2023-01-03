use crate::item::Item;

pub struct Inventory {
    pub items: Vec<Item>,
}

impl Inventory {
    pub fn new() -> Inventory {
        Inventory{items:vec![]}
    }
}
