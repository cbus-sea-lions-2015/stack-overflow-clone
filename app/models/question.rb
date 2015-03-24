class Question < ActiveRecord::Base
  has_many :votes, as: :vote
end
