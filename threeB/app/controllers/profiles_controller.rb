class ProfilesController < ApplicationController
  #belongs_to :user


  def index
    @profiles = Profile.all
  end

  def show
    @user = User.find(params[:id])
    @profile = Profile.find(params[:id])
  end
  
  def new
    @profile = Profile.new
  end
  
  def create
    #@user = User.find(params[:user.id])
    @profile = Profile.new(profile_params)
    #@profile.id = @user.id
    #@profile.avatar.attach(params[:avatar])
    if (@profile.save)
      redirect_to '/welcome', notice: "Profile created sucessfully"
    else
      flash[:error] = "An error occured!"
      render 'new'
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end
  
  def update
    @profile = Profile.find(params[:id])
    #@user.avatar.attach(params[:avatar])
    
    if (@profile.update(profile_params))
      redirect_to @profile, notice: "Profile updated sucessfully" 
    else
      flash[:error] = "An error occured!"
      render 'edit'
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    
    redirect_to '/weclome', notice: "Profile deleted sucessfully"
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :date_of_birth, :location, :user_type)#, :avatar)
  end
end
