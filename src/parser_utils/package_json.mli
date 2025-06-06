(*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

type t

val empty : t

val create :
  name:string option ->
  main:string option ->
  haste_commonjs:bool ->
  exports:Package_exports.t option ->
  t

val name : t -> string option

val main : t -> string option

val haste_commonjs : t -> bool

val exports : t -> Package_exports.t option

val parse : node_main_fields:string list -> (Loc.t, Loc.t) Flow_ast.Expression.Object.t -> t
