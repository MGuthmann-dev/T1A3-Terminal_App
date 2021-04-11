require "./model/poke"
require "./control/controller"

RSpec.describe "testing" do
    it "should recieve valid Name input" do
        expect(Pkmn.all(poke)).not_to be nil
    end
    it "should recieve valid Number input" do
        expect(Controller::dex_entry).not_to be nil
    end

    
end