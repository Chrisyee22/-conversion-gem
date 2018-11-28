require 'rspec'
require_relative "../lib/conversion_gem"

RSpec.describe ConvertInches do
    describe "to_feet" do
      it "return message if value is nil" do
        expect(ConvertInches.to_feet("")).to eql("Please enter a numerical value")
      end
      it "returns value in feet with adjusted decimal value" do
        expect(ConvertInches.to_feet(7,6)).to eql(0.583333)
      end
      it "returns value in feet" do
        expect(ConvertInches.to_feet(7)).to eql(0.5833)
      end
      it "returns negative if value is negative" do
        expect(ConvertInches.to_feet(-3)).to eql(-0.25)
      end
    end

    describe "to_miles" do
      it "return message if value is nil" do
        expect(ConvertInches.to_miles("")).to eql("Please enter a numerical value")
      end
      it "returns value in miles with adjusted decimal value" do
        expect(ConvertInches.to_miles(99,7)).to eql(0.0015625)
      end
      it "returns value in miles" do
        expect(ConvertInches.to_miles(63360)).to eql(1.0)
      end
      it "returns negative if value is negative" do
        expect(ConvertInches.to_miles(-789)).to eql(-0.0125)
      end
    end

    describe "to_yards" do
      it "return message if value is nil" do
        expect(ConvertInches.to_yards("")).to eql("Please enter a numerical value")
      end
      it "returns value in yards with adjusted decimal value" do
        expect(ConvertInches.to_yards(235,1)).to eql(6.5)
      end
      it "returns value in yards" do
        expect(ConvertInches.to_yards(36)).to eql(1.0)
      end
      it "returns negative if value is negative" do
        expect(ConvertInches.to_yards(-79)).to eql(-2.1944)
      end
    end

    describe "to_metric" do
      it "return message if value is nil" do
        expect(ConvertInches.to_metric("")).to eql("Please enter a numerical value")
      end
      it "returns value in meters" do
        expect(ConvertInches.to_metric(39.37)).to eql(1.0)
      end
      it "returns negative if value is negative" do
        expect(ConvertInches.to_metric(-6)).to eql(-0.1524)
      end
      it "returns value in meters with adjusted decimal value" do
        expect(ConvertInches.to_metric(13.76,"m", 6)).to eql(0.349504)
      end
      it "selects the proper final metric conversion" do
        expect(ConvertInches.to_metric(1,"mm")). to eql(25.4)
      end
    end
end

RSpec.describe ConvertFeet do
    describe "to_inches" do
      it "return message if value is nil" do
        expect(ConvertFeet.to_inches("")).to eql("Please enter a numerical value")
      end
        it "returns value in inches" do
          expect(ConvertFeet.to_inches(3.6)).to eql(43.2)
        end
        it "returns negative if value is negative and  adjusted decimal value" do
          expect(ConvertFeet.to_inches(-4.32,2)).to eql(-51.84)
        end
      end

      describe "to_miles" do
        it "return message if value is nil" do
          expect(ConvertFeet.to_miles("")).to eql("Please enter a numerical value")
        end
        it "return value in miles" do
          expect(ConvertFeet.to_miles(1)).to eql(0.0002)
        end
        it "return negative if value is negative and  adjusted decimal value" do
          expect(ConvertFeet.to_miles(-151, 5)).to eql(-0.02860)
        end
      end
      describe "to_yards" do
        it "return message if value is nil" do
          expect(ConvertFeet.to_yards("")).to eql("Please enter a numerical value")
        end
        it "returns value in yards" do
          expect(ConvertFeet.to_yards(5.23)).to eql(1.7432)
        end
        it "returns value in yards with adjusted decimal value" do
          expect(ConvertFeet.to_yards(5.23,1)).to eql(1.7)
        end
        it "return negative if value is negative" do
          expect(ConvertFeet.to_yards(-3.41)).to eql(-1.1366)
        end
      end

      describe "to_metric" do
        it "return message if value is nil" do
          expect(ConvertFeet.to_metric("")).to eql("Please enter a numerical value")
        end
        it "returns value in meters" do
          expect(ConvertFeet.to_metric(8.437)).to eql(2.5716)
        end
        it "return negative if value is negative" do
          expect(ConvertFeet.to_metric(-7)).to eql(-2.1336)
        end
        it "returns value in meters with adjusted decimal value" do
          expect(ConvertFeet.to_metric(71,"m", 2)).to eql(21.64)
        end
        it "selects the proper final metric conversion" do
          expect(ConvertFeet.to_metric(1,"mm")).to eql(304.8)
        end
      end
end

