def progress
  if block_given?
    0.step(100, 10) do |i|
      yield i
    end
  end
end

progress { |percent| puts percent }
