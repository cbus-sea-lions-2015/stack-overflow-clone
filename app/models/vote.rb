class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :vote, polymorphic: true
end
