# 2. Stacks & Queues: Explain the difference between a stack and a queue.
# Write a Ruby class called Stack and another Ruby class called Queue.
# Each class should have two instance methods `add` and `remove` to add an
# element to the stack or queue or to remove an element from the stack or
# queue. Make sure that each class behaves properly as per definitions of
# stacks and queues.

# The difference between Stacks and Queues are that stacked data structures
# are ontop of eachother and follow a last-in-first-out order while queue
# data structures are one after the other and follow a first-in-last-out order.
# For stacks we use pop and push to remove and and to arrays, while for queues
# we use pop and unshift to add and remove from arrays.

class Stack
  def initialize
    @store = Array.new
  end

  def pop
    @store.pop
  end

  def push(element)
    @store.push(element)
    self
  end

  def size
    @store.size
  end
end


class Queue
  def initialize
    @store = Array.new
  end

  def pop
    @store.pop
  end

  def unshift(element)
    @store.unshift(element)
    self
  end

  def size
    @store.size
  end
end
