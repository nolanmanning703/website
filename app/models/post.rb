class Post < ActiveRecord::Base
  include Markdownable

  validates :title, :presence => true

  def to_param
    title.gsub(" ","_").downcase
  end
end
