=begin
Gustavo Rodrigues Cayres Silva, nº 8584323
Pedro Marcondes, nº 8941168
=end

class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError; end

  def self.winner(player1, player2)
  	regex = /^[PRS]$/
	if player1[1].match(regex) == nil
		raise NoSuchStrategyError, "Strategy must be one of R,P,S"
	end
	if player2[1].match(regex) == nil
		raise NoSuchStrategyError, "Strategy must be one of R,P,S"
	end
  	if player1[1] == "R" and player2[1] != "P"
		return player1
  	elsif player1[1] == "P" and player2[1] != "S"
		return player1
  	elsif player1[1] == "S" and player2[1] != "R"
		return player1
  	else
		return player2
  	end    
  end

  def self.is_a_game?(game)
  	return game[0][0].is_a?(String)
  end

  def self.tournament_winner(tournament)
  	if is_a_game?(tournament)
  		return winner(tournament[0], tournament[1])
  	else
  		tournamentaux = []
  		tournament.each do |game|
  			if is_a_game?(game)
  				tournamentaux << winner(game[0],game[1])
  			else
  				tournamentaux << tournament_winner(game)
  			end
  		end
	end
	tournament_winner(tournamentaux)
  end

end
