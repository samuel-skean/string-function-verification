From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [char_comparison.c]. *)
Section code.
  Definition file_0 : string := "char_comparison.c".
  Definition loc_2 : location_info := LocationInfo file_0 7 4 7 19.
  Definition loc_3 : location_info := LocationInfo file_0 7 11 7 18.
  Definition loc_4 : location_info := LocationInfo file_0 7 11 7 12.
  Definition loc_5 : location_info := LocationInfo file_0 7 11 7 12.
  Definition loc_6 : location_info := LocationInfo file_0 7 16 7 18.

  (* Definition of function [equals_a]. *)
  Definition impl_equals_a : function := {|
    f_args := [
      ("c", it_layout u8)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_2 ;
        Return (LocInfoE loc_3 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_3 ((LocInfoE loc_4 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_4 (use{IntOp u8} (LocInfoE loc_5 ("c")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_6 (i2v 97 i32))))))
      ]> $∅
    )%E
  |}.
End code.
