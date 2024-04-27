From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.strcmp Require Import generated_code.
From refinedc.project.basic_checkin_example.strcmp Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [strcmp.c]. *)
Section proof_strcmp.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [strcmp]. *)
  Lemma type_strcmp :
    ⊢ typed_function impl_strcmp type_of_strcmp.
  Proof.
    Local Open Scope printing_sugar.
    start_function "strcmp" ([p1 p2]) => arg_p1 arg_p2 local_s2 local_s1 local_c1 local_c2.
    prepare_parameters (p1 p2).
    split_blocks ((
      <[ "#1" :=
        arg_p1 ◁ₗ (p1 @ (&own (int (u8)))) ∗
        arg_p2 ◁ₗ (p2 @ (&own (int (u8)))) ∗
        local_s2 ◁ₗ uninit void* ∗
        local_s1 ◁ₗ uninit void* ∗
        local_c1 ◁ₗ uninit (it_layout u8) ∗
        local_c2 ◁ₗ uninit (it_layout u8)
    ]> $
      ∅
    )%I : gmap label (iProp Σ)) (
      @nil Prop
    ).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "strcmp" "#0".
    - repeat liRStep; liShow.
      all: print_typesystem_goal "strcmp" "#1".
    Unshelve. all: unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "strcmp".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "strcmp".
  Qed.
End proof_strcmp.
