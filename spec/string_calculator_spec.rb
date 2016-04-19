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

    #   context "'10'"
    end
  end
end
