module MarkdownHelper

  def markdown(text)
    unless @markdown
      renderer = Redcarpet::Render::HTML.new(
        no_intra_emphasis: true,
        tables: true,
        # fenced_code_blocks: true,
        autolink: true,
        # disable_indented_code_blocks: true,
        strikethrough: true,
        lax_html_blocks: true,
        space_after_headers: true,
        # underline:
        # highlight:
        # quote:
        # footnotes:

        filter_html: true,
        hard_wrap: true,
        xhtml: true,
        prettify: true
      )

      @markdown = Redcarpet::Markdown.new(renderer)
    end

    @markdown.render(text).html_safe
  end


end
