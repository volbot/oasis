use crate::{util::Direction, camera::Camera};

pub struct BuildLayer {
    pub obj: Vec<BuiltObject>
}

impl BuildLayer {
    pub fn new() -> BuildLayer {
        BuildLayer{ obj:vec![] }
    }
    
    pub fn draw(&self, cam: &Camera) {

    }
}

pub struct BuiltObject {
    pub str_id: String,
    pub dir: Direction,
}
