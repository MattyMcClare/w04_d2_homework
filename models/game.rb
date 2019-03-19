class Game

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end

  def play()
    if @choice1 == @choice2
      return "It's a Tie"
    end
    if (@choice1 == "rock" && @choice2 == "scissors")
        return "Rock wins!"
    elsif (@choice1 == "rock" && @choice2 == "paper")
      return "Paper wins!"
    elsif (@choice1 == "scissors" && @choice2 == "paper")
      return "Scissors wins!"
    elsif (@choice1 == "scissors" && @choice2 == "rock")
      return "Rock wins!"
    elsif (@choice1 == "paper" && @choice2 == "rock")
      return "Paper wins!"
    elsif (@choice1 == "paper" && @choice2 == "scissors")
      return "Scissors wins!"
    else ((@choice1 || @choice2 != "rock") || (@choice1 || @choice2 != "paper") || (@choice1 || @choice2 != "scissors"))
      return "Error! Enter valid data: rock, paper or scissors"
    end
  end
end
