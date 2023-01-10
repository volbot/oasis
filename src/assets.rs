use std::collections::HashMap;

use macroquad::texture::{Texture2D, load_texture};

pub struct Assets {
    pub terrain: Vec<Texture2D>,
    pub player: Vec<Texture2D>,
    pub objects: HashMap<String, Texture2D>,
    pub menus: HashMap<String, Texture2D>,
}

impl Assets {
    pub async fn new() -> Assets {
        let mut a = Assets {
            terrain:vec![
                load_texture("assets/terrain/turf.png").await.unwrap(),
            ],
            player:vec![
                load_texture("assets/entity/player/right.png").await.unwrap(),
            ],
            objects: HashMap::new(),
            menus: HashMap::new(),
        };
        a.objects.insert("concrete".to_string(),load_texture("assets/build/walls/conc.png").await.unwrap());
        a.menus.insert("inv_slot".to_string(),load_texture("assets/menu/items/slot.png").await.unwrap());
        a.menus.insert("inv_corner".to_string(),load_texture("assets/menu/items/corner.png").await.unwrap());
        a.menus.insert("inv_vedge".to_string(),load_texture("assets/menu/items/topedge.png").await.unwrap());
        a.menus.insert("inv_hedge".to_string(),load_texture("assets/menu/items/leftedge.png").await.unwrap());
        a
    }
}
