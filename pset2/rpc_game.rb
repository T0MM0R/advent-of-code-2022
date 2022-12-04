class RpcGame
  FIRST_PLAYER = {
    A: 1, # rock
    B: 2, # paper
    C: 3  # scissors
  }.freeze

  SECOND_PLAYER = {
    X: 1, # rock
    Y: 2, # paper
    Z: 3  # scissors
  }.freeze

  WIN = 6
  DRAW = 3
  LOSS = 0

  attr_accessor :player1
  attr_accessor :player2
  attr_accessor :score
  attr_accessor :data
  attr_accessor :new_score

  def initialize(data)
    @data = data.split(' ')
    @player1 = FIRST_PLAYER.fetch(@data[0].to_sym)
    @player2 = SECOND_PLAYER.fetch(@data[1].to_sym)
    @score = play
    @new_score = new_play
  end

  def play
    return DRAW + @player2 if @player1 == @player2

    case @player2
    when 1
      play_rock
    when 2
      play_paper
    when 3
      play_scissors
    end
  end

  def play_rock
    return WIN + @player2 if @player1 == 3

    LOSS + @player2
  end

  def play_paper
    return WIN + @player2 if @player1 == 1

    LOSS + @player2
  end

  def play_scissors
    return WIN + @player2 if @player1 == 2

    LOSS + @player2
  end

  def new_play
    case @player2
    when 1 # lose
      lose
    when 2 # draw
      draw
    when 3 # win
      win
    end
  end

  def lose
    case @player1
    when 1
      LOSS + 3
    when 2
      LOSS + 1
    when 3
      LOSS + 2
    end
  end

  def draw
    DRAW + @player1
  end

  def win
    case @player1
    when 1
      WIN + 2
    when 2
      WIN + 3
    when 3
      WIN + 1
    end
  end
end
