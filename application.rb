class Application
  attr_accessor :environment

  def initialize
    @environment = :development
  end

  def connect_to_database
    puts "Connecting to #{@environment} database..."
  end

  def handle_request
    puts "Handling #{@environment} request..."
  end

  def write_to_log
    puts "Writing to #{@environment} log file..."
  end

  def in_environment(new_environment)
    @environment = new_environment.to_sym
    yield if block_given?
  rescue Exception => e
    puts "Caught exception with message #{e.message}"
  ensure
    @environment = :development
    puts "Reset environment to #{@environment}"
  end
end

app = Application.new

# app.connect_to_database
# app.handle_request
# app.write_to_log

# app.in_production do
#   app.connect_to_database
#   app.handle_request
#   app.write_to_log
# end

# app.in_production do
#   app.connect_to_database
#   app.handle_request
#   raise "Boom!"
#   app.write_to_log
# end

app.in_environment(:production) do
  app.connect_to_database
  app.handle_request
  app.write_to_log
end

app.in_environment(:test) do
  app.connect_to_database
  app.handle_request
  app.write_to_log
end
