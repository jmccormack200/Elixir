defmodule 3and5 do

    def solution(number) do
        solution(number, 0)
    end
    
    def solution(number, sum) do
        cond do
            rem(number,3) == 0 ->
                solution(number - 1, sum+number)
            rem(number,5) == 0 ->
                solution(number - 1, sum+number)
            true ->
                solution(number - 1, sum)
        end
    end
    
    def solution(0, sum) do
        IO.puts(sum)
    end
end