module MyEnumerable

  def my_map
    new_array = []
    each do |value|
      new_array << yield(value)
    end
    return new_array
  end

  def my_select
    new_array = []
    each do |value|
      new_array << value if yield(value)
    end
    return new_array
  end

  def my_reject
    new_array = []
    each do |value|
      new_array << value unless yield(value)
    end
    return new_array
  end

  def my_detect
    each do |value|
      return value if yield(value)
    end
  end

  def my_any?
    each do |value|
      return true if yield(value)
    end
  end

  def my_reduce(init)
    accumulator = init.to_i
    each do |value|
      accumulator = yield(accumulator, value)
    end
    return accumulator
  end

end
