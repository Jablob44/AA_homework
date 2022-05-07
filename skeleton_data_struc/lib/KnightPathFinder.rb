require_relative "00_tree_node"

class KnightPathFinder

    def initialize(starting_pos)
        @starting_pos = starting_pos
        @considered_positions = [starting_pos]
        @root_node = PolyTreeNode.new(starting_pos)
        self.build_move_tree
    end

    def self.valid_moves(pos)
        valid = []
        y = pos[0]
        x = pos[1]
        possible = [
            [y + 2, x - 1], # up_left
            [y + 2, x + 1], # up_right
            [y - 2, x - 1], # down_left
            [y - 2, x + 1], # down_right 
            [y - 1, x - 2], # left_down
            [y + 1, x - 2], # left_up
            [y - 1, x + 2], # right_down
            [y + 1, x + 2]  # right_up
        ]
        possible.each do |move|
            if move[0] >= 0 && move[0] < 8 && move[1] >= 0 && move[1] < 8
                valid << move
            end
        end
        valid
    end

    def new_move_positions(pos)
        valid = KnightPathFinder.valid_moves(pos)
        valid_new = []
        valid.each do |move|
            if !@considered_positions.include?(move)
                valid_new << move
            end
        end
        valid_new
    end
    
    def build_move_tree()
        queue = [@root_node]
        while !queue.empty?
            moves = self.new_move_positions(queue[0].value)
            moves.each {|move| @considered_positions << move}
            move_nodes = moves.map{|move| PolyTreeNode.new(move)}
            queue += move_nodes
            move_nodes.each do |node|
                queue[0].add_child(node)
            end
            queue.shift
        end
    end
    
    def find_path(end_pos)
        node = @root_node.bfs(end_pos)
        trace_path_back(node)
    end

    def trace_path_back(node)
        path = []
        current_node = node
        while current_node.parent != nil
            path << current_node.value
            current_node = current_node.parent
        end
        path << current_node.value
        return path.reverse
    end
end