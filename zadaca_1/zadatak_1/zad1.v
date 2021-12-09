Set Implicit Arguments.
Require Import Bool.


Goal forall (x y : bool),
orb (orb (negb (andb x y)) (andb (negb x) y)) (andb (negb x) (negb y)) = negb (andb x y).
Proof.
  destruct x,y ; simpl ; reflexivity.
Qed.

Goal forall (x y z : bool),
andb (andb (negb (andb (andb (negb x) y) (negb z))) (negb (andb (andb x y) z))) (andb (andb x (negb y)) (negb z)) = andb (andb x (negb y)) (negb z).
  destruct x,y,z ; simpl ; reflexivity.
Qed.
