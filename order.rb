class Order
  attr_reader :email, :total, :state, :status

  TAX_TABLE = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04 }
  
  def initialize(email, state, total, status=:pending)
    @email = email
    @state = state
    @total = total
    @status = status
  end

  def tax
    total * TAX_TABLE[state]
  end

  def to_s
    "#{email} (#{state}): $#{total} - #{status}"
  end

end

orders = []
orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AX", 400, :completed)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer4@example.com", "CO", 100, :completed)

# puts orders

puts "Big orders:"
puts orders.select { |o| o.total >= 300 }

puts "Small orders:"
puts orders.reject { |o| o.total >= 300 }

puts "Pending:"
puts orders.any? { |o| o.status == :pending }
