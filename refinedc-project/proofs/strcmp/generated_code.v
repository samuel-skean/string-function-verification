From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [strcmp.c]. *)
Section code.
  Definition file_0 : string := "strcmp.c".
  Definition loc_2 : location_info := LocationInfo file_0 26 2 26 55.
  Definition loc_3 : location_info := LocationInfo file_0 27 2 27 55.
  Definition loc_4 : location_info := LocationInfo file_0 28 2 28 23.
  Definition loc_5 : location_info := LocationInfo file_0 29 2 38 19.
  Definition loc_6 : location_info := LocationInfo file_0 39 2 39 17.
  Definition loc_7 : location_info := LocationInfo file_0 39 9 39 16.
  Definition loc_8 : location_info := LocationInfo file_0 39 9 39 11.
  Definition loc_9 : location_info := LocationInfo file_0 39 9 39 11.
  Definition loc_10 : location_info := LocationInfo file_0 39 14 39 16.
  Definition loc_11 : location_info := LocationInfo file_0 39 14 39 16.
  Definition loc_13 : location_info := LocationInfo file_0 30 4 37 5.
  Definition loc_14 : location_info := LocationInfo file_0 31 6 31 31.
  Definition loc_15 : location_info := LocationInfo file_0 32 6 32 31.
  Definition loc_16 : location_info := LocationInfo file_0 33 6 33 11.
  Definition loc_17 : location_info := LocationInfo file_0 34 6 34 11.
  Definition loc_18 : location_info := LocationInfo file_0 35 6 36 23.
  Definition loc_19 : location_info := LocationInfo file_0 36 8 36 23.
  Definition loc_20 : location_info := LocationInfo file_0 36 15 36 22.
  Definition loc_21 : location_info := LocationInfo file_0 36 15 36 17.
  Definition loc_22 : location_info := LocationInfo file_0 36 15 36 17.
  Definition loc_23 : location_info := LocationInfo file_0 36 20 36 22.
  Definition loc_24 : location_info := LocationInfo file_0 36 20 36 22.
  Definition loc_25 : location_info := LocationInfo file_0 35 6 36 23.
  Definition loc_26 : location_info := LocationInfo file_0 35 10 35 17.
  Definition loc_27 : location_info := LocationInfo file_0 35 10 35 12.
  Definition loc_28 : location_info := LocationInfo file_0 35 10 35 12.
  Definition loc_29 : location_info := LocationInfo file_0 35 16 35 17.
  Definition loc_30 : location_info := LocationInfo file_0 34 6 34 8.
  Definition loc_31 : location_info := LocationInfo file_0 33 6 33 8.
  Definition loc_32 : location_info := LocationInfo file_0 32 6 32 8.
  Definition loc_33 : location_info := LocationInfo file_0 32 11 32 30.
  Definition loc_34 : location_info := LocationInfo file_0 32 27 32 30.
  Definition loc_35 : location_info := LocationInfo file_0 32 27 32 30.
  Definition loc_36 : location_info := LocationInfo file_0 32 28 32 30.
  Definition loc_37 : location_info := LocationInfo file_0 32 28 32 30.
  Definition loc_38 : location_info := LocationInfo file_0 31 6 31 8.
  Definition loc_39 : location_info := LocationInfo file_0 31 11 31 30.
  Definition loc_40 : location_info := LocationInfo file_0 31 27 31 30.
  Definition loc_41 : location_info := LocationInfo file_0 31 27 31 30.
  Definition loc_42 : location_info := LocationInfo file_0 31 28 31 30.
  Definition loc_43 : location_info := LocationInfo file_0 31 28 31 30.
  Definition loc_44 : location_info := LocationInfo file_0 38 9 38 17.
  Definition loc_45 : location_info := LocationInfo file_0 38 9 38 11.
  Definition loc_46 : location_info := LocationInfo file_0 38 9 38 11.
  Definition loc_47 : location_info := LocationInfo file_0 38 15 38 17.
  Definition loc_48 : location_info := LocationInfo file_0 38 15 38 17.
  Definition loc_49 : location_info := LocationInfo file_0 27 28 27 54.
  Definition loc_50 : location_info := LocationInfo file_0 27 52 27 54.
  Definition loc_51 : location_info := LocationInfo file_0 27 52 27 54.
  Definition loc_54 : location_info := LocationInfo file_0 26 28 26 54.
  Definition loc_55 : location_info := LocationInfo file_0 26 52 26 54.
  Definition loc_56 : location_info := LocationInfo file_0 26 52 26 54.

  (* Definition of function [strcmp]. *)
  Definition impl_strcmp : function := {|
    f_args := [
      ("p1", void*);
      ("p2", void*)
    ];
    f_local_vars := [
      ("s2", void*);
      ("s1", void*);
      ("c1", it_layout u8);
      ("c2", it_layout u8)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        "s1" <-{ PtrOp }
          LocInfoE loc_54 (UnOp (CastOp $ PtrOp) (PtrOp) (LocInfoE loc_55 (use{PtrOp} (LocInfoE loc_56 ("p1"))))) ;
        "s2" <-{ PtrOp }
          LocInfoE loc_49 (UnOp (CastOp $ PtrOp) (PtrOp) (LocInfoE loc_50 (use{PtrOp} (LocInfoE loc_51 ("p2"))))) ;
        locinfo: loc_5 ;
        Goto "#2"
      ]> $
      <[ "#1" :=
        locinfo: loc_44 ;
        if{IntOp i32, None}: LocInfoE loc_44 ((LocInfoE loc_45 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_45 (use{IntOp u8} (LocInfoE loc_46 ("c1")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_47 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_47 (use{IntOp u8} (LocInfoE loc_48 ("c2")))))))
        then
        locinfo: loc_5 ;
          Goto "#2"
        else
        locinfo: loc_6 ;
          Goto "#3"
      ]> $
      <[ "#2" :=
        locinfo: loc_14 ;
        LocInfoE loc_38 ("c1") <-{ IntOp u8 }
          LocInfoE loc_39 (UnOp (CastOp $ IntOp u8) (IntOp u8) (LocInfoE loc_40 (use{IntOp u8} (LocInfoE loc_42 (!{PtrOp} (LocInfoE loc_43 ("s1"))))))) ;
        locinfo: loc_15 ;
        LocInfoE loc_32 ("c2") <-{ IntOp u8 }
          LocInfoE loc_33 (UnOp (CastOp $ IntOp u8) (IntOp u8) (LocInfoE loc_34 (use{IntOp u8} (LocInfoE loc_36 (!{PtrOp} (LocInfoE loc_37 ("s2"))))))) ;
        locinfo: loc_16 ;
        LocInfoE loc_31 ("s1") <-{ PtrOp }
          LocInfoE loc_16 ((LocInfoE loc_16 (use{PtrOp} (LocInfoE loc_31 ("s1")))) at_offset{it_layout u8, PtrOp, IntOp i32} (LocInfoE loc_16 (i2v 1 i32))) ;
        locinfo: loc_17 ;
        LocInfoE loc_30 ("s2") <-{ PtrOp }
          LocInfoE loc_17 ((LocInfoE loc_17 (use{PtrOp} (LocInfoE loc_30 ("s2")))) at_offset{it_layout u8, PtrOp, IntOp i32} (LocInfoE loc_17 (i2v 1 i32))) ;
        locinfo: loc_26 ;
        if{IntOp i32, None}: LocInfoE loc_26 ((LocInfoE loc_27 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_27 (use{IntOp u8} (LocInfoE loc_28 ("c1")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_29 (i2v 0 i32)))
        then
        locinfo: loc_19 ;
          Goto "#4"
        else
        Goto "#5"
      ]> $
      <[ "#3" :=
        locinfo: loc_6 ;
        Return (LocInfoE loc_7 ((LocInfoE loc_8 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_8 (use{IntOp u8} (LocInfoE loc_9 ("c1")))))) -{IntOp i32, IntOp i32} (LocInfoE loc_10 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_10 (use{IntOp u8} (LocInfoE loc_11 ("c2"))))))))
      ]> $
      <[ "#4" :=
        locinfo: loc_19 ;
        Return (LocInfoE loc_20 ((LocInfoE loc_21 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_21 (use{IntOp u8} (LocInfoE loc_22 ("c1")))))) -{IntOp i32, IntOp i32} (LocInfoE loc_23 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_23 (use{IntOp u8} (LocInfoE loc_24 ("c2"))))))))
      ]> $
      <[ "#5" :=
        Goto "#1"
      ]> $∅
    )%E
  |}.
End code.
