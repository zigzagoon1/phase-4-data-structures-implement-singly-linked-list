require_relative './node'

class LinkedList

    attr_accessor :head

    def initialize
        @head = nil
    end

    def prepend(new_head)
        old_head = @head
        @head = new_head
        @head.next_node = old_head
    end

    def append

    end

    def add_after

    end



end
