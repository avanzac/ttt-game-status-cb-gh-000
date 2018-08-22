

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # diagonal a
  [2,4,6] # diagonal b
]

def won?(board)
  WIN_COMBINATIONS.each do | win_combination |
    win_index_0 = win_combination[0]
    win_index_1 = win_combination[1]
    win_index_2 = win_combination[2]

    position_1 = board[win_index_0]
    position_2 = board[win_index_1]
    position_3 = board[win_index_2]

    position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1) #detect returns first element (position_1) & make sure position is taken (that it's either an X or O).

end
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board) [0]]
end
end
