defmodule RockPaper do
    
    def rockpaper() do
        input = IO.gets("rock, paper, or scissors? :> ")
        player_choice = String.strip(input)
        computer_tuple = {:rock, :paper, :scissors}
        :random.seed(:erlang.now)
        computer_choice = elem(computer_tuple,(round(:random.uniform*3)-1))
        IO.puts(computer_choice)
        IO.puts(player_choice)
        rockpaper(computer_choice, player_choice)
    end
        
    def rockpaper(:rock, player_choice) do
        cond do 
            player_choice == "scissors" ->
                IO.puts("Computer wins")
            player_choice == "paper" ->
                IO.puts("Player wins")
            true ->
                IO.puts("Tie")
        end
    end
    
    def rockpaper(:paper, player_choice) do
        cond do 
            player_choice == "rock" ->
                IO.puts("Computer wins")
            player_choice == "scissors" ->
                IO.puts("Player wins")
            true ->
                IO.puts("Tie")
        end
    end
    
    def rockpaper(:scissors, player_choice) do
        cond do 
            player_choice == "rock" ->
                IO.puts("Computer wins")
            player_choice == "paper" ->
                IO.puts("Player wins")
            true ->
                IO.puts("Tie")
        end
    end
end