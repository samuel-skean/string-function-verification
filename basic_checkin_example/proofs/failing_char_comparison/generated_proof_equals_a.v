From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.failing_char_comparison Require Import generated_code.
From refinedc.project.basic_checkin_example.failing_char_comparison Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [failing_char_comparison.c]. *)
Section proof_equals_a.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [equals_a]. *)
  Lemma type_equals_a :
    ⊢ typed_function impl_equals_a type_of_equals_a.
  Proof.
    Local Open Scope printing_sugar.
    start_function "equals_a" (c) => arg_c.
    prepare_parameters (c).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) (
      @nil Prop
    ).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "equals_a" "#0".
    Unshelve. all: unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "equals_a".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "equals_a".
  Qed.
End proof_equals_a.
