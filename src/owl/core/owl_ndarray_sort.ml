(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2017 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

open Bigarray

open Owl_core_types


external owl_float32_sort : int -> ('a, 'b) owl_arr -> unit = "stub_float32_ndarray_sort"
external owl_float64_sort : int -> ('a, 'b) owl_arr -> unit = "stub_float64_ndarray_sort"
external owl_complex32_sort : int -> ('a, 'b) owl_arr -> unit = "stub_complex32_ndarray_sort"
external owl_complex64_sort : int -> ('a, 'b) owl_arr -> unit = "stub_complex64_ndarray_sort"
external owl_int8_sort : int -> ('a, 'b) owl_arr -> unit = "stub_int8_ndarray_sort"
external owl_uint8_sort : int -> ('a, 'b) owl_arr -> unit = "stub_uint8_ndarray_sort"
external owl_int16_sort : int -> ('a, 'b) owl_arr -> unit = "stub_int16_ndarray_sort"
external owl_uint16_sort : int -> ('a, 'b) owl_arr -> unit = "stub_uint16_ndarray_sort"
external owl_int32_sort : int -> ('a, 'b) owl_arr -> unit = "stub_int32_ndarray_sort"
external owl_int64_sort : int -> ('a, 'b) owl_arr -> unit = "stub_int64_ndarray_sort"

let _owl_sort : type a b. (a, b) kind -> int -> (a, b) owl_arr -> unit = function
  | Float32        -> owl_float32_sort
  | Float64        -> owl_float64_sort
  | Complex32      -> owl_complex32_sort
  | Complex64      -> owl_complex64_sort
  | Int8_signed    -> owl_int8_sort
  | Int8_unsigned  -> owl_uint8_sort
  | Int16_signed   -> owl_int16_sort
  | Int16_unsigned -> owl_uint16_sort
  | Int32          -> owl_int32_sort
  | Int64          -> owl_int64_sort
  | _              -> failwith "_owl_sort: unsupported operation"
