From refinedc.typing Require Import typing.
From refinedc.project.basic_checkin_example.strcmp Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [strcmp.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Function [memcpy] has been skipped. *)

  (* Function [memmove] has been skipped. *)

  (* Function [strcpy] has been skipped. *)

  (* Function [strncpy] has been skipped. *)

  (* Function [strcat] has been skipped. *)

  (* Function [strncat] has been skipped. *)

  (* Function [memcmp] has been skipped. *)

  (* Specifications for function [strcmp]. *)
  Definition type_of_strcmp :=
    fn(∀ (p1, p2) : loc * loc; (p1 @ (&own (int (u8)))), (p2 @ (&own (int (u8)))); True)
      → ∃ () : (), (void); True.

  (* Function [strcoll] has been skipped. *)

  (* Function [strncmp] has been skipped. *)

  (* Function [strxfrm] has been skipped. *)

  (* Function [memchr] has been skipped. *)

  (* Function [strchr] has been skipped. *)

  (* Function [strcspn] has been skipped. *)

  (* Function [strpbrk] has been skipped. *)

  (* Function [strrchr] has been skipped. *)

  (* Function [strspn] has been skipped. *)

  (* Function [strstr] has been skipped. *)

  (* Function [strtok] has been skipped. *)

  (* Function [memset] has been skipped. *)

  (* Function [strerror] has been skipped. *)

  (* Function [strlen] has been skipped. *)

  (* Function [strdup] has been skipped. *)

  (* Function [strchrnul] has been skipped. *)
End spec.
