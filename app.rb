require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/' do 
    "This is my home"
  end
  
  get '/reversename/:name' do 
    @name = params[:name].to_s.reverse 
    "#{@name}"
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i 
    @square = @number ** 2 
    "#{@square}"
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i 
    @phrase = params[:phrase].to_s 
    @str = "" 
    n = 0 
    while n < @number do 
      @str << "#{@phrase}\n\n"
      n = n + 1 
    end 
    "#{@str}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1].to_s 
    @word2 = params[:word2].to_s 
    @word3 = params[:word3].to_s 
    @word4 = params[:word4].to_s 
    @word5 = params[:word5].to_s 
    @str = ""
    @str << @word1 + " "
    @str << @word2 + " "
    @str << @word3 + " "
    @str << @word4 + " "
    @str << @word5 +"."
    "#{@str}"
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_f 
    @number2 = params[:number2].to_f 
    case @operation 
    when "add"
      @result = @number2 + @number1
    when "multiply"
      @result = @number1 * @number2
    when "subtract"
      @result = @number1 - @number2 
    when "divide"
      @result = @number1 / @number2
    else 
    end 
    
    "#{@result}"
  end 

end