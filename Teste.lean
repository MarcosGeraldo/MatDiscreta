variables P Q R S T : Prop.

  lemma exa (H1 : (P ∧ Q) ∧ R)
             (H2 : S ∧ T)  : Q ∧ S :=
             and.intro (and.elim_right (and.elim_left H1))
                       (and.elim_left H2). 

  lemma exc (H1 : P)
            (H2 : P → (P → Q) ) : Q :=
              show Q,
              from(show P→Q, from (H2 H1))H1.

  lemma exd : (P ∧ Q) → P :=
             assume H : P∧Q,
             and.elim_left H.
            
  lemma exe (H1 : P) : Q → P ∧ Q :=
    assume H : Q,
    and.intro (H1)
              (H).

