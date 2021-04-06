require "./models/User"

RSpec.describe "User" do
    subject { User.new }

    it "should respond to name" do
        expect(subject).to respond_to(:name)
    end

    ##### Not Working due to list function #####
    # it "should respond to save" do
    #     expect(subject)to respond_to(:save)
    # end

    describe "#save" do
        it "should increase the lenght of users by 1"
            expect {subject.save}.to change {User.all.length}.by 1
        end
    end

    describe "name" do
        subject {(User.new "Adam").name}
    
        it "should not be nil" do
            expect(subject).not_to eq be_nil
        end
        it "should be assinged on inititilaisation if provided" do
            expect(subject).to eq "Adam"
        end
    end
end
