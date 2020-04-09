require 'devise'

class UsersController < ApplicationController
    include Devise
    
    def show
        redirect_to profiles_index_path
        # @user = User.find(params[:id])
        # @profile = Profile.find(params[:id])
        
        # @email = @user.email
        # @email_username = @email.match(/[^.*(?=@)]+@/) #e.g. the "johnsmith@" of "johnsmith@example.com"
        # @email_first_letter = @email.match(/^.{0,3}/) #e.g. the "joh" of "johnsmith@example.com"
        # @email_provider = @email.match(/@+[a-zA-Z0-9_.+-]+$/) #e.g. the "@example.com" of "johnsmith@example.com"
        

    end
    # Other defs managed by Devise
end
