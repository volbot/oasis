use macroquad::texture::{Texture2D, load_texture};

pub struct Assets {
    pub terrain: Vec<Texture2D>,
    pub player: Vec<Texture2D>,
    pub walls: Vec<Texture2D>,
}

impl Assets {
    pub async fn new() -> Assets {
        Assets {
            terrain:vec![
                load_texture("assets/terrain/turf.png").await.unwrap(),
            ],
            player:vec![
                load_texture("assets/entity/player/right.png").await.unwrap(),
            ],
            walls:vec![
                load_texture("assets/build/walls/concV.png").await.unwrap(),
            ],
        }
    }
}
