From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.failing_char_comparison Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [failing_char_comparison.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Specifications for function [equals_a]. *)
  Definition type_of_equals_a :=
    fn(∀ c : nat; (c @ (int (u8))); True)
      → ∃ () : (), ((bool_decide (c =? 97)) @ (builtin_boolean)); True.
End spec.
