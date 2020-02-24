require_relative 'config/environment'

class App < Sinatra::Base
 # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:num/:phrase' do
    @num = params[:num].to_i
    "#{@num}"
    @phrase = params[:phrase] + " "
    @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
    str
  end

  get '/:operation/:number1/:number2' do
    asmd = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    x = nil
    if asmd == "add"
      x = num1 + num2
    elsif asmd == "subtract"
      x = num1 - num2
    elsif asmd == "multiply"
      x = num1 * num2
    elsif asmd == "divide"
      x = num1 / num2
    else p "re-enter"
    end

    x.to_s
  end

end
