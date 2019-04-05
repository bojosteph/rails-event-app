class EventsController < ApplicationController

    before_action :confirm_logged_in

    def index
        @events = Event.all
    end

       
    def show 
        @event = Event.find(params[:id])
    end

    def new 
        @event = Event.new 
    end

    def create 
        @event = Event.new(event_params(:name, :date, :location, :description, :user_id))

        if @event.save 
            redirect_to event_path(@event)
        else 
            render :new 
        end
    end

    def edit 
        @event = Event.find(params[:id])
    end

    def update 
        @event = Event.find(params[:id])
        if @event.update(event_params(:name, :date, :location, :description, :user_id))
            redirect_to event_path(@event)
        else
            render :edit 
        end
    end

    def destroy
        Event.find(params[:id]).delete
        redirect_to events_path
    end

    private 

    def event_params(*args)
        params.require(:event).permit(*args)
    end

    

end

