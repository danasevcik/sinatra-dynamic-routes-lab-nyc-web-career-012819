require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    str = ""
    (params[:number].to_i).times do
      str += "#{params[:phrase]}"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = ""
    str += "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    str
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == 'add'
      ans = (num1 + num2).to_s
    elsif op == 'subtract'
      ans = (num1 - num2).to_s
    elsif op == 'divide'
      ans = (num1 / num2).to_s
    elsif op == 'multiply'
      ans = (num1 * num2).to_s
    end
  end

end
