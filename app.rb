require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
  "hello world"
end

  get '/reversename/:name' do
  params[:name].reverse
end


get '/square/:number' do
  square = params[:number]
    (square.to_i**2).to_s
 end

 get '/square/:number' do
   square = params[:number]
     (square.to_i**2).to_s
  end

  get '/square/:number' do
    square = params[:number]
      (square.to_i**2).to_s
   end

   get '/say/:number/:phrase' do
    phrase = ""
    number= params[:number].to_i
    number.times do
    phrase += "#{params[:phrase]}\n"
    end
    phrase
    end


    get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    words
     end


     get '/:operation/:number1/:number2' do
     num1 = params[:number1].to_i
     num2 = params[:number2].to_i
     answer = "unable to perform this ops"
     if params[:operation] == 'add'
       answer = num1 + num2
     elsif params[:operation] == 'subtract'
       answer = num2 - num1
     elsif  params[:operation] == 'multiply'
       answer = num1 * num2
     elsif  params[:operation] == 'divide'
       answer = num1 / num2
     end
      answer

     end







end
