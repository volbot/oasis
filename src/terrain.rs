use macroquad::texture::draw_texture;
use macroquad::prelude::*;

use crate::camera::Camera;
use crate::assets::Assets;

#[derive(Clone, Debug)]
pub struct Terrain {
    pub top: [[usize; 100];100],
}

impl Terrain {
    pub fn new() -> Terrain {
        Terrain{top: [[1;100];100]}
    }

    pub fn draw(&self, cam: &Camera, a: &Assets) {
        let mut x = cam.corner.0;
        let mut y = cam.corner.1;
        println!("{}",x);
        while x < cam.corner.0 + cam.res.0 as f32 {
            while y < cam.corner.1 + cam.res.1 as f32 {
                let tilecoord = (x as isize/40,y as isize/35);
                if !(tilecoord.0 < 0 || tilecoord.0 >= self.top[0].len() as isize ||
                     tilecoord.1 < 0 || tilecoord.1 >= self.top.len() as isize) {
                    let tile = self.top[tilecoord.0 as usize][tilecoord.1 as usize];
                    if tile > 0 {
                        draw_texture(*a.terrain.get(tile-1).unwrap(),
                        (x - (cam.corner.0 + (cam.corner.0 as isize%40) as f32)) * cam.scale, 
                        (y - (cam.corner.1 + (cam.corner.1 as isize%35) as f32)) * cam.scale, 
                        WHITE);
                    }
                }
                y += 35.;
            }
            x += 40.;
            y = cam.corner.1;
        }
    }
}

