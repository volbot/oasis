use assets::Assets;
use build::BuildMap;
use macroquad::prelude::*;
use terrain::Terrain;
use camera::{Camera, input_camera_movement, input_camera_zoom};
use player::Player;

pub mod terrain;
pub mod camera;
pub mod assets;
pub mod player;
pub mod util;
pub mod item;
pub mod inventory;
pub mod build;

#[macroquad::main("Oasis")]
async fn main() {
    clear_background(RED);
    let mut bm = BuildMap::new(5);
    bm.place("concrete".to_string(),(10.5,10.));
    bm.place("concrete".to_string(),(10.,9.5));
    bm.place("concrete".to_string(),(10.,10.));
    bm.place("concrete".to_string(),(10.,10.5));
    let mut t = Terrain::new();
    let a = Assets::new().await;
    let mut p = Player::new((7.,7.));
    let mut c = Camera::new((1920,1080), (0.,0.));
    t.top[24][24]=0;
    t.top[24][23]=0;
    t.top[23][24]=0;
    t.top[23][23]=0;
    t.top[23][22]=0;
    t.top[22][23]=0;
    t.top[22][22]=0;
    loop {
        t.draw(&c, &a);
        p.walk(bm.get(p.loc).unwrap());
        p.draw(&c, &a);
        bm.draw(&c, &a);
        input_camera_movement(&mut c);
        input_camera_zoom(&mut c);
        next_frame().await;
    }
}
