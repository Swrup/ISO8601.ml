(lang dune 2.7)
(name ISO8601)

(generate_opam_files true)
(license MIT)
(authors "Julien Sagot")
(maintainers "c-cube" "ocaml-community")
(source
 (github ocaml-community/ISO8601.ml))

(package
 (name ISO8601)
 (synopsis "ISO 8601 and RFC 3999 date parsing for OCaml")
 (depends
   base-unix
   (ocaml (>= "4.03.0"))
   (stdlib-shims :with-test)
   (alcotest :with-test)
   (ounit2 :with-test)
   (bisect_ppx (and :with-test (>= "2.5") :dev))
   ))
