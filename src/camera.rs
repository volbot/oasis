use macroquad::prelude::*;

pub struct Camera {
    pub corner: (f32, f32),
    pub res: (usize, usize),
    pub scale: f32,
    pub grab_loc: Option<(f32, f32)>,
}

impl Camera {
    pub fn new(res: (usize, usize), corner: (f32, f32)) -> Camera {
        Camera {
            corner, res,
            scale: 1.0,
            grab_loc: None,
        }
    }

    pub fn project(&self, pos:(f32, f32)) -> (f32, f32) {
        (pos.0 - self.corner.0, pos.1 - self.corner.1)
    }

    pub fn bounds(&self) -> (f32, f32) {
        (-self.corner.0 + self.res.0 as f32 * self.scale,
        -self.corner.1 + self.res.1 as f32 * self.scale)
    }
}

pub fn input_camera_movement(cam: &mut Camera) {
    if cam.grab_loc.is_some() {
        let mouse = mouse_position();
        cam.corner.0 -= (mouse.0 - cam.grab_loc.unwrap().0) / cam.scale;
        cam.corner.1 -= (mouse.1 - cam.grab_loc.unwrap().1) / cam.scale;
    }
    if is_mouse_button_down(MouseButton::Middle) {
        cam.grab_loc = Some(mouse_position());
    } else {
        cam.grab_loc = None;
    }
}

pub fn input_camera_zoom(cam: &mut Camera) {
    let i = mouse_wheel().1;
    let c1 = ((cam.corner.0 + cam.res.0 as f32/(cam.scale*2.)),(cam.corner.1 + cam.res.1 as f32/(cam.scale*2.)));
    cam.scale += i*0.1;
    cam.scale = (cam.scale * 10.).round() / 10.;
    let c2 = ((cam.corner.0 + cam.res.0 as f32/(cam.scale*2.)),(cam.corner.1 + cam.res.1 as f32/(cam.scale*2.)));
    if cam.scale < 0.2 {
        cam.scale = 0.2; 
        return;
    }
    if cam.scale > 2. {
        cam.scale = 2.; 
        return;
    }
    cam.corner.0 += c1.0-c2.0;
    cam.corner.1 += c1.1-c2.1;
}
