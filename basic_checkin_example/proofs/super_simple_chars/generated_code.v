From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [super_simple_chars.c]. *)
Section code.
  Definition file_0 : string := "super_simple_chars.c".
  Definition loc_2 : location_info := LocationInfo file_0 3 4 3 14.
  Definition loc_3 : location_info := LocationInfo file_0 3 11 3 13.
  Definition loc_6 : location_info := LocationInfo file_0 8 4 8 13.
  Definition loc_7 : location_info := LocationInfo file_0 8 11 8 12.

  (* Definition of function [always_returns_a]. *)
  Definition impl_always_returns_a : function := {|
    f_args := [
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_2 ;
        Return (LocInfoE loc_3 (UnOp (CastOp $ IntOp u8) (IntOp i32) (LocInfoE loc_3 (i2v 97 i32))))
      ]> $∅
    )%E
  |}.

  (* Definition of function [main]. *)
  Definition impl_main : function := {|
    f_args := [
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_6 ;
        Return (LocInfoE loc_7 (i2v 0 i32))
      ]> $∅
    )%E
  |}.
End code.
