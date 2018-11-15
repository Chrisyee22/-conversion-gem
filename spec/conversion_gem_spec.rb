require 'rspec'
require_relative "../lib/conversion_gem"

RSpec.describe ConvertInches do
    describe "to_feet" do
      it "return message if value is nil" do
        expect(ConvertInches.to_feet(nil)).to eql("Please enter a numerical value")
      end
      it "returns value in feet" do
        expect(ConvertInches.to_feet(12)).to eql(1)
      end
      it "returns negative if value is negative" do
        expect(ConvertInches.to_feet(-12)).to eql(-1)
      end
    end

    describe "to_miles" do
      it "returns value in miles" do
        expect(ConvertInches.to_miles(63360)).to eql(1)
      end
    end

    describe "to_yards" do
      it "returns value in yards" do
        expect(ConvertInches.to_yards(36)).to eql(1)
      end
    end

    describe "to_metric" do
      it "returns value in meters" do
        expect(ConvertInches.to_metric(39.37)).to eql(1.0)
      end
      it "selects the proper final metric conversion" do
        expect(ConvertInches.to_metric(1,"mm")). to eql(25.4)
        #select metric value and it will convert the value in meters to the metric value you want.
      end
    end
end

RSpec.describe ConvertFeet do
    describe "to_inches" do
        it "returns value in inches" do
          expect(ConvertFeet.to_inches(1)).to eql(12)
        end
      end

      describe "to_miles" do
        it "return value in miles" do
          expect(ConvertFeet.to_miles(1)).to eql(0.000189394)
        end
      end
      describe "to_yards" do
        it "returns value in yards" do
          expect(ConvertFeet.to_yards(1)).to eql(0.3333)
        end
      end

      describe "to_metric" do
        it "returns value in meters" do
          expect(ConvertFeet.to_metric(1)).to eql(0.3048)
        end
      end
end
