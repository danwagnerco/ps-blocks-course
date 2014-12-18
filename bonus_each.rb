class Array
  def my_each
    i = 0
    while i < self.size
      puts "Yielding #{i}..."
      yield self[i]
    end
    self
  end
end

weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
weekdays.each { |day| puts day }
