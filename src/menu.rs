use macroquad::texture::{draw_texture_ex, draw_texture};
use macroquad::prelude::*;

use crate::assets::Assets;
use crate::player::Player;

pub struct MenuSwitch {
    pub inv: InventoryMenu,
}

impl MenuSwitch {
    pub fn new() -> MenuSwitch {
        MenuSwitch{
            inv: InventoryMenu::new(),
        }
    }

    pub fn draw(&self, p: &Player, a: &Assets) {
        if self.inv.visible {
            self.inv.draw(p,a);
        }
    }

    pub fn take_input(&mut self) {
        if is_key_released(KeyCode::E) {
            self.inv.visible = !self.inv.visible;
        }
    }
}

pub struct InventoryMenu {
    pub visible: bool,
    pub pos: (f32, f32),
}

impl InventoryMenu {
    pub fn new() -> InventoryMenu {
        InventoryMenu{visible: false, pos: (0.,0.)}
    }

    pub fn draw(&self, p: &Player, a: &Assets) {
        let mut temp = (p.inv.size as f32).sqrt().floor();
        while p.inv.size as f32 % temp != 0. {
            temp-=1.;
        }
        let slot = (p.inv.size/temp as usize,temp as usize);
        let mut x = 0;
        let mut y = 0;
        while x < slot.0 {
            draw_texture(
                *a.menus.get("inv_vedge").unwrap(),
                self.pos.0 + 4. + x as f32 * 48., self.pos.1,
                WHITE);
            x+=1;
        }
        x = 0;
        while x < slot.0 {
            draw_texture(
                *a.menus.get("inv_vedge").unwrap(),
                self.pos.0 + 4. + x as f32 * 48., self.pos.1 + 4. + slot.1 as f32 * 64.,
                WHITE);
            x+=1;
        }
        while y < slot.1 {
            draw_texture(
                *a.menus.get("inv_hedge").unwrap(),
                self.pos.0, self.pos.1 + 4. + y as f32 * 64.,
                WHITE);
            y+=1;
        }
        y = 0;
        while y < slot.1 {
            draw_texture(
                *a.menus.get("inv_hedge").unwrap(),
                self.pos.0 + 4. + slot.0 as f32 * 48., self.pos.1 + 4. + y as f32 * 64.,
                WHITE);
            y+=1;
        }
        x=0;
        y=0;

        //START CORNERS
        let mut par = DrawTextureParams {
            rotation: 0.,
            ..Default::default()
        };
        draw_texture_ex(
            *a.menus.get("inv_corner").unwrap(),
            self.pos.0,self.pos.1,
            WHITE, par.clone());
        par.rotation = (90 as f32).to_radians();
        draw_texture_ex(
            *a.menus.get("inv_corner").unwrap(),
            self.pos.0 + slot.0 as f32 * 48. + 4.,self.pos.1,
            WHITE, par.clone());
        par.rotation = (180 as f32).to_radians();
        draw_texture_ex(
            *a.menus.get("inv_corner").unwrap(),
            self.pos.0 + slot.0 as f32 * 48. + 4.,self.pos.1 + slot.1 as f32 * 64. + 4.,
            WHITE, par.clone());
        par.rotation = (270 as f32).to_radians();
        draw_texture_ex(
            *a.menus.get("inv_corner").unwrap(),
            self.pos.0,self.pos.1 + slot.1 as f32 * 64. + 4.,
            WHITE, par.clone());
        //END CORNERS

        while x < slot.0 {
            while y < slot.1 {
                draw_texture(
                    *a.menus.get("inv_slot").unwrap(),
                    self.pos.0+x as f32*48.+4., 
                    self.pos.1+y as f32*64.+4.,
                    WHITE);
                y+=1;
            }
            x+=1;
            y=0;
        }
    }
}

