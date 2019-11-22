require "./lib/calculator"

RSpec.describe Calculator do
    describe "#add" do
        context "when given two numbers" do
            subject { described_class.new(5,2)}

            it "returns the sum " do
                expect(subject.add).to eql(7)
            end
        end
        context "when given three numbers" do
            subject { described_class.new(2,5,7) }

            it "returns the sum " do
                expect(subject.add).to eql(14)
            end
        end
    end
    describe "#multipy" do
        context "when given 2 numbers" do
            subject { described_class.new(5,2) }

            it "returns the product" do
                expect(subject.multiply).to eql(10)
            end
        end
    end

    describe "#subtract" do
        context "when given 2 numbers"
            subject { described_class.new(5,2) }

            it "returns the difference" do
            expect(subject.subtract).to eql(3)
        end
    end

    describe "#divide" do
        context "when given 2 numbers"
            subject { described_class.new(10, 2) }

        it "returns the remainder" do
          expect(subject.divide).to eql(5)
      end
    end


end