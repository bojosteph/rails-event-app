class RsvpEventsController < ApplicationController

    def index 
        @user = current_user
        @rsvp_events = RsvpEvent.where(user: @user)
    end

    def new 
        @rsvp_events = RsvpEvent.new
    end

    def create 
        @user = current_user
        @event = Event.find(params[:event_id])
        @rsvp_event = @user.rsvp_events.build(rsvp_event_params(event: @event))

        if @rsvp_event.save
            redirect_to rsvp_event_path(@rsvp_event)
        else 
            render :new 
        end
    end

    def show 
        @rsvp_event = RsvpEvent.find(params[:id])
    end
    
    

    private 

    def rsvp_event_params(*args)
        params.require(:event).permit(*args)
    end


end
