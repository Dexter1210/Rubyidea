puts "Welcome to Tic Tac Toe!"
board=[["-","-","-"],["-","-","-"],["-","-","-"]]
#play(board)

def display_board(board)
    puts "#{board[0][0]} | #{board[0][1]} |#{board[0][2]}"
    puts "---------"
    puts "#{board[1][0]} | #{board[1][1]} |#{board[1][2]}"
    puts "---------"
    puts "#{board[2][0]} | #{board[2][1]} |#{board[2][2]}"
end

def input_to_index(user_input)
    user_input.to_i-1
end

def player_move(board,row,column,marker)
    board[row][column]=marker
end

def position_taken? (board,row,column)
    if board[row][column]=="-"
        return false
    else
        return true
    end
end

def valid_move?(board,row,column)
    if !position_taken?(board,row,column) && (row).between?(0,2) &&  (column).between?(0,2)
        return true
    else
        return false
    end
end

def current_player(board)
    turn_count(board)%2==0 ? "X" : "O"
end

def turn(board)
    puts "Please enter 1-9:"
    user_input=gets.strip
    index=input_to_index(user_input)
    if valid_move?(board,row,column)
        player_move(board,row,column,current_player(board))
        display_board(board)
    else
        turn(board)
    end
end

def turn_count(board)
    counter=0
    board.each{|space| 
    if space=="X" || space=="O"
        counter+=1
    end
    }
    counter
end

WIN_COMBINATIONS=[
    [[0][0],[0][1],[0][2]],
    [[1][0],[1][1],[1][2]],
    [[2][0],[2][1],[2][2]],
    [[0][0],[1][0],[2][0]],
    [[0][1],[1][1],[2][1]],
    [[0][2],[1][2],[2][2]],
    [[0][0],[1][1],[2][2]],
    [[0][2],[1][1],[2][0]]

]
    