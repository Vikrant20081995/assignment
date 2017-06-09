class Pyramid
  
  def prnt(i,j)
    return " " if j > i
    "* "
  end
  
  def iterate(height) 
    return puts "enter valid height" if height <= 0
    (1..height).each do |i|
      (height).downto(1) do |j|
        print prnt(i,j)
      end
      print "\n"
    end
  end

end

puts "Enter height of pyramid"
height = gets.chomp.to_i
pyramid = Pyramid.new
pyramid.iterate(height)