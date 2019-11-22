
require './lib/dog'

RSpec.describe Dog do    
    # subject {Dog.new} - Rspec automatically defines the subject to match the class.       
    describe '#bark' do
        it 'returns "Woof!"' do
            expect(subject.bark).to eql("Woof!") 
        end
    end
# use context to set up conditions of subjects. Use described_class.new instead of instantiating a new specific object. 
# this increases reusability of test code and easier refactoring.
    describe '#hungry?' do
        context 'when hunger is greater than 5' do
            subject{described_class.new(hunger: 7)}

            it 'returns true ' do
            expect(subject).to be_hungry
            end
        end
        context 'when hunger is 5 or less' do
            subject{described_class.new(hunger: 4)}

            it 'returns false ' do
            expect(subject).to_not be_hungry
            end
        end
    end

    describe '#feed' do
        it 'is not hungry now' do
            subject{described_class.new(hunger: 7)}
            subject.feed
            expect(subject).to_not be_hungry
        end
    end
end