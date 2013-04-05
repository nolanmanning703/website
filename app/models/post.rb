require 'nathanl/markdownable'

class Post < ActiveRecord::Base
  include Markdownable
end
