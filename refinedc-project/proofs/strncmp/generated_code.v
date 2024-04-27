From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [strncmp.c]. *)
Section code.
  Definition file_0 : string := "strncmp.c".
  Definition loc_2 : location_info := LocationInfo file_0 40 2 40 32.
  Definition loc_3 : location_info := LocationInfo file_0 42 2 54 5.
  Definition loc_4 : location_info := LocationInfo file_0 55 2 55 11.
  Definition loc_5 : location_info := LocationInfo file_0 55 9 55 10.
  Definition loc_6 : location_info := LocationInfo file_0 43 4 54 5.
  Definition loc_7 : location_info := LocationInfo file_0 44 6 44 10.
  Definition loc_8 : location_info := LocationInfo file_0 45 6 45 31.
  Definition loc_9 : location_info := LocationInfo file_0 46 6 46 31.
  Definition loc_10 : location_info := LocationInfo file_0 47 6 47 11.
  Definition loc_11 : location_info := LocationInfo file_0 48 6 48 11.
  Definition loc_12 : location_info := LocationInfo file_0 50 6 51 23.
  Definition loc_13 : location_info := LocationInfo file_0 52 6 53 17.
  Definition loc_14 : location_info := LocationInfo file_0 53 8 53 17.
  Definition loc_15 : location_info := LocationInfo file_0 53 15 53 16.
  Definition loc_16 : location_info := LocationInfo file_0 52 6 53 17.
  Definition loc_17 : location_info := LocationInfo file_0 52 10 52 17.
  Definition loc_18 : location_info := LocationInfo file_0 52 10 52 12.
  Definition loc_19 : location_info := LocationInfo file_0 52 10 52 12.
  Definition loc_20 : location_info := LocationInfo file_0 52 16 52 17.
  Definition loc_21 : location_info := LocationInfo file_0 51 8 51 23.
  Definition loc_22 : location_info := LocationInfo file_0 51 15 51 22.
  Definition loc_23 : location_info := LocationInfo file_0 51 15 51 17.
  Definition loc_24 : location_info := LocationInfo file_0 51 15 51 17.
  Definition loc_25 : location_info := LocationInfo file_0 51 20 51 22.
  Definition loc_26 : location_info := LocationInfo file_0 51 20 51 22.
  Definition loc_27 : location_info := LocationInfo file_0 50 6 51 23.
  Definition loc_28 : location_info := LocationInfo file_0 50 10 50 18.
  Definition loc_29 : location_info := LocationInfo file_0 50 10 50 12.
  Definition loc_30 : location_info := LocationInfo file_0 50 10 50 12.
  Definition loc_31 : location_info := LocationInfo file_0 50 16 50 18.
  Definition loc_32 : location_info := LocationInfo file_0 50 16 50 18.
  Definition loc_33 : location_info := LocationInfo file_0 48 6 48 8.
  Definition loc_34 : location_info := LocationInfo file_0 47 6 47 8.
  Definition loc_35 : location_info := LocationInfo file_0 46 6 46 8.
  Definition loc_36 : location_info := LocationInfo file_0 46 11 46 30.
  Definition loc_37 : location_info := LocationInfo file_0 46 27 46 30.
  Definition loc_38 : location_info := LocationInfo file_0 46 27 46 30.
  Definition loc_39 : location_info := LocationInfo file_0 46 28 46 30.
  Definition loc_40 : location_info := LocationInfo file_0 46 28 46 30.
  Definition loc_41 : location_info := LocationInfo file_0 45 6 45 8.
  Definition loc_42 : location_info := LocationInfo file_0 45 11 45 30.
  Definition loc_43 : location_info := LocationInfo file_0 45 27 45 30.
  Definition loc_44 : location_info := LocationInfo file_0 45 27 45 30.
  Definition loc_45 : location_info := LocationInfo file_0 45 28 45 30.
  Definition loc_46 : location_info := LocationInfo file_0 45 28 45 30.
  Definition loc_47 : location_info := LocationInfo file_0 44 6 44 7.
  Definition loc_48 : location_info := LocationInfo file_0 42 9 42 14.
  Definition loc_49 : location_info := LocationInfo file_0 42 9 42 10.
  Definition loc_50 : location_info := LocationInfo file_0 42 9 42 10.
  Definition loc_51 : location_info := LocationInfo file_0 42 13 42 14.

  (* Definition of struct [__cerbty_unnamed_tag_486]. *)
  Program Definition struct___cerbty_unnamed_tag_486 := {|
    sl_members := [
      (Some "__dummy_max_align_t", void*)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of function [strncmp]. *)
  Definition impl_strncmp : function := {|
    f_args := [
      ("s1", void*);
      ("s2", void*);
      ("n", it_layout size_t)
    ];
    f_local_vars := [
      ("u1", it_layout u8);
      ("u2", it_layout u8)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_3 ;
        Goto "#1"
      ]> $
      <[ "#1" :=
        locinfo: loc_48 ;
        if{IntOp i32, None}: LocInfoE loc_48 ((LocInfoE loc_49 (use{IntOp size_t} (LocInfoE loc_50 ("n")))) >{IntOp size_t, IntOp size_t, i32} (LocInfoE loc_51 (UnOp (CastOp $ IntOp size_t) (IntOp i32) (LocInfoE loc_51 (i2v 0 i32)))))
        then
        locinfo: loc_7 ;
          Goto "#2"
        else
        locinfo: loc_4 ;
          Goto "#3"
      ]> $
      <[ "#2" :=
        locinfo: loc_7 ;
        LocInfoE loc_47 ("n") <-{ IntOp size_t }
          LocInfoE loc_7 ((LocInfoE loc_7 (use{IntOp size_t} (LocInfoE loc_47 ("n")))) -{IntOp size_t, IntOp size_t} (LocInfoE loc_7 (i2v 1 size_t))) ;
        locinfo: loc_8 ;
        LocInfoE loc_41 ("u1") <-{ IntOp u8 }
          LocInfoE loc_42 (UnOp (CastOp $ IntOp u8) (IntOp u8) (LocInfoE loc_43 (use{IntOp u8} (LocInfoE loc_45 (!{PtrOp} (LocInfoE loc_46 ("s1"))))))) ;
        locinfo: loc_9 ;
        LocInfoE loc_35 ("u2") <-{ IntOp u8 }
          LocInfoE loc_36 (UnOp (CastOp $ IntOp u8) (IntOp u8) (LocInfoE loc_37 (use{IntOp u8} (LocInfoE loc_39 (!{PtrOp} (LocInfoE loc_40 ("s2"))))))) ;
        locinfo: loc_10 ;
        LocInfoE loc_34 ("s1") <-{ PtrOp }
          LocInfoE loc_10 ((LocInfoE loc_10 (use{PtrOp} (LocInfoE loc_34 ("s1")))) at_offset{it_layout u8, PtrOp, IntOp i32} (LocInfoE loc_10 (i2v 1 i32))) ;
        locinfo: loc_11 ;
        LocInfoE loc_33 ("s2") <-{ PtrOp }
          LocInfoE loc_11 ((LocInfoE loc_11 (use{PtrOp} (LocInfoE loc_33 ("s2")))) at_offset{it_layout u8, PtrOp, IntOp i32} (LocInfoE loc_11 (i2v 1 i32))) ;
        locinfo: loc_28 ;
        if{IntOp i32, Some "#4"}: LocInfoE loc_28 ((LocInfoE loc_29 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_29 (use{IntOp u8} (LocInfoE loc_30 ("u1")))))) !={IntOp i32, IntOp i32, i32} (LocInfoE loc_31 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_31 (use{IntOp u8} (LocInfoE loc_32 ("u2")))))))
        then
        locinfo: loc_21 ;
          Goto "#7"
        else
        locinfo: loc_17 ;
          Goto "#8"
      ]> $
      <[ "#3" :=
        locinfo: loc_4 ;
        Return (LocInfoE loc_5 (i2v 0 i32))
      ]> $
      <[ "#4" :=
        locinfo: loc_17 ;
        if{IntOp i32, None}: LocInfoE loc_17 ((LocInfoE loc_18 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_18 (use{IntOp u8} (LocInfoE loc_19 ("u1")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_20 (i2v 0 i32)))
        then
        locinfo: loc_14 ;
          Goto "#5"
        else
        locinfo: loc_3 ;
          Goto "#6"
      ]> $
      <[ "#5" :=
        locinfo: loc_14 ;
        Return (LocInfoE loc_15 (i2v 0 i32))
      ]> $
      <[ "#6" :=
        locinfo: loc_3 ;
        Goto "#1"
      ]> $
      <[ "#7" :=
        locinfo: loc_21 ;
        Return (LocInfoE loc_22 ((LocInfoE loc_23 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_23 (use{IntOp u8} (LocInfoE loc_24 ("u1")))))) -{IntOp i32, IntOp i32} (LocInfoE loc_25 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_25 (use{IntOp u8} (LocInfoE loc_26 ("u2"))))))))
      ]> $
      <[ "#8" :=
        locinfo: loc_17 ;
        Goto "#4"
      ]> $∅
    )%E
  |}.
End code.
