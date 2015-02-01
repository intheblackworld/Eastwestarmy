class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  scope :east, -> { where(:vote_for => "east") }
  scope :west, -> { where(:vote_for => "west") }
end
