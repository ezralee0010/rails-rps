class ZebraController < ApplicationController
  def rules
    render({ :template => "game_templates/home_page"})
  end

  def giraffe
    @random_1_move = ["rock", "paper", "scissors"].sample

    if @random_1_move == "rock"
      @outcome_1 = "tied"
    elsif @random_1_move == "paper"
      @outcome_1 = "lost"
    else
      @outcome_1 = "won"
    end

    render({ :template => "game_templates/play_rock"})
  end

  def elephant
    @random_2_move = ["rock", "paper", "scissors"].sample

    if @random_2_move == "rock"
      @outcome_2 = "won"
    elsif @random_2_move == "paper"
      @outcome_2 = "tied"
    else
      @outcome_2 = "lost"
    end
    
    render({ :template => "game_templates/play_paper"})
  end

  def lion
    @random_3_move = ["rock", "paper", "scissors"].sample

    if @random_3_move == "rock"
      @outcome_3 = "lost"
    elsif @random_3_move == "paper"
      @outcome_3 = "won"
    else
      @outcome_3 = "tied"
    end
    
    render({ :template => "game_templates/play_scissors"})
  end
end
