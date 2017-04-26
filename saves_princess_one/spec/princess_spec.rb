require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
  context "can initialize with specific data" do
    it "returns the grid" do

      princess = Princess.new(3,["---", "-m-", "p--"])

      expect(princess.grid).to eq(["---", "-m-", "p--"])
    end
  end
end
