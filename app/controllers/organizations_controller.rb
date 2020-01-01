class OrganizationsController < ApplicationController
    def index 
        organization = Organization.all 
        render json: organization
    end
end
