class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate!(lambda { |n| n ** 2 })

puts array.inspect



def args(code)
  one, two = 1, 2
  code.call(one, two)
end

# proc doesn't care about extra argument
args(Proc.new{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

#lambda barfs at extra argument
args(lambda{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})
