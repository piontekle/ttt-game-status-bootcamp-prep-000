# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # mid row
  [6, 7, 8], # bot row
  [0, 3, 6], # left column
  [1, 4, 7], # mid column
  [2, 5, 8], # right column
  [0, 4, 8], # lft-rt diag
  [2, 4, 6]  # rt-lft diag
  ]
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
      if board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && board[win_combination[0]] != " "
        return win_combination
      end
      false
  end
end