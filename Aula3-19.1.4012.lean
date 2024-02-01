--Não consegui tratar todos os erros de sintaxe
variables A B P Q R S : Prop.

lemma exll (H1 : P→Q) (H2 : R→S) : (P∨R)→(Q∨S) :=
  assume H : (P∨R),
    (or.elim H 
            (or.intro_left S (show Q, from H1))
            (or.intro_right Q (show S, from H2))).
  
  
lemma ex1m (H1 : Q→R) : (P→Q)→(P→R) :=
  assume H : (P→Q),
    (assume H2 : P,(show R, from H1 (show Q, from H H2))).

lemma ex2a (H1 : ¬(A∨B)) : ¬A ∧ ¬B :=
    and.intro((classical.by_contradiction( assume Hn : ¬A (¬A),(show false, from(H1)(or.intro_left(Hn)))))
              (classical.by_contradiction(assume Hn2 : ¬B (¬B),(show false, from(H1)(or.intro_right(Hn2)))))).

lemma ex2b(H1 : ¬A∧¬B) : ¬(A∨B) :=
  (classical.by_contradiction(assume Hn: A∨B,show false, from(and.elim_left(H1))
                                                                    (or.elim Hn
                                                                    (assume H : A,(H))
                                                                    (classical.by_contradiction(assume Hb: B (¬B),show false,from (and.elim_right(H1))(Hb)))
                                                                    )
  )).