class RsvpEventsController < ApplicationController

    def index 
        @rsvp_events = RsvpEvent.all
    end

    def rsvp_event
        @rsvp_event = RsvpEvent.new
    end

    def create 
        #raise params.inspect
        #user = current_user
        #event = Event.find(params[:id])
         @rsvp_event = current_user.rsvp_events.build({event_id: params[:event_id]})

        if @rsvp_event.save
            redirect_to rsvp_events_path
        end
    end

    def show 
        @rsvp_event = RsvpEvent.find(params[:id])
    end
    
    

    private 

    


end
