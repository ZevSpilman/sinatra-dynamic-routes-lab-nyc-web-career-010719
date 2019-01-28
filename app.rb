require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    answer = ''
    @times = params[:number].to_i
    @times.times do
      answer += params[:phrase]
  end
  answer
end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    if op == "add"
      answer = num1 + num2
    elsif op == "subtract"
    answer = num1 - num2
  elsif op == "multiply"
    answer = num1 * num2
  elsif op == "divide"
    answer = num1 / num2
    end
    answer.to_s
  end


end #end of class
