///|
pub(open) trait Minkowski {
  add(Self, Self) -> Self
  sub(Self, Self) -> Self
}

///|
pub typealias Vector2D as Point

///|
pub(all) struct AABB {
  left_top : Point
  right_bottom : Point
}

///|
pub impl Minkowski for AABB with add(s, o) {
  AABB::{
    left_top: s.left_top + o.left_top,
    right_bottom: s.right_bottom + o.right_bottom,
  }
}

///|
pub impl Minkowski for AABB with sub(s, o) {
  AABB::{
    left_top: s.left_top - o.left_top,
    right_bottom: s.right_bottom - o.right_bottom,
  }
}
