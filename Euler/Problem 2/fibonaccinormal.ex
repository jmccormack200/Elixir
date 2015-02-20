defmodule Fibonacci do
    
    def fib(0), do: 1
    def fib(1), do: 1
    def fib(n), do: fib(1, 1, n-2)
    def fib(_, prv,-1),do: prv
    
    def fib(prvprv, prv, n) do
        next = prv + prvprv
        fib(prv, next,n-1)
    end    
end