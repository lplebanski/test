class Comment < ActiveRecord::Base
  validates :body, :presence => true,
                      :length => { :minimum => 5 }
  belongs_to :question
  belongs_to :user
  attr_accessible :body, :commenter, :user_id
end
