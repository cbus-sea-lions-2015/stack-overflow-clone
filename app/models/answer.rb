class Answer < ActiveRecord::Base
  has_many :votes, as: :vote
end
