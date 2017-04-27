require 'rspec'
require_relative '../lib/princess'

describe "Princess" do

  it "creates an instance of the Princess class" do
    princess = Princess.new(3,1,1,["---", "-m-", "p--"])

    expect(princess.class).to eq(Princess)
  end

  it "mario_coordinates are entered by the user" do
    princess = Princess.new(3,1,1,["---", "-m-", "p--"])

    expect(princess.mario_coordinates).to eq([1,1])
  end

  it "initialize with finding the princess cooridnates as well as grid" do
    princess = Princess.new(3,1,1,["---", "-m-", "p--"])

    expect(princess.grid).to eq(["---", "-m-", "p--"])
    expect(princess.princess_coordinates).to eq([2,0])
  end

  it "distance_to_save_princess returns an array of cooridnates to travel" do
    princess = Princess.new(3,1,1,["---", "-m-", "p--"])

    expect(princess.distance_to_save_princess).to eq([-1, 1])
  end

  it "create_directions returns the first move for mario to save princess" do
    princess = Princess.new(3,1,1,["---", "-m-", "p--"])

    expect(princess.create_directions).to eq("DOWN\n")
  end

  it "create_directions returns the first move for mario to save princess if they are on the same row" do
    princess = Princess.new(3,1,1,["---", "-mp", "---"])

    expect(princess.create_directions).to eq("RIGHT\n")
  end

  it "create_directions returns first direction on large grid" do
    princess = Princess.new(6,0,0,["m-----", "------", "------", "------", "------", "-----p"])

    expect(princess.create_directions).to eq("DOWN\n")
  end

  it "create_directions returns the first move for mario to save princess if mario is below princess" do
    princess = Princess.new(3,2,1,["---", "-p-", "-m-"])

    expect(princess.create_directions).to eq("UP\n")
  end

  it "return_column splits column and returns index" do
    princess = Princess.new(3,1,1,["---", "-mp", "---"])

    expect(princess.return_column("m", "m--")).to eq(0)
  end
end
