///|
type Scalar Double derive(Eq)

///|
pub impl Add for Scalar with op_add(a, b) {
  a.inner() + b.inner()
}

///|
pub impl Neg for Scalar with op_neg(a) {
  -a.inner()
}

///|
pub impl Sub for Scalar with op_sub(a, b) {
  a + -b
}

///|
pub impl Mul for Scalar with op_mul(a, b) {
  a.inner() * b.inner()
}

///|
pub impl Inverse for Scalar with inv(a) {
  a.inner() |> inv()
}

///|
pub impl Div for Scalar with op_div(a, b) {
  a * b.inv()
}

///|
pub impl One for Scalar with one() {
  1.0
}

///|
pub impl Zero for Scalar with zero() {
  0.0
}

///|
pub fn Scalar::mul_vec2d(self : Scalar, vec : Vector2D) -> Vector2D {
  let (x, y) = vec.inner()
  (self * x, self * y)
}
