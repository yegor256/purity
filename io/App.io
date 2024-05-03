App := Object clone
App main := method(
    n,
    f := Fibonacci clone(n);
    r := f get;
    r print
)

n := System args at(1)
app := App clone
app main(n)
