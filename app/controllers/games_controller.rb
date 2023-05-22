class GamesController < ApplicationController
  def new
    @alpha = []
    10.times do
      @alpha.push(('A'..'Z').to_a[rand(26)])
    end
  end

  def score
    @answer = params['answer']
    @all = []
    File.foreach("words_alpha.txt") do |line|
      line.slice! "\n"
      line.slice! "\r"
      @all.push(line)
    end
  end


end
