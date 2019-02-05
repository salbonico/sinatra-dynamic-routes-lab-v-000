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

get 'say/:word1/word2/word3/word4/word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{word1} #{word2} #{word3} #{word4} #{word5}."
end


get '/say/:number/:phrase' do
  @times = params[:number].to_i
  @phrase = params[:phrase]
  @array = []
  @times.times do
    @array << @phrase
  end
@array.each do |phrase|
  phrase
end
end




end
