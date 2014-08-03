module GschoolEnumerable

  def g_each
    for item in self
      yield(item)
    end
    self
  end

  def g_select
    ary = []
    self.g_each do |item|
      if yield(item)
        ary << item
      end
    end
    ary
  end

  def g_reject
    ary = []
    self.g_each do |item|
      unless yield(item)
        ary << item
      end
    end
    ary
  end

  def g_map
    ary = []
    self.g_each do |item|
      ary << yield(item)
    end
    ary
  end

  def g_find
    ary = []
    self.g_each do |item|
      if yield(item)
        ary << item
      end
    end
    ary[0]
  end

  def g_select!
    self.g_each do |a|
      self.delete(a)
    end
  end
end










