class Game < ActiveRecord::Base
  has_one :east
  has_one :west
  has_many :votes, dependent: :destroy
end
