use macroquad::texture::draw_texture;
use macroquad::prelude::*;

use crate::camera::Camera;
use crate::assets::Assets;

#[derive(Clone, Debug)]
pub struct Terrain {
    pub top: [[[usize; 5]; 100];100],
}

impl Terrain {
    pub fn new() -> Terrain {
        Terrain{top: [[[1;5];100];100]}
    }

    pub fn draw(&self, cam: &Camera, a: &Assets) {
        let mut x = cam.corner.0-40.;
        let mut y = cam.corner.1-35.;
        while x < cam.corner.0 + cam.res.0 as f32 {
            while y < cam.corner.1 + cam.res.1 as f32 {
                let tilecoord = ((x/40.).floor() as isize,(y/35.).floor() as isize);
                if !(tilecoord.0 < 0 || tilecoord.0 >= self.top[0].len() as isize ||
                     tilecoord.1 < 0 || tilecoord.1 >= self.top.len() as isize) {
                    let mut z: isize = 4;
                    let mut tile = 0;
                    while tile == 0 && z >= 0 {
                        tile = self.top[tilecoord.0 as usize][tilecoord.1 as usize][z as usize];
                        z-=1;
                    }
                    draw_texture(*a.terrain.get(tile-1).unwrap(),
                    (x - (cam.corner.0 + cam.corner.0%40.)) * cam.scale, 
                    (y - (cam.corner.1 + cam.corner.1%35.) + ((4-z) * 20) as f32) * cam.scale, 
                    if z == 3 {WHITE} else {GRAY});
                }
                y += 35.;
            }
            x += 40.;
            y = cam.corner.1;
        }
    }
}

