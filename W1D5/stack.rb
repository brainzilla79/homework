class Stack
  def initialize
    @store = []
  end

  def add(el)
    @store << el
    el
  end

  def remove
    @store.pop
  end

  def show
    @store.dup
  end

end
