require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base


   get '/reversename/:name' do
     @name = params[:name]
     "#{@name.reverse}"
   end

   get '/square/:number' do
     @num = params[:number].to_i
     "#{@num * @num}"
   end

   get '/say/:number/:phrase' do
     @num = params[:number].to_i
     @phrase = params[:phrase]
     "#{@phrase * @num}"
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
     @sentence = params.values.join(" ")
     "#{@sentence}."
   end

   get '/:operation/:number1/:number2' do
     @num1 = params[:number1].to_i
     @num2 = params[:number2].to_i
     if params[:operation] == "add"
       @results = @num1 + @num2
     elsif params[:operation] == "subtract"
       @results = @num1 - @num2
     elsif params[:operation] == "multiply"
       @results = @num1 * @num2
     elsif params[:operation] == "divide"
       @results = @num1 / @num2
     end

     "#{@results}"
   end

end
