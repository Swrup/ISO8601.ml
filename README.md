# ISO8601

![Build Status](https://github.com/ocaml-community/ISO8601.ml/workflows/build/badge.svg)

ISO 8601 and RFC 3339 date parsing for OCaml.

**Work in progress. API should not be considerer stable
until 1.0.0 version.**

[API Docs](https://ocaml-community.github.io/ISO8601.ml/)

## Permissive module

Date, time, and datetime parsing function of this module are
much more permissive than ISO 8601 or RFC 3339 specifications.

Either basic and/or extended formats can be used for date and time,
and no consistency is required (it is possible to mix basic format for
date and extended format for time), lowercase letters can be used,
and datetime separator may be a space character.

For printing, `pp_date`, `pp_datetime`, `pp_datetimezone` should produce
strings conforming to the standard.

For example:

```ocaml
# let now = Unix.gettimeofday();;
val now : float = 1607446060.98364711
# let s = ISO8601.Permissive.string_of_datetime now;;
val s : string = "2020-12-08T16:47:40"
# ISO8601.Permissive.datetime s;;
- : float = 1607446060.
```


_NOTE_: for now, this module is the only one available.

## Installation

Via opam:

    opam install ISO8601

From sources:

    make build
    make install

## License

Distributed under the terms of [MIT license](LISENCE).
