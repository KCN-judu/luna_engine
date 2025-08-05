///|
pub struct Vector2D(Scalar,Scalar) derive(Eq)

///|
pub fn Vector2D::x(self : Vector2D) -> Scalar {
  let Vector2D(x, _) = self
  x
}

///|
pub fn Vector2D::y(self : Vector2D) -> Scalar {
  let Vector2D(_, y) = self
  y
}

///|
pub fn Vector2D::mirror_x(self : Vector2D) -> Vector2D {
  let (x, y) = self.inner()
  Vector2D(-x, y)
}

///|
pub fn Vector2D::mirror_y(self : Vector2D) -> Vector2D {
  let (x, y) = self.inner()
  Vector2D(x, -y)
}

///|
fn Vector2D::inner(self : Vector2D) -> (Scalar, Scalar) {
  let Vector2D(x, y) = self
  (x, y)
}

///|
pub impl Add for Vector2D with op_add(a, b) {
  let (x1, y1) = a.inner()
  let (x2, y2) = b.inner()
  Vector2D(x1 + x2, y1 + y2)
}

///|
pub impl Neg for Vector2D with op_neg(a) {
  let (x, y) = a.inner()
  Vector2D(-x, -y)
}

///|
pub impl Sub for Vector2D with op_sub(a, b) {
  a + -b
}

///|
pub impl Zero for Vector2D with zero() {
  Vector2D(0.0, 0.0)
}

///|
pub fn Vector2D::mul_scalar(self : Vector2D, scalar : Scalar) -> Vector2D {
  let (x, y) = self.inner()
  Vector2D(x * scalar, y * scalar)
}

///|
pub fn Vector2D::map(self : Vector2D, f : (Scalar) -> Scalar) -> Vector2D {
  let (x, y) = self.inner()
  Vector2D(f(x), f(y))
}

///|
pub fn Vector2D::sum(vec_arr : Array[Vector2D]) -> Vector2D {
  vec_arr.fold(Vector2D::op_add, init=Vector2D::zero())
}
