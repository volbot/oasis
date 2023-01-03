pub struct Item {
    pub str_id: String,
    pub n: usize,
}

impl Item {
    pub fn new(str_id: String, n: usize) -> Item {
        Item{str_id, n}
    }
}
