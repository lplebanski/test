class Question < ActiveRecord::Base
  validates :tiltle, :presence => true,
                     :length => { :minimum => 5 }
  validates :content, :presence => true,
                      :length => { :minimum => 10 }
  attr_accessible :content, :tiltle, :user_id
has_many :comments, :dependent => :destroy
belongs_to :user

        def self.text_search(query)
                  if query.present?
                    where('tiltle like :q or content like :q',q: "%#{query}%")
          	else
    		scoped
  		end
	end
end
