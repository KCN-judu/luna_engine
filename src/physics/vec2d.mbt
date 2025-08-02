///|
pub type Vector2D (Scalar, Scalar) derive(Eq)

///|
pub impl Add for Vector2D with op_add(a, b) {
  let (x1, y1) = a.inner()
  let (x2, y2) = b.inner()
  (x1 + x2, y1 + y2)
}

///|
pub impl Neg for Vector2D with op_neg(a) {
  let (x, y) = a.inner()
  (-x, -y)
}

///|
pub impl Sub for Vector2D with op_sub(a, b) {
  a + -b
}

///|
pub impl Zero for Vector2D with zero() {
  (0.0, 0.0)
}

///|
pub fn Vector2D::mul_scalar(self : Vector2D, scalar : Scalar) -> Vector2D {
  let (x, y) = self.inner()
  (x * scalar, y * scalar)
}

///|
pub fn Vector2D::map(self : Vector2D, f : (Scalar) -> Scalar) -> Vector2D {
  let (x, y) = self.inner()
  (f(x), f(y))
}

///|
pub fn Vector2D::sum(vec_arr : Array[Vector2D]) -> Vector2D {
  vec_arr.fold(Vector2D::op_add, init=Vector2D::zero())
}