RSpec.describe ConvertYards do
  describe "to_inches" do
    it "return message if value is nil" do
      expect(ConvertYards.to_inches("")).to eql("Please enter a numerical value")
    end
    it "return negative if value is negative" do
      expect(ConvertYards.to_inches(-1)).to eql(-36.0)
    end
    it "returns value in inches" do
      expect(ConvertYards.to_inches(3.45)).to eql(124.2)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertYards.to_inches(7.321, 1)).to eql(263.6)
    end
  end
  describe "to_miles" do
    it "return message if value is nil" do
      expect(ConvertYards.to_miles("")).to eql("Please enter a numerical value")
    end
    it "return value in miles" do
      expect(ConvertYards.to_miles(317)).to eql(0.1801)
    end
    it "return negative if value is negative" do
      expect(ConvertYards.to_miles(-1760)).to eql(-1.0)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertYards.to_miles(1245, 7)).to eql(0.7073866)
    end
  end
  describe "to_feet" do
    it "return message if value is nil" do
      expect(ConvertYards.to_feet("")).to eql("Please enter a numerical value")
    end
    it "return negative if value is negative" do
      expect(ConvertYards.to_feet(-4)).to eql(-12.0)
    end
    it "returns value in feet" do
      expect(ConvertYards.to_feet(12.3892)).to eql(37.1676)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertYards.to_feet(12.433, 5)).to eql(37.29900)
    end
  end

  describe "to_metric" do
    it "return message if value is nil" do
      expect(ConvertYards.to_metric("")).to eql("Please enter a numerical value")
    end
    it "returns value in meters" do
      expect(ConvertYards.to_metric(32.43)).to eql(29.6540)
    end
    it "return negative if value is negative" do
      expect(ConvertYards.to_metric(-2)).to eql(-1.8288)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertYards.to_metric(14,"m", 3)).to eql(12.802)
    end
    it "selects the proper final metric conversion" do
      expect(ConvertYards.to_metric(500,"km")).to eql(0.4572)
    end
  end
end

RSpec.describe ConvertMiles do
  describe "to_inches" do
    it "return message if value is nil" do
      expect(ConvertMiles.to_inches("")).to eql("Please enter a numerical value")
    end
    it "returns value in inches" do
      expect(ConvertMiles.to_inches(0.3224)).to eql(20427.264)
    end
    it "return negative if value is negative" do
      expect(ConvertMiles.to_inches(-0.5)).to eql(-31680.0)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertMiles.to_inches(0.1121, 2)).to eql(7102.66)
    end
  end

  describe "to_feet" do
    it "return message if value is nil" do
      expect(ConvertMiles.to_feet("")).to eql("Please enter a numerical value")
    end
    it "returns value in feet" do
      expect(ConvertMiles.to_feet(0.35)).to eql(1848.0)
     end
     it "return negative if value is negative" do
       expect(ConvertMiles.to_feet(-0.11)).to eql(-580.8)
     end
     it "returns value with adjusted decimal value" do
       expect(ConvertMiles.to_feet(0.3452, 3)).to eql(1822.656)
     end
    end

  describe "to_yards" do
    it "return message if value is nil" do
      expect(ConvertMiles.to_yards("")).to eql("Please enter a numerical value")
    end
    it "returns value in yards" do
      expect(ConvertMiles.to_yards(0.213)).to eql(374.88)
    end
    it "return negative if value is negative" do
      expect(ConvertMiles.to_yards(-2)).to eql(-3520.0)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertMiles.to_yards(0.1242, 2)).to eql(218.59)
    end
  end

  describe "to_metric" do
    it "return message if value is nil" do
      expect(ConvertMiles.to_metric("")).to eql("Please enter a numerical value")
    end
    it "returns value in meters" do
      expect(ConvertMiles.to_metric(0.5)).to eql(804.672)
    end
    it "return negative if value is negative" do
      expect(ConvertMiles.to_metric(-0.1)).to eql(-160.9344)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertMiles.to_metric(0.22, "m", 1)).to eql(354.1)
    end
    it "selects the proper final metric conversion" do
      expect(ConvertMiles.to_metric(0.01,"cm")).to eql(1609.34)
    end
  end
end

RSpec.describe ConvertMeters do
  describe "to_inches" do
    it "return message if value is nil" do
      expect(ConvertMeters.to_inches("")).to eql("Please enter a numerical value")
    end
    it "returns value in inches" do
      expect(ConvertMeters.to_inches(2)).to eql(78.7402)
    end
    it "return negative if value is negative" do
      expect(ConvertMeters.to_inches(-13)).to eql(-511.8113)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertMeters.to_inches(22, 1)).to eql(866.1)
    end
  end

  describe "to_feet" do
    it "return message if value is nil" do
      expect(ConvertMeters.to_feet("")).to eql("Please enter a numerical value")
    end
    it "returns value in feet" do
      expect(ConvertMeters.to_feet(17)).to eql(55.7743)
     end
     it "return negative if value is negative" do
       expect(ConvertMeters.to_feet(-6)).to eql(-19.685)
     end
     it "returns value with adjusted decimal value" do
       expect(ConvertMeters.to_feet(1.5, 5)).to eql(4.92126)
     end
   end

   describe "to_miles" do
     it "return message if value is nil" do
       expect(ConvertMeters.to_miles("")).to eql("Please enter a numerical value")
     end
     it "return value in miles" do
       expect(ConvertMeters.to_miles(5982)).to eql(3.7170)
     end
     it "return negative if value is negative" do
       expect(ConvertMeters.to_miles(-12)).to eql(-0.0075)
     end
     it "returns value with adjusted decimal value" do
       expect(ConvertMeters.to_miles(223, 3)).to eql(0.139)
     end
   end

  describe "to_yards" do
    it "return message if value is nil" do
      expect(ConvertMeters.to_yards("")).to eql("Please enter a numerical value")
    end
    it "returns value in yards" do
      expect(ConvertMeters.to_yards(1337)).to eql(1462.1566)
    end
    it "return negative if value is negative" do
      expect(ConvertMeters.to_yards(-3)).to eql(-3.2808)
    end
    it "returns value with adjusted decimal value" do
      expect(ConvertMeters.to_yards(7, 2)).to eql(7.66)
    end
  end
end
