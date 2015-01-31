class GamesController < ApplicationController

  before_action :find_east_and_west, only: [:round1, :round2, :round3, :vote_e, :vote_w]

  def index
    @games = Game.all

    # @user = current_user
    # @user.game_id =
  end

  def round1
  end

  def round2
  end

  def round3
  end

  def lotto
    # 考慮洗掉票的記綠
  end

  def vote_e
    @vote.vote_for = 'east'
    @vote.save
    redirect_to :back
  end

  def vote_w
    @vote.vote_for = 'west'
    @vote.save
    redirect_to :back
  end


  private

  def find_east_and_west
    @game = Game.find(params[:id])
    @east = @game.east
    @west = @game.west
    @user = current_user
    @vote = @user.votes.find_or_create_by!(game_id: @game.id)
  end

end
