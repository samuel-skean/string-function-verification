From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.strncmp Require Import generated_code.
From refinedc.project.basic_checkin_example.strncmp Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [strncmp.c]. *)
Section proof_strncmp.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [strncmp]. *)
  Lemma type_strncmp :
    ⊢ typed_function impl_strncmp type_of_strncmp.
  Proof.
    Local Open Scope printing_sugar.
    start_function "strncmp" ([[[[s1 elts1] s2] elts2] n]) => arg_s1 arg_s2 arg_n local_u1 local_u2.
    prepare_parameters (s1 elts1 s2 elts2 n).
    split_blocks ((
      <[ "#1" :=
        arg_s1 ◁ₗ (s1 @ (&own (array (u8) (elts1 `at_type` (int u8))))) ∗
        arg_s2 ◁ₗ (s2 @ (&own (array (u8) (elts2 `at_type` (int u8))))) ∗
        arg_n ◁ₗ (n @ (int (u8))) ∗
        local_u1 ◁ₗ uninit (it_layout u8) ∗
        local_u2 ◁ₗ uninit (it_layout u8)
    ]> $
      ∅
    )%I : gmap label (iProp Σ)) (
      @nil Prop
    ).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "strncmp" "#0".
    - repeat liRStep; liShow.
      all: print_typesystem_goal "strncmp" "#1".
    Unshelve. all: unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "strncmp".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "strncmp".
  Qed.
End proof_strncmp.
