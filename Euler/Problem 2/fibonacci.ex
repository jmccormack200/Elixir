defmodule Fibonacci do
    
    def fibonacci(limit) do
        fibonacci(1, 1, limit, 0)
    end
    
    def fibonacci(last, next, limit, sum) when next <= limit do
        next_new = next + last
        cond do
            rem(next_new,2) == 0 ->
                fibonacci(next, next_new, limit, sum+next_new)
            true ->
                fibonacci(next, next_new, limit, sum)
        end
    end
    
    def fibonacci(_, _, _, sum) do
        IO.puts(sum)
    end
    
end