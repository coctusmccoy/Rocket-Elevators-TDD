require 'elevator_media'
require 'json'
require 'open-uri'

describe ElevatorMedia do
    describe "Streamer" do 
        describe "getContent" do 
            #chuck norris fact test
            context 'test to get a chuck norris fact' do
                it 'returns a chuck norris fact' do
                    chuckFact = JSON.load(open("https://api.chucknorris.io/jokes/random"))
                    expect(ElevatorMedia::Streamer.getContent(chuckFact, nil, nil)).to eq("<div>#{chuckFact["value"]}</div>")
                    puts "chuck fact found: #{chuckFact["value"]}"
                end
            end
            context 'test to get a category' do
                it 'returns one category' do
                    index = 4
                    chuckCat = JSON.load(open("https://api.chucknorris.io/jokes/categories"))
                    expect(ElevatorMedia::Streamer.getContent(chuckCat, index, nil)).to eq("<div>#{chuckCat[index]}</div>")
                    puts "category chosen: #{chuckCat[index]}"
                end
            end
            # intervention relate test
            context 'test to retrieve customer id from interventions' do
                it 'returns wanted information' do
                    intervention = nil
                    index = 0
                    expect(ElevatorMedia::Streamer.getContent(nil, index, nil)).to eq("<div> the intervention #{index} is InProgress</div>")
                end
            end
            context 'test fill a intervention' do
                it 'return the last intervention created' do
                    interventionParams = {
                        var: 1234
                    }
                    banane = JSON.parse(interventionParams.to_json)
                    puts "-----------------------"
                    puts "#{banane["var"]}"
                    puts "-----------------------"
                    expect(ElevatorMedia::Streamer.getContent(nil, nil, interventionParams))
                end
            end
        end
    end 
end