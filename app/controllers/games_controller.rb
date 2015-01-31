class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def round1
    @game = Game.find(params[:id])
    @east = @game.east
    @west = @game.west
    @user = current_user
  end

  def round2
    @east = East.where(:pkgroup => 1)
    @west = West.where(:pkgroup => 1)
    @user = current_user
  end

  def round3
    @east = East.where(:pkgroup => 1)
    @west = West.where(:pkgroup => 1)
    @user = current_user
  end

  def vote_east
    @user = current_user

    @user.vote_east = true
    @user.vote_west = false
    @user.save
  end

  def vote_west
    @user = current_user

    @user.vote_west = true
    @user.vote_east = false
    @user.save
  end

end
