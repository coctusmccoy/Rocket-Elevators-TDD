module ElevatorMedia
    class Streamer
        def self.getContent(input, index, intervention)
            if intervention == false
                if index == nil
                    "<div>#{input["value"]}</div>"
                else 
                    "<div>#{input[index]}</div>"
                end
            end
        end
    end
end