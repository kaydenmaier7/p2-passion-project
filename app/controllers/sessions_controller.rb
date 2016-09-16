get '/sessions/new' do
  erb :'sessions/new'
end


post '/sessions' do
  create_session
end



# delete '/sessions/:id' do
delete '/sessions' do
  # session[:id] = nil
  logout 
  redirect '/'
end
