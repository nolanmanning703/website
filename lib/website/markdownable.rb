require 'website/coderay_renderer'
require 'redcarpet'

module Markdownable

  def markdown(field)
    options = {
      :fenced_code_blocks => true,
    }
    markdown = Redcarpet::Markdown.new(CoderayRenderer, options)
    markdown.render send(field) || ""
  end

end