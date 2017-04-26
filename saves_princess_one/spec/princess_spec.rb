require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
  context "can initialize with specific data" do
    it "returns " do

      Princess.new.displayPathtoPrincess(1,2)

    end
  end
end
