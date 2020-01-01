class OrganizationsController < ApplicationController
    def index 
        organization = Organization.all 
        render json: organization
    end

    def create 
        @organization = Organization.new({username: params[:username]})
        if @organization.valid? 
            @organization.save
            render json: @organization
        end
    end

    def show 
        @organization = Organization.find(params[:id])
        render json: @organization, include: [:events]
    end

    def login
        @organization = Organization.find_by({username: params[:username]})
        if @organization
            render json: @organization
        end
    end
end
