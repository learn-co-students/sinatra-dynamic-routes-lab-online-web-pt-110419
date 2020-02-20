require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
 get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  
 get '/square/:number' do 
   @number = params[:number].to_i**2 
   "#{@number}"
 end 
 
 get '/say/:number/:phrase' do 
   string = ""
   @times = params[:number].to_i
   @phrase = params[:phrase]
   @times.times {string += "#{@phrase}\n"}
   string
 end 
 
 get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  
 end
 
 get '/:operation/:number1/:number2' do 
   @operation = params[:operation]
   @number1 = params[:number1].to_i
   @number2 = params[:number2].to_i
   
   case @operation 
    when "add"
      @answer = @number1 + @number2
      "#{@answer}"
    when "subtract"
      @answer = @number1 - @number2
      "#{@answer}"
    when "multiply"
      @answer = @number1 * @number2
      "#{@answer}"
    when "divide"
      @answer = @number1/@number2
      "#{@answer}"
    end
  end 
    
#   case @status
# @_out_buf.concat "\n "
# when "foo"
# @_out_buf.concat "\n It's a FOO!\n "
# when "bar"
# @_out_buf.concat "\n It's a BAR!\n "
# else
# @_out_buf.concat "\n It's something else...!\n "
# end
   
   
 
 
 
end