(function() {
  $(document).ready(function() {
    var get_uniqid;
    window.footnote_uniqid = 0;
    get_uniqid = function() {
      window.footnote_uniqid += 1;
      return "noamsml-fn-elem-" + (window.footnote_uniqid - 1);
    };
    return $(".fn-document").each(function(index) {
      var holder;
      if ($(".fn-holder", this).length === 0) {
        $(this).append("<div class='fn-holder'></div>");
      }
      holder = $(".fn-holder", this).first();
      return $(".footnote", this).each(function(index) {
        var data, id;
        data = $(this).html();
        id = get_uniqid();
        $(holder).append("<div class='fn-foot'><a class='fn-anchor' id='" + id + "' href='#" + id + "-above'>" + (index + 1) + ".</a>&nbsp;&nbsp;" + data + "</div>");
        return $(this).replaceWith("<a class='footnote' href='#" + id + "' id='" + id + "-above'>" + (index + 1) + "</a>");
      });
    });
  });
}).call(this);
