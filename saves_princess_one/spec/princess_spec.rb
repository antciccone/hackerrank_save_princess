require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
  it "initializes with grid, mario_coordinates, and princess_coordinates" do

  princess = Princess.new(3,["---", "-m-", "p--"])

  expect(princess.grid).to eq(["---", "-m-", "p--"])
  expect(princess.mario_coordinates).to eq([])
  expect(princess.princess_coordinates).to eq([])
  end

  it "finds current location for mario and princess" do
    princess = Princess.new(3,["---", "-m-", "p--"])
    princess.coordinates_for_mario_and_princess

    expect(princess.mario_coordinates).to eq([1,1])
    expect(princess.princess_coordinates).to eq([2,0])
  end

  it "distance_to_save_princess finds the distance from mario to princess" do
    princess = Princess.new(3,["---", "-m-", "p--"]).coordinates_for_mario_and_princess

    expect(princess.distance_to_save_princess).to eq([-1, 1])
  end

  it "create directions for mario to save princess" do
      princess = Princess.new(3,["---", "-m-", "p--"])

      expect(princess.create_directions).to eq(["DOWN\n","LEFT\n"])
  end
end
