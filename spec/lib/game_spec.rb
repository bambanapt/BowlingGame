require "spec_helper"
require "game"

describe Game do
	let (:g) {g = Game.new}
   	it "able to create a new game" do
	end
	it 'can roll a spare' do
      g.roll(5)
      g.roll(5) #spare
      g.roll(3)
      g.roll(4)
      g.roll(3)
      g.roll(4)
      g.roll(3)
      g.roll(4)
      g.roll(3)
      g.roll(4)
      g.roll(3)
      g.roll(4)
      g.roll(3)
      g.roll(4)
      g.roll(3)
      g.roll(4)
      g.roll(3)
      g.roll(4)
      g.roll(3)
      g.roll(4)
      expect(g.score).to eq(76)
    end 
   
end