class JankenGame
  def initialize(display, rule)
    @display = display
    @rule = rule
  end

  def play(left_hand, right_hand)
    result = @rule.judge(left_hand, right_hand)
    @display.show result
  end
end

class JapaneseDisplay
  def show(result)
    if result == 1
      puts "勝ち"
    elsif result == 0
      puts "引き分け"
    else
      puts "負け"
    end
  end
end

class EnglishDisplay
  def show(result)
    if result == 1
      puts "win"
    elsif result == 0
      puts "draw"
    else
      puts "lose"
    end
  end
end

class NormalRule
  def judge(left_hand, right_hand)
    if left_hand == 0 # Goo
      if right_hand == 0 # Goo
        return 0
      elsif right_hand == 1 # Choki
        return 1
      else # Par
        return -1
      end
    elsif left_hand == 1 # Choki
      if right_hand == 0 # Goo
        return -1
      elsif right_hand == 1 # Choki
        return 0
      else # Par
        return 1
      end
    else # Par
      if right_hand == 0 # Goo
        return 1
      elsif right_hand == 1 # Choki
        return -1
      else # Par
        return 0
      end
    end
  end
end

class ReverseRule
  def judge(left_hand, right_hand)
    if left_hand == 0 # Goo
      if right_hand == 0 # Goo
        return 0
      elsif right_hand == 1 # Choki
        return -1
      else # Par
        return 1
      end
    elsif left_hand == 1 # Choki
      if right_hand == 0 # Goo
        return 1
      elsif right_hand == 1 # Choki
        return 0
      else # Par
        return -1
      end
    else # Par
      if right_hand == 0 # Goo
        return -1
      elsif right_hand == 1 # Choki
        return 1
      else # Par
        return 0
      end
    end
  end
end


display = JapaneseDisplay.new
rule = NormalRule.new
game = JankenGame.new(display, rule)
game.play(0, 2)
game.play(1, 2)
game.play(2, 2)

display = EnglishDisplay.new
rule = ReverseRule.new
game = JankenGame.new(display, rule)
game.play(0, 2)
game.play(1, 2)
game.play(2, 2)
