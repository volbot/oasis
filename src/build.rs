use macroquad::texture::{draw_texture_ex, DrawTextureParams};
use macroquad::prelude::*;
use crate::{util::Direction, camera::Camera, assets::Assets};

pub struct BuildMap {
    pub size: usize,
    pub arr: Vec<Vec<BuildLayer>>,
}

impl BuildMap {
    pub fn new(size: usize) -> BuildMap {
        let mut bm = BuildMap {
            size,
            arr: vec![],
        };
        let mut x = 0;
        while x < size {
            let mut temp: Vec<BuildLayer> = vec![];
            let mut y = 0;
            while y < size {
                temp.push(BuildLayer::new());
                y+=1;
            }
            bm.arr.push(temp);
            x+=1;
        }
        bm
    }

    pub fn place(&mut self, str_id: String, pos: (f32, f32)) {
        if pos.0 / 20. > self.size as f32 || pos.1 / 20. > self.size as f32 {
            return;
        }
        let obj = BuiltObject::new(str_id, Direction::U, pos);
        self.arr.get_mut((pos.0 / 20.).floor() as usize).unwrap().get_mut((pos.1 / 20.).floor() as usize).unwrap().arr.push(obj);
    }

    pub fn draw(&self, c: &Camera, a: &Assets) {
        for v in &self.arr {
            for bl in v {
                bl.draw(c, a);
            }
        }
    }
}

pub struct BuildLayer {
    pub arr: Vec<BuiltObject>
}

impl BuildLayer {
    pub fn new() -> BuildLayer {
        BuildLayer{ arr:vec![] }
    }

    pub fn draw(&self, cam: &Camera, a: &Assets) {
        for o in &self.arr {
            o.draw(cam,a);
        }
    }
}

pub struct BuiltObject {
    pub str_id: String,
    pub dir: Direction,
    pub pos: (f32, f32),
}

impl BuiltObject {
    pub fn new(str_id: String, dir: Direction, pos: (f32, f32,)) -> BuiltObject {
        BuiltObject{str_id, dir, pos}
    }

    pub fn draw(&self, cam: &Camera, a: &Assets) {
        let par = DrawTextureParams {
            dest_size: Some(Vec2::new(32.*cam.scale,64.*cam.scale)),
            ..Default::default()
        };
        draw_texture_ex(*a.objects.get(self.str_id.as_str()).unwrap(), 
                        (self.pos.0*64.-cam.corner.0)*cam.scale, (self.pos.1*64.-cam.corner.1)*cam.scale, 
                        WHITE, par);
    }
}
