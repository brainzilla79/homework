class Map
  def initialize
    @store = []
  end

  def assign(key, value)
    @store.each do |entry|
      if entry[0] == key
        entry[1] = value
        return [key, value]
      end
    end
    @store << [key, value]
  end
end
