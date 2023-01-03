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
                if !(x as f32 * 64. * cam.scale < (cam.corner.0 - 64.) * cam.scale || 
                     x as f32 > cam.corner.0 + (cam.res.0 as f32 / cam.scale) ||
                     y as f32 * 64. * cam.scale < (cam.corner.1 - 64.) * cam.scale || 
                     y as f32 > cam.corner.1 + (cam.res.1 as f32 / cam.scale)) {
                    let tile = self.top[x][y];
                    if tile > 0 {
                        let par = DrawTextureParams {
                            dest_size: Some(Vec2::new(64.*cam.scale,64.*cam.scale)),
                            ..Default::default()
                        };
                        draw_texture_ex(*a.terrain.get(tile-1).unwrap(),
                        ((x * 64) as f32 - cam.corner.0)*cam.scale, 
                        ((y * 64) as f32 - cam.corner.1)*cam.scale, 
                        WHITE, par);
                    }
                }
                y += 1;
            }
            x += 1;
            y = 0;
        }
    }
}

