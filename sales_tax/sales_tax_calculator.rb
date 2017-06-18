class SalesTaxCalculator
  
  def initialize
    @total = 0.00
  end

  def is_tax_exempt?(item)
    return true if item.include? 'food'
    return true if item.include? 'medical'
    return true if item.include? 'book'
  end

  def is_imported?(item)
    item.include? 'imported'
  end

  def calculate_tax(item)
    product_cost = item.first.to_f * item.last.to_f
    return import_tax(product_cost, item) if is_imported?(item)
    return sales_tax(product_cost, item) unless is_tax_exempt?(item)
    reciept(item, product_cost)
  end

  def import_tax(cost, item)
    cost = cost + (0.05 * item.first.to_i * item.last.to_f)
    reciept(item, cost)
  end

  def sales_tax(cost, item)
    cost = cost + (0.1 * item.first.to_i * item.last.to_f)
    return import_tax(item) if is_imported?(item)
    reciept(item, cost)
  end

  def product_cost(item_cost)
    value = 1 / 0.05
    item_cost = (item_cost * value).ceil * 0.05
    print " : #{item_cost}"
    print "\n"
    total(item_cost)
  end

  def reciept(item, item_cost)
    item.each do |e|
      return product_cost(item_cost) if e == 'at'
      print e
    end
  end

  def total(item_cost)
    @total = @total + item_cost
  end

  def total_cost
    puts "Total cost is #{@total}"
  end

end

purchase = SalesTaxCalculator.new
products = []
input = gets.chomp
while input != ''
  products << input
  input = gets.chomp
end
products.each do |product|
  purchase.calculate_tax(product.split)
end
purchase.total_cost