require 'bundler/setup'
require 'sinatra'

class BookReview < Sinatra::Base

  get '/form' do
    erb :form
  end

  post '/submit' do
    @name = params[:name]
    @title = params[:title] 
    @review = params[:review]
    @age = params[:age]
    erb :result
  end

end

BookReview.run! if __FILE__ == $0 #only run if invoked from command line - otherwise leave to Capybara
