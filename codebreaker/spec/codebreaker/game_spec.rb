require 'spec_helper'

module Codebreaker
	describe Game do
		describe "#start" do
			let(:output) { double('output').as_null_object }
			let(:game) { Game.new(output) }

			it "sends a welcome message" do
				# output = double('output').as_null_object # 用RSpec::Mocks来创建一个动态的test double
				# game = Game.new(output) # 这两行就是这个例子里的Givens
				output.should_receive(:puts).with('Welcome to Codebreaker!')
				game.start
			end

			it "prompts for the first guess" do
				output.should_receive(:puts).with('Enter guess:')
				game.start
			end
		end
	end
end
