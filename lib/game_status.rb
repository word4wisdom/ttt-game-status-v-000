
WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
  
]

 def position_taken?(board, index)
    !(board[index].nil? || board[index] == " ")
  end
  
  #WON?: CHECKS A BOARD AND RETURNS TRUE IF THERE IS A WIN 
  #AND FALSE IF NOT.
  #RETURN WINNING_COMBINATION AS AN ARRAY IF THERE IS A WINNING_COMBINATION.
  #RETURNS HOW THEY WON BY MEANS OF WINNING WINNING_COMBINATION
  #ITERATE OVER THE WIN_COMBINATIONS AND CHECK IF BOARD HAS 
  #THE SAME PLAYER TOKE IN EACH INDEX OF A WINNNING COMBINATIOn
  #expected a collection that can be converted to an array with `#to_ary` or `#to_a`, but got nil
  
    def won?(board)
      WIN_COMBINATIONS.each do |win_combination| 
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
     
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
      
        
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return win_combination
    end
  end
  return false
end


      
      
      
 