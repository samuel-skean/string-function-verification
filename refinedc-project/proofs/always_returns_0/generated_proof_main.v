From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.always_returns_0 Require Import generated_code.
From refinedc.project.basic_checkin_example.always_returns_0 Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [always_returns_0.c]. *)
Section proof_main.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [main]. *)
  Lemma type_main :
    ⊢ typed_function impl_main type_of_main.
  Proof.
    Local Open Scope printing_sugar.
    start_function "main" ([]).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) (
      @nil Prop
    ).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "main" "#0".
    Unshelve. all: unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "main".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "main".
  Qed.
End proof_main.
