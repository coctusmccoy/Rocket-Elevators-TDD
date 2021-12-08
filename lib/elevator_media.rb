module ElevatorMedia
    class Streamer
        def self.getContent(input, index, patate)
            @interventions = Intervention.all
            if patate == true
                puts index
                "<div> the intervention #{index} is #{@interventions[index].status}</div>"
            else
                if index == nil
                    "<div>#{input["value"]}</div>"
                else 
                    "<div>#{input[index]}</div>"
                end
            end
        end
    end
end