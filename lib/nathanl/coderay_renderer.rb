require 'coderay'

class CoderayRenderer < Redcarpet::Render::HTML
  def block_code(code, language)
    wrap '<pre class="CodeRay"><code>', '</code></pre>' do
      CodeRay.scan(code, language || :text).html
    end
  end

  private

  def wrap(before, after)
    before + yield + after
  end
end