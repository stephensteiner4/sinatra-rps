require "sinatra"
require "sinatra/reloader"

get("/") do
  
  erb(:homepage)

end

get("/scissors") do
  moves = ["rock", "scissors", "paper"]

  @comp_move = moves.sample

  if @comp_move == "paper"
    @outcome = "won"
  elsif @comp_move == "scissors"
    @outcome = "tied"
  else
    @outcome = "lost"
  end

  erb(:scissors)
end

get("/rock") do
  moves = ["rock", "scissors", "paper"]

  @comp_move = moves.sample

  if @comp_move == "paper"
    @outcome = "lost"
  elsif @comp_move == "scissors"
    @outcome = "won"
  else
    @outcome = "tied"
  end

erb(:rock)
end

get("/paper") do
  moves = ["rock", "scissors", "paper"]

  @comp_move = moves.sample

  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:paper)
end
