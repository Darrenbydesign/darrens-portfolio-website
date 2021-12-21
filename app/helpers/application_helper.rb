module ApplicationHelper
	def title
		 base_title = "Darren Sorrels"
		 @title.nil? ? base_title : "#{base_title} | #{@title}"
	end

  def nav_link(link_text, link_path)
    base_class = "menu-item"
    class_name = current_page?(link_path) ? 'menu-item-current' : nil
    content_tag(:li, :class => "#{base_class} #{class_name}") do
      link_to link_text, link_path, :class => "menu-link"
    end
  end

  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end

  def markdown(content)
    renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      disable_indented_codeblocks: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
end
