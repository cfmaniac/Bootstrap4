! function(s) {
    s(".sidebar .nav .nav-item > a").on("click", function(e) {
        if (s(this).next("ul").html())
            if (e.preventDefault(), s(this).parent().hasClass("open")) s(this).parent().removeClass("open");
            else {
                var i = s(this).closest(".nav"),
                    a = i.find(".nav-item.open");
                a.removeClass("open"), s(this).parent().addClass("open")
            }
    }), s("[data-toggle=sidebar]").on("click", function(e) {
        e.stopPropagation();
        var i = s(s(this).data("target"));
        toggleSidebar(i)
    });
    var e = s(window).width() >= 768;
    s(window).resize(function() {
        e = s(window).width() >= 768, e ? showSidebarsDesktop() : closeSidebars()
    }), s(".sidebar").on("mouseover", function() {
        e || s("body").css("overflow", "hidden")
    }).on("mouseleave", function() {
        e || s("body").css("overflow", "auto")
    }), window.closeSidebarsBody = function(i) {
        s(".sidebar").each(function() {
            var a = s(this);
            (a.hasClass("visible") && !e || a.hasClass("closable-desktop")) && (a.is(i.target) || 0 !== a.has(i.target).length || hideSidebar(a))
        })
    }, window.closeSidebars = function() {
        s(".sidebar").each(function() {
            var i = s(this);
            (i.hasClass("visible") && !e || i.hasClass("closable-desktop")) && hideSidebar(i)
        })
    }, window.showSidebarsDesktop = function() {
        s(".sidebar").each(function() {
            var i = s(this);
            i.hasClass("show-desktop") && e && showSidebar(i)
        })
    }, window.toggleSidebar = function(s) {
        s.hasClass("visible") ? hideSidebar(s) : showSidebar(s, !0)
    }, window.showSidebar = function(s, e) {
        closeSidebars(), e ? (s.addClass("sidebar-transition"), setTimeout(function() {
            s.addClass("visible")
        }, 10)) : s.addClass("visible")
    }, window.hideSidebar = function(s) {
        s.hasClass("visible") && (s.removeClass("visible"), setTimeout(function() {
            s.removeClass("sidebar-transition")
        }, 450))
    }, s("body").on("click", closeSidebarsBody), showSidebarsDesktop()
}(jQuery);