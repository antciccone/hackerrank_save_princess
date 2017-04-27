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
end
