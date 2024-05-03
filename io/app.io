App := Object clone
App main := method(
    n,
    f := Fibonacci;
    r := f get;
    r print
)

n := System at(1)
app := App clone
app main(n)