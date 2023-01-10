use crate::item::Item;

pub struct Inventory {
    pub items: Vec<Item>,
    pub size: usize,
}

impl Inventory {
    pub fn new() -> Inventory {
        Inventory{items:vec![], size:20}
    }
}
