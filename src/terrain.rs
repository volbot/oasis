use macroquad::texture::draw_texture;
use macroquad::prelude::*;

use crate::camera::Camera;
use crate::assets::Assets;

#[derive(Clone, Debug)]
pub struct Terrain {
    pub bottom: [[usize; 100]; 100],
}

impl Terrain {
    pub fn new() -> Terrain {
        Terrain{bottom: [[0;100];100]}
    }
    
    pub fn draw(&self, cam: &Camera, a: &Assets) {
        let mut x = cam.corner.0-40.;
        let mut y = cam.corner.1-40.;
        while x < cam.corner.0 + cam.res.0 as f32 {
            while y < cam.corner.1 + cam.res.1 as f32 {
                let tilecoord = ((x/40.) as isize,(y/40.) as isize);
                if !(tilecoord.0 < 0 || tilecoord.0 >= self.bottom[0].len() as isize ||
                    tilecoord.1 < 0 || tilecoord.1 >= self.bottom.len() as isize) {
                    draw_texture(*a.terrain.get(self.bottom[tilecoord.0 as usize][tilecoord.1 as usize]).unwrap(), 
                             (x - (cam.corner.0 + cam.corner.0%40.)) * cam.scale, 
                             (y - (cam.corner.1 + cam.corner.1%40.)) * cam.scale, 
                             WHITE);
                }
                y += 40.;
            }
            x += 40.;
            y = cam.corner.1;
        }
    }
}

