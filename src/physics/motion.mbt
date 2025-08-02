///|
typealias Vector2D as Velocity

///|
typealias Vector2D as Acceleration

///|
typealias Vector2D as Displacement

///|
typealias Vector2D as Force

///|
typealias Vector2D as Momentum

///|
typealias Scalar as Mass

///|
typealias Scalar as Time

///|
pub fn eval_a(f : Force, m : Mass) -> Acceleration {
  m.inv().mul_vec2d(f)
}

///|
pub fn eval_delta_v(a : Acceleration, t : Time) -> Velocity {
  a.mul_scalar(t)
}

///|
pub fn eval_delta_d(
  a~ : Acceleration? = None,
  v : Velocity,
  t : Time,
) -> Displacement {
  let vt = v.mul_scalar(t)
  if a is Some(a_) {
    vt + a_.mul_scalar(t * t / 2)
  } else {
    vt
  }
}

///|
pub fn eval_p(v : Velocity, m : Mass) -> Momentum {
  v.mul_scalar(m)
}
