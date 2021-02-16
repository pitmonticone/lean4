def f (x : α) := x

theorem ex1 (a : α) (b : List α) : f (a::b = []) = False :=
  by simp [f]

def length : List α → Nat
  | []    => 0
  | a::as => length as + 1

theorem ex2 (a b c : α) (as : List α) : length (a :: b :: as) > length as := by
  simp [length]
  apply Nat.lt.step
  apply Nat.ltSuccSelf

def fact : Nat → Nat
  | 0 => 1
  | x+1 => (x+1) * fact x

theorem ex3 : fact x > 0 := by
  induction x with
  | zero => rfl
  | succ x ih =>
    simp [fact]
    apply Nat.mulPos
    apply Nat.zeroLtSucc
    apply ih

def head [Inhabited α] : List α → α
  | []   => arbitrary
  | a::_ => a

theorem ex4 [Inhabited α] (a : α) (as : List α) : head (a::as) = a :=
  by simp [head]

def foo := 10

theorem ex5 (x : Nat) : foo + x = 10 + x := by
  simp [foo]
  done
