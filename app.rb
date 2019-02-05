require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get '/reversename/:name' do
  @name = params[:name]
  @reversename = @name.reverse
 @reversename
end

get '/square/:number' do
  @num = params[:number].to_i
  @square = @num * @num
  "#{@square}"
end

get '/say/:number/:phrase' do
  @times = params[:number].to_i
  @phrase = params[:phrase]
  @array = []
  @times.times {@array << @phrase}


end


end
