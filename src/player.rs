use macroquad::prelude::*;
use crate::{camera::Camera, assets::Assets, inventory::Inventory};

pub struct Player {
    pub loc: Vec2, //location as x,y vector
    pub dir: f32, //direction in radians
    pub inv: Inventory,
}

impl Player {
    pub fn new(loc: Vec2) -> Player {
        Player { loc, dir: 0., inv: Inventory::new() }
    }

    pub fn walk(&mut self) {
         let dirs = (is_key_down(KeyCode::W),
                    is_key_down(KeyCode::D),
                    is_key_down(KeyCode::S),
                    is_key_down(KeyCode::A)); //4-tuple of booleans
         let mut temp = self.loc.clone();

         let movespeed = 3.;

         if dirs.0 {
             temp.y -= movespeed;
         }
         if dirs.1 {
             temp.x += movespeed;
         }
         if dirs.2 {
             temp.y += movespeed;
         }
         if dirs.3 {
             temp.x -= movespeed;
         }
         if temp == self.loc {
             return
         }
         if temp.x != self.loc.x && temp.y != self.loc.y { //check for diagonal movement
             if dirs.0 {
                temp.y += movespeed - (movespeed.powi(2)/2.).sqrt();
             }
             if dirs.1 {
                temp.x -= movespeed - (movespeed.powi(2)/2.).sqrt();
             }
             if dirs.2 {
                 temp.y -= movespeed - (movespeed.powi(2)/2.).sqrt();
             }
             if dirs.3 {
                 temp.x += movespeed - (movespeed.powi(2)/2.).sqrt();
             }
         }
         self.dir = (temp.y-self.loc.y).atan2(temp.x-self.loc.x);
         self.loc = temp;
    }

    pub fn draw(&self, cam: &Camera, a: &Assets) {
        let cam_start = cam.corner.clone();
        let mut cam_end = cam.corner.clone();
        cam_end.0+=cam.res.0 as f32;
        cam_end.1+=cam.res.1 as f32;
        if self.loc.x > cam_start.0 && self.loc.x < cam_end.0 &&
            self.loc.y > cam_start.1 && self.loc.y < cam_end.1 {
                let par = DrawTextureParams {
                    rotation: self.dir,
                    ..Default::default()
                };
                draw_texture_ex(*a.player.get(0).unwrap(), 
                             (self.loc.x - cam_start.0)*cam.scale, 
                             (self.loc.y - cam_start.1)*cam.scale, 
                             WHITE, par);
            }
    }
}
