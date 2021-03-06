module type IO = sig
  type 'a t
  val (>>=) : 'a t -> ('a -> 'b t) -> 'b t
  val return : 'a -> 'a t

  type file_descr

  type inet_addr

  val open_socket : inet_addr -> int -> file_descr t
  val close_socket : file_descr -> unit t

  val read : file_descr -> string -> int -> int -> int t
  val write : file_descr -> string -> int -> int -> int t

  val gethostbyname : string -> inet_addr list t

  val iter : ('a -> unit t) -> 'a list -> unit t
end
