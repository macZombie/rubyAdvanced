
=begin
class Array

	def iterate!
	
		self.each_with_index do | n, i |
			self[i] = yield(n)
		end
		
	end
		
end
=end
	
	
=begin	
class Array

	def iterate!(&code)

		self.each_with_index do |n, i|
		
			self[i] = code.call(n)
    
		end
  
	end

end
=end
	
class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end		

myArray = Array.new
myOtherArray = Array.new

myArray = [ 1,2,3,4,5,6,7,8,9 ]
myOtherArray = [ 9,8,7,6,5,4,3,2,1 ]



puts myArray.inspect
puts myOtherArray.inspect


square = Proc.new do |n| 
	n ** 2
end

dub = Proc.new do |n|
	n * 2 
end



myArray.iterate!(square)
myOtherArray.iterate!(square)

puts myArray.inspect
puts myOtherArray.inspect

myArray.iterate!(dub)
myOtherArray.iterate!(dub)

puts myArray.inspect
puts myOtherArray.inspect



=begin
# This block iterates through each element in myArray performing the ** 
# operation.

myArray.iterate! do |n| 
	
	n ** 2
	
end


puts myArray.inspect
puts myOtherArray.inspect



myArray.iterate! do |n| 
	
	n - 1
	
end

puts myArray.inspect
puts myOtherArray.inspect

=end


