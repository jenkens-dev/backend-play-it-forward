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
end
