use assets::Assets;
use buildlayer::BuildLayer;
use macroquad::prelude::*;
use terrain::Terrain;
use camera::{Camera, input_camera_movement, input_camera_zoom};
use player::{Player};

pub mod terrain;
pub mod camera;
pub mod assets;
pub mod player;
pub mod util;
pub mod item;
pub mod inventory;
pub mod buildlayer;

#[macroquad::main("Oasis")]
async fn main() {
    clear_background(RED);
    let mut bla: Vec<Vec<BuildLayer>> = vec![];
    let mut x = 0;
    while x < 5 {
        bla.push(vec![BuildLayer::new(),
                      BuildLayer::new(),
                      BuildLayer::new(),
                      BuildLayer::new(),
                      BuildLayer::new(),
        ]);
        x+=1;
    }
    let mut t = Terrain::new();
    let a = Assets::new().await;
    let mut p = Player::new(Vec2::new(350.,350.));
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
        p.walk();
        p.draw(&c, &a);
        input_camera_movement(&mut c);
        input_camera_zoom(&mut c);
        next_frame().await;
    }
}
