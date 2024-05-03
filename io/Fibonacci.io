Fibonacci := Object clone
Fibonacci init := method(x, n := x)
Fibonacci get := method(
    if(
        n < 2,
        1,
        left := Fibonacci clone(n - 1);
        right := Fibonacci clone(n - 2);
        (left get) + (right get)
    )
)
