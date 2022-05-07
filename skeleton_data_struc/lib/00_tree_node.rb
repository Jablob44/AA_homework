class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(val)
        @parent = nil
        @children = []
        @value = val
    end

    def parent=(node)
        if @parent != nil
            @parent.children.delete(self)
        end
        @parent = node
        if @parent
            if !@parent.children.include?(self)
                @parent.children << self
            end
        end
    end
    
    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        raise "Not a child" if !children.include?(child_node)
        child_node.parent = nil
    end

    def dfs(target_value)
        return self if self.value == target_value
        return nil if self.children.length == 0

        children.each do |node|
            stack = node.dfs(target_value)
            if stack
                return stack
            end
        end
        nil
    end

    def bfs(target_value)
        queue = [self]
        while !queue.empty?
            return queue[0] if queue[0].value == target_value
            queue += queue[0].children
            queue.shift
        end
        return nil
    end
end