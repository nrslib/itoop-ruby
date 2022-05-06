def play(left_hand, right_hand)
  result = judge(left_hand, right_hand)
  show_result result
end

def judge(left_hand, right_hand)
  # TODO: 勝敗を判定して結果（1:勝ち, 2:引き分け, 3:負け）を返却しよう
  0
end

def show_result(result)
  # TODO: 結果をもとに勝敗を puts を使って表示しよう
  puts "結果を表示"
end

play(1, 2)
