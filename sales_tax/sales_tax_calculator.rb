class SalesTaxCalculator
  
  def initialize
    @total = 0.00
    @tax = 0.00
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
    @tax = (0.05 * item.first.to_i * item.last.to_f)
    cost = cost + @tax
    return sales_tax(cost, item) unless is_tax_exempt?(item)
    reciept(item, cost)
  end

  def sales_tax(cost, item)
    @tax = @tax + (0.1 * item.first.to_i * item.last.to_f)
    cost = cost + @tax
    reciept(item, cost)
  end

  def product_cost(item_cost)
    item_cost = item_cost.round(2)
    item_cost
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
    puts "Total: #{@total}"
  end

  def total_tax
    @tax = @tax.round(2)
    puts "Sales Taxes: #{@tax}"
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
purchase.total_tax
purchase.total_cost