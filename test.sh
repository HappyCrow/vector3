# extract test code then run it
\rm -f test.native
qtest -o test.ml extract vector3.ml
ocamlbuild test.native -pkgs vector3,oUnit,qcheck
./test.native
