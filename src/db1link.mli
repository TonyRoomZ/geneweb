(* $Id: db1link.mli,v 5.1 2008-01-14 16:04:10 ddr Exp $ *)
(* Copyright (c) 2007-2008 INRIA *)

type file_info =
  { f_curr_src_file : mutable string;
    f_curr_gwo_file : mutable string;
    f_separate : mutable bool;
    f_shift : mutable int;
    f_local_names : mutable Hashtbl.t (int * int) Def.iper }
;

value particules_file : ref string;
value do_check : ref bool;

value default_source : ref string;
value pr_stats : ref bool;
value do_consang : ref bool;

value link : (file_info -> unit -> option Gwcomp.gw_syntax) -> string -> bool;