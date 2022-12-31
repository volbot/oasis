use macroquad::texture::{Texture2D, load_texture};

pub struct Assets {
    pub terrain: Vec<Texture2D>
}

impl Assets {
    pub async fn new() -> Assets {
        Assets {
            terrain:vec![
                load_texture("../assets/terrain/turf.png").await.unwrap(),
            ]
        }
    }
}
