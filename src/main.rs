use assets::Assets;
use macroquad::prelude::*;
use terrain::Terrain;
use camera::{Camera, input_camera_movement};

pub mod terrain;
pub mod camera;
pub mod assets;

#[macroquad::main("Oasis")]
async fn main() {
    clear_background(RED);
    let t = Terrain::new();
    let a = Assets::new().await;
    let mut c = Camera::new((800,800), (0.,0.));
    loop {
        t.draw(&c, &a);
        input_camera_movement(&mut c);
        next_frame().await;
    }
}
