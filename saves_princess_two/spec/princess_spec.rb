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


end
