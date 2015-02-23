defmodule Palindrome do
    
    def palin(start) do
        palin(start, start, start,0)
    end
    
    def palin(_, 0, _, current) do
        IO.puts(current)
    end
    
    def palin(start, number1, 0, current) do
        palin(start, number1 - 1, start, current)
    end
    
    
    def palin(start, number1, number2, current) do
        test = number1 * number2
        cond do
            ispalin(test) and test >= current ->
                palin(start, number1,number2-1,test)
            true ->
                palin(start, number1,number2-1,current)
        end
    end
    
    def ispalin(test) do
        string = to_string(test)
        string == String.reverse(string)
    end
    
end