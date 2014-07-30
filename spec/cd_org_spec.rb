require 'rspec'
require 'cd_org'
require 'pry'

describe 'CD' do
  it 'is initialized with a hash' do
    CD.clear
    test_cd = CD.new({:title=> "Waiting for the Sun", :artist=> "The Doors"})
    expect(test_cd).to be_an_instance_of CD
  end

  describe 'CD.all' do
    it 'list all cds in the collection' do
      CD.clear
      test_cd = CD.new({:title=> "Waiting for the Sun", :artist=> "The Doors"})
      test_cd.save
      test_cd_two = CD.new({:title=> "Swansong", :artist=> "Carcass"})
      test_cd_two.save
      test_cd_three = CD.new({:title=> "Abbey Road", :artist=> "The Beatles"})
      test_cd_three.save
      expect(CD.all).to eq [test_cd, test_cd_two, test_cd_three]
    end
  end

  describe 'CD.search' do
    it 'allows search by title' do
      CD.clear
      test_cd = CD.new({:title=> "Waiting for the Sun", :artist=> "The Doors"})
      test_cd.save
      test_cd_two = CD.new({:title=> "Swansong", :artist=> "Carcass"})
      test_cd_two.save
      test_cd_three = CD.new({:title=> "Abbey Road", :artist=> "The Beatles"})
      test_cd_three.save
      expect(CD.search("Swansong")).to eq test_cd_two
    end
  end

end
