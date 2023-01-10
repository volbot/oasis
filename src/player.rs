use macroquad::prelude::*;
use crate::{camera::Camera, assets::Assets, inventory::Inventory, build::BuildLayer, terrain::Terrain};

pub struct Player {
    pub loc: (f32, f32), //location as x,y vector
    pub dir: f32, //direction in radians
    pub inv: Inventory,
}

impl Player {
    pub fn new(loc: (f32, f32)) -> Player {
        Player { loc, dir: 0., inv: Inventory::new() }
    }

    pub fn walk(&mut self, t: &Terrain, bl: &BuildLayer) {
        let dirs = (is_key_down(KeyCode::W),
        is_key_down(KeyCode::D),
        is_key_down(KeyCode::S),
        is_key_down(KeyCode::A)); //4-tuple of booleans
        let mut temp = self.loc.clone();

        let movespeed = 0.04;

        if dirs.0 {
            temp.1 -= movespeed;
        }
        if dirs.1 {
            temp.0 += movespeed;
        }
        if dirs.2 {
            temp.1 += movespeed;
        }
        if dirs.3 {
            temp.0 -= movespeed;
        }
        if temp == self.loc {
            return
        }
        if temp.0 != self.loc.0 && temp.1 != self.loc.1 { //check for diagonal movement
            if dirs.0 {
                temp.1 += movespeed - (movespeed.powi(2)/2.).sqrt();
            }
            if dirs.1 {
                temp.0 -= movespeed - (movespeed.powi(2)/2.).sqrt();
            }
            if dirs.2 {
                temp.1 -= movespeed - (movespeed.powi(2)/2.).sqrt();
            }
            if dirs.3 {
                temp.0 += movespeed - (movespeed.powi(2)/2.).sqrt();
            }
        }
        self.dir = (temp.1-self.loc.1).atan2(temp.0-self.loc.0);
        if bl.collide((temp.0,self.loc.1)) || t.top[temp.0.round() as usize][self.loc.1.round() as usize] == 0 || temp.0 < 0. || temp.0 >= (t.top.len()-1) as f32{
            temp.0 = self.loc.0;
        }
        if bl.collide((self.loc.0,temp.1)) || t.top[self.loc.0.round() as usize][temp.1.round() as usize] == 0 || temp.1 < 0. || temp.1 >= (t.top.len()-1) as f32{
            temp.1 = self.loc.1;
        }
        self.loc = temp;
    }

    pub fn draw(&self, cam: &Camera, a: &Assets) {
        let cam_start = cam.corner.clone();
        let mut cam_end = cam.corner.clone();
        cam_end.0+=cam.res.0 as f32;
        cam_end.1+=cam.res.1 as f32;

        let par = DrawTextureParams {
            dest_size: Some(Vec2::new(64.*cam.scale,64.*cam.scale)),
            rotation: self.dir,
            ..Default::default()
        };
        draw_texture_ex(*a.player.get(0).unwrap(), 
                        (self.loc.0 * 64. - cam_start.0)*cam.scale, 
                        (self.loc.1 * 64. - cam_start.1)*cam.scale, 
                        WHITE, par);
    }
}
