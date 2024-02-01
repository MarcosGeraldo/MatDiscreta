--Tive dificuldades com a eliminação do ∀ 

variable U : Type.
variables Q P A B C: U → Prop.
variable a : U.

lemma ex1a (H : ∀ x, P x → Q x) : (∀ x, ¬Q x)→(∀ x, ¬P x):=
  (assume H1 : ∀x, ¬Q x,
   show ∀x,¬P x,(assume x,
                         show ¬P x,(assume H2 : P x, show false,
                                                            from( () () ))))

.

lemma ex1f (H : ∀ x, P x → Q x) : ∀ x, P x → ∀x, Q x :=
  (assume H1 : ∀x, P x, show ∀x, Q x,(assume x, show Q x,from H H1))
.

lemma ex1c (H1: ∀ x, (A x→(B x ∧ C x))) (H2: ∀ x, ¬B x) : (∀ x, A x)→(∀x, C x) :=
  (assume H3 : ∀x, A x, show ∀x, C x,(assume x, show C x, or.elim ()
                                                                  ()
                                                                  ()))


.
