///|
pub fn eval_a(f : Force, m : Mass) -> Acceleration {
  m.inv().mul_vec2d(f)
}

///|
pub fn eval_delta_v(a : Acceleration, t : Time) -> Velocity {
  a.mul_scalar(t)
}

///|
pub fn eval_delta_d(a : Acceleration, v : Velocity, t : Time) -> Displacement {
  let vt = v.mul_scalar(t)
  vt + a.mul_scalar(t * t / 2)
}

///|
pub fn apply_d_to_pos(p : Position, d : Displacement) -> Position {
  Position::{ x: p.x + d.x().inner(), y: p.y + d.y().inner() }
}

///|
pub fn eval_p(v : Velocity, m : Mass) -> Momentum {
  v.mul_scalar(m)
}
