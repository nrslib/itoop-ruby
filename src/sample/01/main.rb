def play(left_hand, right_hand)
  result = judge(left_hand, right_hand)
  show_result result
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

def show_result(result)
  if result == 1
    puts "勝ち"
  elsif result == 2
    puts "引き分け"
  else
    puts "負け"
  end
end

play(1, 2)
