///|
pub(all) struct Position {
  x : Double
  y : Double
}

///|
pub impl Add for Position with op_add(a, b) {
  Position::{ x: a.x + b.x, y: a.y + b.y }
}

///|
pub impl Neg for Position with op_neg(a) {
  Position::{ x: -a.x, y: -a.y }
}

///|
pub impl Sub for Position with op_sub(a, b) {
  a + -b
}

///|
pub fn Position::mid_pos(a : Position, b : Position) -> Position {
  let v = a + b
  Position::{ x: v.x / 2.0, y: v.y / 2.0 }
}

///|
pub fn Position::map(self : Position, f : (Double) -> Double) -> Position {
  Position::{ x: self.x |> f, y: self.y |> f }
}

///|
pub fn Position::floor_to_int_tuple(self : Position) -> (Int, Int) {
  (self.x.floor().to_int(), self.y.floor().to_int())
}

///|
pub fn Position::round_to_int_tuple(self : Position) -> (Int, Int) {
  (self.x.round().to_int(), self.y.round().to_int())
}
