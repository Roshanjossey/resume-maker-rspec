require 'rspec'
require_relative '../user.rb'

describe User do
    before :context do
        @user = User.new
    end
    describe '#initialize' do
        it "return an user object" do
            @user.should be_an_instance_of User
        end
        it "allows to change user details on fly" do
            @user.details = ['Name' => 'Theeta Rappai', 'Profession' => 'Proffesional eating machine', 'Age' => 34]
        end
    end
end

