require 'rspec'
require_relative '../lib/princess'

describe "Princess" do

  it "creates an instance of the Princess class" do
    princess = Princess.new(3,1,1,["---", "-m-", "p--"])

    expect(princess.class).to eq(Princess)
  end
end
