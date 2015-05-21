$(function() {
  $('.wmd-output').each(function(i) {
    var converter = new Markdown.getSanitizingConverter();

    var content = jQuery.trim($(this).html());
    var contents = content.split(/\r\n|\r|\n/);

    var indentSrc = contents[1];
    var indentDst = indentSrc.trimLeft();
    var indent = indentSrc.length - indentDst.length;

    var trimedContent = contents[0];
    for (var i = 1; i < contents.length; i++) {
      var removeIndent = contents[i].substr(indent);
      trimedContent = trimedContent + "  \n" + removeIndent;
    }

    var converted = converter.makeHtml(trimedContent);
    var replaced = converted;
    var replaced = converted.replace(/<code>/g, "<code class='panel'>");

    $(this).html(replaced);
  });
});

