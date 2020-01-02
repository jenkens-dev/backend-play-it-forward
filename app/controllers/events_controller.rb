class EventsController < ApplicationController
    def index
        events = Event.all 
        render json: events, include: [:organization]
    end

    def show 
        event = Event.find(params[:id])
        render json: event, include: [:organization, :volunteers]
    end
end
