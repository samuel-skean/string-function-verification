From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.always_returns_0 Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [always_returns_0.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Specifications for function [always_returns_a]. *)
  Definition type_of_always_returns_a :=
    fn(∀ () : (); True) → ∃ () : (), ((97) @ (int (u8))); True.

  (* Specifications for function [main]. *)
  Definition type_of_main :=
    fn(∀ () : (); True) → ∃ () : (), ((0) @ (int (i32))); True.
End spec.
