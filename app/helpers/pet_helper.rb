helpers do
  
  def create_pet(pet)
    if current_user
      @pet = Pet.new(params[:pet])
      @pet.owner_id = @current_user.id

      if @pet.save
        redirect "/pets/#{@pet.id}"
      else
        errors(@pet)
        erb :'pets/new'
      end
    else
      erb :'sessions/new'
    end
  end


  def find_pet
    @pet = Pet.find(params[:id])
  end
end
