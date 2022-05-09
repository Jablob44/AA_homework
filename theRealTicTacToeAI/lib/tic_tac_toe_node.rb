require_relative 'tic_tac_toe'
require "byebug"

class TicTacToeNode

  attr_reader :board, :next_mover_mark, :prev_move_pos

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
    if board.over?
      return false if board.winner == evaluator || board.winner == nil
      return true if board.winner != evaluator
    end
 
    if evaluator == self.next_mover_mark
      children.all? {|child| child.losing_node?(evaluator)}
    else
      children.any? {|child| child.losing_node?(evaluator)}
    end
  end

  def winning_node?(evaluator)
    if board.over?
      return true if evaluator == board.winner
      return false if board.winner != evaluator
    end
    if evaluator == self.next_mover_mark
      children.any? {|child| child.winning_node?(evaluator)}
    else
      children.all? {|child| child.winning_node?(evaluator)}
    end
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    moves = []
    board.rows.each_with_index do |row, i|
      row.each_with_index do |ele, j|
        if board.empty?([i, j])
          next_mark = nil
          if next_mover_mark == :x
            next_mark = :o
          else
            next_mark = :x
          end
          new_rows = deep_dup(board.rows)
          new_board = Board.new(new_rows)
          new_board[[i, j]] = next_mover_mark
          moves << TicTacToeNode.new(new_board, next_mark, [i, j])
        end
      end
    end
    moves
  end
end

def deep_dup(arr)
  arr.map do |ele|
    if ele.is_a?(Array)
      deep_dup(ele)
    else
      ele
    end
  end
end