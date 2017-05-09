require "rails_helper"

describe DiscountMatcher do
  before do
    @book = OpenStruct.new(language: "ruby")
    @matcher = DiscountMatcher.new
  end

  it "returns nil where there are no discounts" do
    expect(@matcher.for(discounts: [], book: @book)).to(be_nil)
  end

  describe "language" do
    it "returns match when book language matches" do
      sd = OpenStruct.new(
        supplier: OpenStruct.new(name: "Amazon"),
        discount: OpenStruct.new(language: "ruby")
      )
      expect(@matcher.for(discounts: [sd], book: @book)).to eq(sd)
    end
  end
end
