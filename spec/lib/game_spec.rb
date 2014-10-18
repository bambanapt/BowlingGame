require "spec_helper"
require "game"

describe Game do
	it 'can roll a strike at frame10' do
		g = Game.new
	    #frame1
	    g.roll(5)
	    g.roll(5) #spare
	    #frame2
	    g.roll(3)
	    g.roll(4)
	    #frame3
	    g.roll(10) #strike
	    #frame4
	    g.roll(5)
	    g.roll(3)
	    #frame5
	    g.roll(7)
	    g.roll(3) #spare
	    #frame6
	    g.roll(10) #strike
	    #frame7
	    g.roll(8)
	    g.roll(2) #spare
	    #frame8
	    g.roll(2)
	    g.roll(2)
	    #frame9
	    g.roll(4)
	    g.roll(6) #spare
	    #frame10
	    g.roll(10)#strike
	    g.roll(2)
	    g.roll(5) #row3
	    expect(g.score).to eq(139)
    end

    let (:g1) { g1 = Game .new }
    def roll_many(n, pins)
     n.times do
       g1.roll(pins)
     end
    end
   it 'can roll a perfect game' do
     roll_many(12, 10)
     expect(g1.score).to eq(300)
   end


   
end