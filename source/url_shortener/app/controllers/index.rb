get '/' do
  @smurls = Smurl.all
  erb :index
end

post '/smurls' do
  @smurl = Smurl.create(l_url: params[:l_url])
  p @smurl.errors
  if @smurl.errors.empty?
    redirect '/'
  else
    erb :error
  end
end

# e.g., /q6bda
get '/smurls/:short_url' do
  @smurl = Smurl.find_by(s_url: params[:short_url])
  @smurl.clicked
  redirect "#{@smurl.l_url}"
end
