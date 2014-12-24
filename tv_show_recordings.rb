class Show
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name.to_s
  end
end

show1 = Show.new("Squidbillies")
show2 = Show.new("Aqua Teen Hunger Force")
show3 = Show.new("How I Met Your Mother")
show4 = Show.new("New Girl")

class TVShowRecordings
  def initialize(name)
    @name = name
    @shows = []
  end

  def record_show(show)
    @shows << show
  end

  def each
    @shows.each { |s| yield s }
  end
end

queue = TVShowRecordings.new("Documentaries")
queue.record_show(show1)
queue.record_show(show4)

queue.each { |show| puts show }
