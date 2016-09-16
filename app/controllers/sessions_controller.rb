get '/sessions/new' do
  erb :'sessions/new'
end


post '/sessions' do
  create_session
end



# delete '/sessions/:id'
delete '/sessions' do
  logout 
  redirect '/'
end
