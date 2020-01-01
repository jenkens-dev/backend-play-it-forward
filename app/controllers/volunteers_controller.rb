class VolunteersController < ApplicationController
    def create 
        @volunteer = Volunteer.new({username: params[:username]})
        if @volunteer.valid? 
            @volunteer.save
            render json: @volunteer
        end
    end
end
