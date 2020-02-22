require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    # binding.pry
    (params[:number].to_i ** 2).to_s
  end

   get '/say/:number/:phrase' do
    # binding.pry
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase} " * @number
   end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # binding.pry
    params[:word1] + " " + params[:word2] + " " +  params[:word3] + " " +  params[:word4] + " " +  params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    # binding.pry
    answer = ""
    if params[:operation] == "add"
     answer = params[:number1].to_i + params[:number2].to_i
     answer.to_s
    elsif params[:operation] == "subtract"
      answer = params[:number2].to_i - params[:number1].to_i
      answer.to_s
    elsif params[:operation] == "multiply"
      answer = params[:number2].to_i * params[:number1].to_i
      answer.to_s
    elsif params[:operation] == "divide"
      answer = params[:number1].to_i / params[:number2].to_i 
      answer.to_s
    end
  end

end