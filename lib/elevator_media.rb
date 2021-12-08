module ElevatorMedia
    class Streamer
        def self.getContent(input, index, interventionParams)
            @interventions = Intervention.all
            if input == nil
                if index == nil
                    
                else
                    "<div> the intervention #{index} is #{@interventions[index].status}</div>"
                end
                
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