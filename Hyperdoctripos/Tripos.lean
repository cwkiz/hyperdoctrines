import Mathlib.CategoryTheory.Category.Basic
import Mathlib.Order.Category.HeytAlg
import Mathlib.Order.GaloisConnection.Defs
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.IsPullback.Basic
import Hyperdoctripos.Basic          -- fixed spelling

open CategoryTheory

universe u v

/-
  Weak tripos: surjective generic
  Strong tripos: bijective classify
-/

structure WeakTripos (C : Type v) [Category.{v} C] [Limits.HasBinaryProducts C]
    extends Hyperdoctrine.{u, v} C where
  Ω : C
  mem : toHyperdoctrine.P.obj (Opposite.op Ω) -- generic predicate
  -- Hom(X, Ω) ≃ P(X)
  generic : ∀{X : C} (φ : toHyperdoctrine.P.obj (Opposite.op X)),
        ∃χ : X ⟶ Ω, toHyperdoctrine.P.map χ.op mem = φ
