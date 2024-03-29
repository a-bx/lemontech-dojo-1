class Post < ActiveRecord::Base
  attr_accessible :content, :title, :views

  validates :title, :presence => true
  validates :content, :presence => true,
                      :length => { :minimum => 5 }

  has_many :comments
end
