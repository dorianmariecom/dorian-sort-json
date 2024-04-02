require "spec_helper"

RSpec.describe "sort-json" do
  it "works" do
    expect(`bin/sort-json '{"b": 2, "a": 1}'`).to eq(<<~JSON)
    {
      "a": 1,
      "b": 2
    }
    JSON
  end
end
