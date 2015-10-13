require 'rspec'
require_relative '../user.rb'

describe User do
    before :context do
        data = ['Theeta Rappai', 'Proffesional eating machine', 34]
        @user = User.new(data)
    end
    describe '#initialize' do
        it "return an user object" do
            @user.should be_an_instance_of User
        end
        it "returns an array of values on accessing data" do
            @user.details = ['Theeta Rappai', 'Proffesional eating machine', 34]
        end
    end
end

