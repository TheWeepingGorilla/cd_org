require 'rspec'
require 'cd_org'

describe 'CD' do
  it 'is initialized with a hash' do
    test_cd = CD.new({:title=> "Waiting for the Sun", :artist=> "The Doors"})
    test_cd.should be_an_instance_of CD
  end
end
