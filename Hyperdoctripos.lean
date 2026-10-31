import Hyperdoctripos.Basic
universe u v
namespace Hyperdoctrine
variable {C : Type v} [Category.{v} C] [Limits.HasBinaryProducts C]
variable (H : Hyperdoctrine.{u, v} C)

theorem eq_refl(X : C) : (⊤ : H.P.obj (Opposite.op (X ⨯ X))) ≤ H.P.map (Limits.prod.lift (𝟙 X) (𝟙 X)).op (H.eq_ X) :=
  (H.existsAdj _).le_iff_le.mp le_rfl
-- eq_subst : ∀ {X : C} (φ : P.obj (Opposite.op X)),
-- eq_ X ⊓ P.map Limits.prod.fst.op φ ≤ P.map Limits.prod.snd.op φ
