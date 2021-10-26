describe LinkedList do
  let(:linked_list) { LinkedList.new }

  describe ".new" do
    it "intializes a new singly linked list" do
      expect(linked_list.head).to eq(nil)
    end
  end

  describe "#prepend" do
    it "adds a node to the beginning of the list" do
      linked_list.prepend(Node.new(1))
      # 1
      expect(linked_list.head.value).to eq(1)
      
      linked_list.prepend(Node.new(2))
      # 2 -> 1
      expect(linked_list.head.value).to eq(2)
      expect(linked_list.head.next_node.value).to eq(1)
    end
  end

  describe "#append" do
    it "adds a node to the end of the list" do
      linked_list.append(Node.new(1))
      # 1
      expect(linked_list.head.value).to eq(1)
      
      linked_list.append(Node.new(2))
      # 1 -> 2
      expect(linked_list.head.value).to eq(1)
      expect(linked_list.head.next_node.value).to eq(2)
    end
  end

  describe "#delete_head" do
    it "removes the node at the beginning of the list" do
      linked_list.append(Node.new(1))
      linked_list.append(Node.new(2))
      # 1 -> 2
      linked_list.delete_head
      # 2
      expect(linked_list.head.value).to eq(2)
    end
  end

  describe "#delete_tail" do
    it "removes the node at the end of the list" do
      linked_list.append(Node.new(1))
      linked_list.append(Node.new(2))
      # 1 -> 2
      linked_list.delete_tail
      # 1
      expect(linked_list.head.value).to eq(1)      
      expect(linked_list.head.next_node.value).to eq(nil)      
    end
  end

  describe "#add_after" do
    it "adds a node in the middle of the linked list" do
      linked_list.append(Node.new(1))
      linked_list.append(Node.new(2))
      linked_list.append(Node.new(3))
      # 1 -> 2 -> 3
      linked_list.add_after(1, Node.new(2.5))
      # 1 -> 2 -> 2.5 -> 3   
      expect(linked_list.head.next_node.next_node.value).to eq(2.5)  
    end
  end

  describe "#search" do
    it "finds a node within the list" do
      linked_list.append(Node.new(1))
      linked_list.append(Node.new(2))
      linked_list.append(Node.new(3))
      # 1 -> 2 -> 3
      node = linked_list.search(2)
      expect(node.value).to eq(2)
    end
  end
end