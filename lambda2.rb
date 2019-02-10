def generic_return(code)
  code.call
  return "generic_return method finished"
end

#puts generic_return(Proc.new { return "Proc.new" }) ; error due to unexpected return, a Proc can't have a return.
puts generic_return(lambda { return "lambda" })