{-# OPTIONS --guardedness #-}

open import Agda.Builtin.Nat

record Stream (A : Set) : Set where
  coinductive
  field
    hd : A
    tl : Stream A

open Stream

zeros : Stream Nat
hd zeros = 0
tl zeros = zeros
