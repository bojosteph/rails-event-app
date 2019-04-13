module EventsHelper

    def start_of_event(event)
        event.start_of_event.strftime("Start Of Event : %A, %b %e, at %l:%M %p")
    end

    def end_of_event(event)
        event.end_of_event.strftime("End Of Event : %A, %b %e, at %l:%M %p")
    end
end
