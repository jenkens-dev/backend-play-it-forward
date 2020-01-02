class VolunteersController < ApplicationController
    def create 
        volunteer = Volunteer.new({username: params[:username]})
        if volunteer.valid? 
            volunteer.save
            render json: volunteer
        end
    end

    def show 
        volunteer = Volunteer.find(params[:id])
        render json: volunteer, include: [:events]
    end

    def login
        volunteer = Volunteer.find_by({username: params[:username]})
        if volunteer
            render json: volunteer
        end
    end

    def destroy 
        volunteer = Volunteer.find(params[:id])
        volunteer.destroy
        render json: Volunteer.all
    end
end
