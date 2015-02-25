defmodule AplusB do
    def add() do
        input1 = IO.gets(":>")
        input String.split(input1, " ", parts: 2)
        IO.puts(hd(input))
        IO.puts(tl(input))
    end
end