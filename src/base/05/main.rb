class JankenGame
  # @param [String] lang ja:日本語,en:英語
  # @param [String] rule_name default:通常ルール,reverse:あべこべルール
  def play(left_hand, right_hand, lang, rule_name)
    # TODO: ルールを使うように書き換えよう
    result = judge(left_hand, right_hand)
    display = get_display lang
    display.show result
  end

  def judge(left_hand, right_hand)
    if left_hand == 0 # Goo
      if right_hand == 0 # Goo
        return 2
      elsif right_hand == 1 # Choki
        return 1
      else # Par
        return 3
      end
    elsif left_hand == 1 # Choki
      if right_hand == 0 # Goo
        return 3
      elsif right_hand == 1 # Choki
        return 2
      else # Par
        return 1
      end
    else # Par
      if right_hand == 0 # Goo
        return 1
      elsif right_hand == 1 # Choki
        return 3
      else # Par
        return 2
      end
    end
  end

  def get_display(lang)
    if lang === "ja"
      JapaneseDisplay.new
    else
      EnglishDisplay.new
    end
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

game = JankenGame.new
game.play(1, 2, "ja", "default")
game.play(1, 2, "en", "reverse")
