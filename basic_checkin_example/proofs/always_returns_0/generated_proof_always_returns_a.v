From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.always_returns_0 Require Import generated_code.
From refinedc.project.basic_checkin_example.always_returns_0 Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [always_returns_0.c]. *)
Section proof_always_returns_a.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [always_returns_a]. *)
  Lemma type_always_returns_a :
    ⊢ typed_function impl_always_returns_a type_of_always_returns_a.
  Proof.
    Local Open Scope printing_sugar.
    start_function "always_returns_a" ([]).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) (
      @nil Prop
    ).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "always_returns_a" "#0".
    Unshelve. all: unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "always_returns_a".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "always_returns_a".
  Qed.
End proof_always_returns_a.
