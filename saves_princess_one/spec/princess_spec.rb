require 'rspec'
require_relative '../lib/princess'

describe "Princess" do

  it "creates an instance of the Princess class" do
    princess = Princess.new(3,["---", "-m-", "p--"])

    expect(princess.class).to eq(Princess)
  end

  it "initializes with grid, mario_coordinates, princess_coordinates" do

    princess = Princess.new(3,["---", "-m-", "p--"])

    expect(princess).to respond_to(:grid)
    expect(princess).to respond_to(:mario_coordinates)
    expect(princess).to respond_to(:princess_coordinates)
  end

  it "initializes with current location for mario and princess" do
    princess = Princess.new(3,["---", "-m-", "p--"])

    expect(princess.mario_coordinates).to eq([1,1])
    expect(princess.princess_coordinates).to eq([2,0])
  end

  it "distance_to_save_princess finds the distance from mario to princess" do
    princess = Princess.new(3,["---", "-m-", "p--"])

    expect(princess.distance_to_save_princess).to eq([-1, 1])
  end

  it "create directions for mario to save princess" do
      princess = Princess.new(3,["---", "-m-", "p--"])

      expect(princess.create_directions).to eq(["DOWN\n","LEFT\n"])
  end

  it "return distance on bigger grid" do
    princess = Princess.new(6,["m-----", "------", "------", "------", "------", "-----p"])

    answer = ["DOWN\n", "DOWN\n", "DOWN\n", "DOWN\n", "DOWN\n", "RIGHT\n", "RIGHT\n", "RIGHT\n", "RIGHT\n", "RIGHT\n"]
    expect(princess.create_directions).to eq(answer)
  end

  it "returns distance when mario is below princess" do
    princess = Princess.new(4,["p---", "----", "-m--", "----"])

    answer = ["UP\n", "UP\n", "LEFT\n"]
    expect(princess.create_directions).to eq(answer)
  end

  it "return_column splits row and returns index" do
    princess = Princess.new(3,["---", "-m-", "p--"])

    expect(princess.return_column("m", "-m-")).to eq(1)
  end
end
