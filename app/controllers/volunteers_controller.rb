class VolunteersController < ApplicationController
    def create 
        volunteer = Volunteer.new({username: params[:username]})
        if volunteer.valid? 
            volunteer.save
            render json: volunteer
        end
    end

    def login
        volunteer = Volunteer.find_by({username: params[:username]})
        if volunteer
            render json: volunteer
        end
    end
end
