///|
pub(all) struct CameraImmut {
  pos : (Int, Int)
  width : Int
  height : Int
}

///|
pub(all) struct CameraMutable {
  mut pos : (Int, Int)
  width : Int
  height : Int
}

///|
pub trait Camera {
  get_center(Self) -> (Int, Int)
  new((Int, Int), Int, Int) -> Self
  //object_in_view(Self, (Int, Int)) -> Bool
}

///|
fn get_center(pos : (Int, Int), width : Int, height : Int) -> (Int, Int) {
  let (x, y) = pos
  (x + width / 2, y + height / 2)
}

///|
pub impl Camera for CameraImmut with get_center(self) {
  get_center(self.pos, self.width, self.height)
}

///|
pub impl Camera for CameraImmut with new(pos, width, height) {
  CameraImmut::{ pos, width, height }
}

///|
pub impl Camera for CameraMutable with get_center(self) {
  get_center(self.pos, self.width, self.height)
}

///|
pub impl Camera for CameraMutable with new(pos, width, height) {
  CameraMutable::{ pos, width, height }
}
