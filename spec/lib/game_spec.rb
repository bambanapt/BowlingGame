require "spec_helper"
require "game"

describe Game do
	let (:g) {g = Game.new}
	def roll_many(n, pins)
     n.times do
       g.roll(pins)
     end
   end
	it 'can roll a spare' do
      roll_spare
      g.roll(3)
      roll_many(17, 0)
    end 
   def roll_spare
     g.roll(5)
     g.roll(5)
   end
end