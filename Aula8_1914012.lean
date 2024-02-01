

variable U : Type.
variables Q P R: U → Prop.
variable x : U.

lemma ex1b (H : ∀x,P x → ¬Q x) : ¬(∃x,(P x ∧ Q x)) :=
  assume H1 : (∃x,(P x ∧ Q x)), show false, from((show ¬Q x, from ( (/-!eliminação do ∀-/ H ) 
                                                                  (and.elim_left /-!Eliminação do ∃x-/ H1))) 
                                                ( and.intro_left /-Eliminação do ∃x -/ H1)).

lemma ex1d (H : ∃x(P x ∧ Q x)) 
           (H1 : ∀x (P x→R x)) : ∃x, (R x ∧ Q x) :=
           /-Introdução do ∃ -/ and.intro(show R x, from (/-Introcução do ∀-/ H1)
                                                         (and.elim_left /-Eliminação do ∃-/ H))
                                         ( and.elim_right /-Introdução do ∃-/ H). 