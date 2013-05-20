class Post < ActiveRecord::Base
  include Markdownable

  validates :content, :presence => true, :format => { :with => /^\#\ .*/,
    :message => "Must start with a header (#) line.", :multiline => true }

  def title
    content.lines[0].sub('# ', '')
  end
end
