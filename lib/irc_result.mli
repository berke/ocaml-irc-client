(** Handling of results from operations which may fail. *)

type ('a, 'b) t = [
  | `Ok of 'a
  | `Error of 'b
]
(** A generic type representing the result of an operation which may fail. *)
