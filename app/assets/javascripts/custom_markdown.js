$(function() {
  $('.wmd-output').each(function(i) {
    var converter = new Markdown.getSanitizingConverter();

    var content = $(this).html();
    if(null == content) {
      return
    }

    var contents = content.split(/\r\n|\r|\n/);

    var indentSrc = contents[1];
    var indentDst = indentSrc.trimLeft();
    var indent = indentSrc.length - indentDst.length;

    var trimedContent = ""
    for (var i = 1; i < contents.length - 1; i++) {
      var removeIndent = contents[i].substr(indent);
      trimedContent = trimedContent + "  \n" + removeIndent;
    }

    var converted = converter.makeHtml(trimedContent);
    var replaced = converted;
    var replaced = converted.replace(/<code>/g, "<code class='panel'>");

    $(this).html(replaced);
  });
});

