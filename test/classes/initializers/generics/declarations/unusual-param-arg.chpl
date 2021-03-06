// Exercises basic declarations of instantiations.  Here, the type creator has
// declared an initializer with an argument for the param field that won't just
// use the argument for the field directly but will instead do something
// different depending on what that argument is.
class Foo {
  param p;

  proc init(param pVal: int) where (pVal <= 10) {
    p = 10;
  }

  proc init(param pVal: int) where (pVal > 10) {
    p = pVal;
  }
}

var foo: borrowed Foo(10)?;
var foo2: borrowed Foo(14)?;
var foo3: borrowed Foo(7)?;
writeln(foo3.type == foo.type);
writeln(foo.type:string);
writeln(foo2.type:string);
writeln(foo3.type:string);
