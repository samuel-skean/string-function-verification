From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.strncmp Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [strncmp.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Specifications for function [strncmp]. *)
  Definition type_of_strncmp :=
    fn(∀ (s1, elts1, s2, elts2, n) : loc * (list Z) * loc * (list Z) * nat; (s1 @ (&own (array (u8) (elts1 `at_type` (int u8))))), (s2 @ (&own (array (u8) (elts2 `at_type` (int u8))))), (n @ (int (u8))); True)
      → ∃ () : (), (void); (s1 ◁ₗ (array (u8) (elts1 `at_type` (int u8)))) ∗ (s2 ◁ₗ (array (u8) (elts2 `at_type` (int u8)))).
End spec.
