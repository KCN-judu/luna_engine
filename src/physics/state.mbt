///|
pub(all) struct State {
  mut pos : Position
  mut v : Velocity
  mut a : Acceleration
  mut f : Force
  prop : Property
}

///|
pub fn State::eval_next_tick(self : State) -> Unit {
  self.eval_next_ticks(1.0)
}

///|
pub fn State::eval_next_ticks(self : State, t : Time) -> Unit {
  let delta_d = eval_delta_d(self.a, self.v, t)
  let delta_v = eval_delta_v(self.a, t)
  self.pos = apply_d_to_pos(self.pos, delta_d)
  self.v = self.v + delta_v
  self.a = eval_a(self.f, self.prop.m)
}
