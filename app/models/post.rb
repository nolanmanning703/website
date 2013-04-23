class Post < ActiveRecord::Base
  include Markdownable

  validates :title, :presence => true
end
