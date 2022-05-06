class JankenGame
  # @param [String] lang ja:日本語,en:英語
  def play(left_hand, right_hand, lang)
    result = judge(left_hand, right_hand)
    show_result(result, lang)
  end

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

  def show_result(result, lang)
    if lang === "ja"
      # TODO: JapaneseDisplay を使おう
    else
      # TODO: EnglishDisplay を使おう
    end
  end
end

# TODO: JapaneseDisplay クラスを定義しよう

# TODO: EnglishDisplay クラスを定義しよう

game = JankenGame.new
game.play(1, 2, "ja")
game.play(1, 2, "en")
