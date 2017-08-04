class Map
  def initialize
    @store = []
  end

  def assign(key, value)
    @store.each do |entry|
      if entry[0] == key
        entry[1] = value
        return value
      end
    end
    @store << [key, value]
    value
  end

  def lookup(key)
    @store.each do |entry|
      return entry[1] if entry[0] == key
    end
    nil
  end

  def remove(key)
    value = self.lookup(key)
    @store = @store.reject { |entry| entry[0] == key }
    value
  end

  def show
    @store.dup
  end
end
