require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
  it "initializes with grid, mario_coordinates, and princess_coordinates" do

  princess = Princess.new(3,["---", "-m-", "p--"])

  expect(princess.grid).to eq(["---", "-m-", "p--"])
  expect(princess.mario_coordinates).to eq([])
  expect(princess.princess_coordinates).to eq([])
  end

  it "returns location for mario and princess" do
    princess = Princess.new(3,["---", "-m-", "p--"])
    princess.coordinates_for_mario_and_princess
    
  end
end
