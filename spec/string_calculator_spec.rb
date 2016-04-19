require "string_calculator"

describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end

    context "given a single number as string" do
      context "'5'" do
        it "returns 5" do
          expect(StringCalculator.add("5")).to eql(5)
        end
      end

      context "'10'" do
        it "returns 10" do
          expect(StringCalculator.add("10")).to eql(10)
        end
      end
    end

    context "given 2 comma-separated numbers as string" do
      context "2,7" do
        it "returns the addition '9'" do
          expect(StringCalculator.add("2,7")).to eql(9)
        end
      end
    end

    context "given multiple comma-separated numbers as string" do
      context "10,5,200,151,27" do
        it "returns the sum of all numbers" do
          expect(StringCalculator.add("10,5,200,151,27")).to eql(393)
        end
      end
    end

    context "given comma-separated decimal numbers as string" do
      context "2.5, 10.68, 27.02" do
        it "returns the sum of the numbers" do
          expect(StringCalculator.add("2.5, 10.68, 27.02")).to eql(40.20)
        end
      end
    end
  end
end
