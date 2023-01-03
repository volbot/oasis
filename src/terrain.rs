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
        let mut x = 0;
        let mut y = 0;
        while x < self.top[0].len() {
            while y < self.top.len() {
                if !(x as isize * 40 < cam.corner.0 as isize - 40 || x > cam.corner.0 as usize + cam.res.0 ||
                     y as isize * 35 < cam.corner.1 as isize - 35 || y > cam.corner.1 as usize + cam.res.1) {
                    let tile = self.top[x][y];
                    if tile > 0 {
                        draw_texture(*a.terrain.get(tile-1).unwrap(),
                        (x * 40) as f32 * cam.scale - cam.corner.0, 
                        (y * 35) as f32 * cam.scale - cam.corner.1, 
                        WHITE);
                    }
                }
                y += 1;
            }
            x += 1;
            y = 0;
        }
    }
}

