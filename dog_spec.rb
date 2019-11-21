require 'rspec'
require_relative 'dog'

describe Dog do    
    # subject {Dog.new} - Rspec automatically defines the subject to match the class.       
    describe '#bark' do
        it 'returns "Woof!"' do
            expect(subject.bark).to eql("Woof!") 
        end
    end

    describe '#hungry?' do
        it 'returns true if hunger greater than 5' do
            hungry_dog = Dog.new(hunger: 7)
            expect(hungry_dog).to be_hungry
        end
        it 'returns false if hunger is 5 or less' do
            hungry_dog = Dog.new(hunger: 5)
            expect(hungry_dog).to_not be_hungry
        end
    end
end