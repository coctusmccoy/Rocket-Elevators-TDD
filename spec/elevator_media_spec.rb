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
                    expect(ElevatorMedia::Streamer.getContent(chuckFact, nil, false)).to eq("<div>#{chuckFact["value"]}</div>")
                    puts "chuck fact found: #{chuckFact["value"]}"
                end
            end
            context 'test to get a category' do
                it 'returns one category' do
                    index = 4
                    chuckCat = JSON.load(open("https://api.chucknorris.io/jokes/categories"))
                    expect(ElevatorMedia::Streamer.getContent(chuckCat, index, false)).to eq("<div>#{chuckCat[index]}</div>")
                    puts "category chosen: #{chuckCat[index]}"
                end
            end
            # intervention relate test
            
            context 'test to retrieve customer id from interventions' do
                    params = { 
                        :adapter  => "mysql2",
                        :host     => "slave_database.com",
                        :username => "test",
                        :database => "sample"
                    }
                    ActiveRecord::Base.should_receive(:establish_connection).with(params)
                it 'returns wanted information' do
                    intervention = Intervention.all
                    informationWanted = 1
                    inter
                    expect(ElevatorMedia::Streamer.getContent(intervention, informationWanted, true ))
                end
            end
        end
    end 
end