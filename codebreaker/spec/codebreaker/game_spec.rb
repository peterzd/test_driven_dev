require 'spec_helper'

module Codebreaker
	describe Game do
		let(:output) { double('output').as_null_object }
		let(:game) { Game.new(output) }

		describe "#start" do
			it "sends a welcome message" do
				# output = double('output').as_null_object # 用RSpec::Mocks来创建一个动态的test double
				# game = Game.new(output) # 这两行就是这个例子里的Givens
				output.should_receive(:puts).with('Welcome to Codebreaker!')
				game.start('1234')
			end

			it "prompts for the first guess" do
				output.should_receive(:puts).with('Enter guess:')
				game.start('1234')
			end
		end

		describe "#guess" do
			it "sends the mark to output" do
				game.start('1234')
				output.should_receive(:puts).with("++++")
				game.guess('1234')
			end
		end

	end
end
