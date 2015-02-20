=begin
  Kazushi Kawamura
  Homework 1
  February 13th 2015
=end
class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # raise no strategy error if the parameter is not R, P or S
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless (player1[1] + player2[1]) =~ /^[RSP]{2}/i
    
    strategy = {"R" => 0, "S" => 1, "P" => 2}
    # -1 or 2 -> player1 victory
    # 1 or -2 -> player2 victory
    # 0       -> draw
    victory = strategy[player1[1].upcase] - strategy[player2[1].upcase]
    
    # return the winner according to the victory's value
    # and return player1 if it is draw
    if victory == -1 || victory == 2
      return player1
    elsif victory == 1 || victory == -2
      return player2
    else
      return player1 
    end
  end

  def self.tournament_winner(tournament)
    # if the tournament array is one dimensional array and contains only 
    # one players info return it
    return tournament if tournament[0][0].length == 1 
    # make the multi-dimensional array in to half?
    left = tournament[0]
    right = tournament[1]

    # recursion
    left = tournament_winner(left)
    right = tournament_winner(right)
    tournament = winner(left, right)

    return winner(left, right)
  end

end
