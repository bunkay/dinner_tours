class DinnerTour < ActiveRecord::Base 
    
    attr_accessible :content, :user.id
    belongs_to :user
    validates :content, length => { :maximum => 140 }

end
