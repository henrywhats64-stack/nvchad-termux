local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local jsx_tsx_snippets = {
  -- Estructura básica
  s("html", { t { "<html>" }, i(1), t { "</html>" } }),
  s("head", { t { "<head>" }, i(1), t { "</head>" } }),
  s("body", { t { "<body>" }, i(1), t { "</body>" } }),
  s("title", { t { "<title>" }, i(1), t { "</title>" } }),

  -- Encabezados
  s("h1", { t { "<h1>" }, i(1), t { "</h1>" } }),
  s("h2", { t { "<h2>" }, i(1), t { "</h2>" } }),
  s("h3", { t { "<h3>" }, i(1), t { "</h3>" } }),
  s("h4", { t { "<h4>" }, i(1), t { "</h4>" } }),
  s("h5", { t { "<h5>" }, i(1), t { "</h5>" } }),
  s("h6", { t { "<h6>" }, i(0), t { "</h6>" } }),

  -- Texto y formateo
  s("p", { t { "<p>" }, i(0), t { "</p>" } }),
  s("blockquote", { t { "<blockquote>" }, i(0), t { "</blockquote>" } }),
  s("pre", { t { "<pre>" }, i(0), t { "</pre>" } }),
  s("code", { t { "<code>" }, i(0), t { "</code>" } }),
  s("hr", { t { "<hr />" } }),
  s("br", { t { "<br />" } }),

  -- Elementos en línea
  s("a", { t { '<a href="' }, i(0), t { '">' }, i(1), t { "</a>" } }),
  s("span", { t { "<span>" }, i(1), t { "</span>" } }),
  s("strong", { t { "<strong>" }, i(1), t { "</strong>" } }),
  s("em", { t { "<em>" }, i(0), t { "</em>" } }),
  s("small", { t { "<small>" }, i(1), t { "</small>" } }),
  s("sub", { t { "<sub>" }, i(1), t { "</sub>" } }),
  s("sup", { t { "<sup>" }, i(1), t { "</sup>" } }),
  s("i", { t { "<i>" }, i(1), t { "</i>" } }),
  s("b", { t { "<b>" }, i(1), t { "</b>" } }),
  s("u", { t { "<u>" }, i(1), t { "</u>" } }),
  s("del", { t { "<del>" }, i(1), t { "</del>" } }),
  s("ins", { t { "<ins>" }, i(1), t { "</ins>" } }),
  s("mark", { t { "<mark>" }, i(1), t { "</mark>" } }),
  s("cite", { t { "<cite>" }, i(1), t { "</cite>" } }),
  s("time", { t { "<time>" }, i(1), t { "</time>" } }),

  -- Listas
  s("ul", { t { "<ul>" }, i(1), t { "</ul>" } }),
  s("ol", { t { "<ol>" }, i(1), t { "</ol>" } }),
  s("li", { t { "<li>" }, i(1), t { "</li>" } }),

  -- Tablas
  s("table", { t { "<table>" }, i(0), t { "</table>" } }),
  s("thead", { t { "<thead>" }, i(0), t { "</thead>" } }),
  s("tbody", { t { "<tbody>" }, i(0), t { "</tbody>" } }),
  s("tr", { t { "<tr>" }, i(0), t { "</tr>" } }),
  s("th", { t { "<th>" }, i(0), t { "</th>" } }),
  s("td", { t { "<td>" }, i(0), t { "</td>" } }),
  s("caption", { t { "<caption>" }, i(0), t { "</caption>" } }),

  -- Formularios
  s("form", { t { "<form>" }, i(1), t { "</form>" } }),
  s("input", { t { '<input type="' }, i(1), t { '" />' } }),
  s("textarea", { t { "<textarea>" }, i(1), t { "</textarea>" } }),
  s("select", { t { "<select>" }, i(1), t { "</select>" } }),
  s("option", { t { "<option>" }, i(1), t { "</option>" } }),
  s("label", { t { "<label>" }, i(1), t { "</label>" } }),
  s("button", { t { "<button>" }, i(1), t { "</button>" } }),
  s("fieldset", { t { "<fieldset>" }, i(1), t { "</fieldset>" } }),
  s("legend", { t { "<legend>" }, i(1), t { "</legend>" } }),
  s("datalist", { t { "<datalist>" }, i(1), t { "</datalist>" } }),
  s("output", { t { "<output>" }, i(1), t { "</output>" } }),

  -- Multimedia y gráficos
  s("img", { t { '<img src="' }, i(0), t { '" alt="' }, i(1), t { '" />' } }),
  s("video", { t { "<video>" }, i(0), t { "</video>" } }),
  s("audio", { t { "<audio>" }, i(0), t { "</audio>" } }),
  s("source", { t { '<source src="' }, i(0), t { '" type="' }, i(1), t { '" />' } }),
  s("track", { t { '<track src="' }, i(0), t { '" kind="' }, i(1), t { '" />' } }),
  s("canvas", { t { "<canvas>" }, i(0), t { "</canvas>" } }),
  s("svg", { t { "<svg>" }, i(0), t { "</svg>" } }),

  -- Elementos semánticos
  s("header", { t { "<header>" }, i(0), t { "</header>" } }),
  s("footer", { t { "<footer>" }, i(0), t { "</footer>" } }),
  s("nav", { t { "<nav>" }, i(0), t { "</nav>" } }),
  s("section", { t { "<section>" }, i(0), t { "</section>" } }),
  s("article", { t { "<article>" }, i(0), t { "</article>" } }),
  s("aside", { t { "<aside>" }, i(0), t { "</aside>" } }),
  s("main", { t { "<main>" }, i(0), t { "</main>" } }),
  s("div", { t { "<div>" }, i(0), t { "</div>" } }),
  s("figure", { t { "<figure>" }, i(0), t { "</figure>" } }),
  s("figcaption", { t { "<figcaption>" }, i(0), t { "</figcaption>" } }),
  s("details", { t { "<details>" }, i(0), t { "</details>" } }),
  s("summary", { t { "<summary>" }, i(0), t { "</summary>" } }),

  -- Otros
  s("script", { t { "<script>" }, i(1), t { "</script>" } }),
  s("style", { t { "<style>" }, i(1), t { "</style>" } }),
  s("noscript", { t { "<noscript>" }, i(1), t { "</noscript>" } }),
  s("template", { t { "<template>" }, i(1), t { "</template>" } }),

  -- Etiquetas auto-cerradas adicionales
  s("meta", { t { '<meta name="' }, i(0), t { '" content="' }, i(1), t { '" />' } }),
  s("link", { t { '<link rel="' }, i(0), t { '" href="' }, i(1), t { '" />' } }),
  s("area", { t { '<area shape="' }, i(0), t { '" />' } }),
  s("base", { t { '<base href="' }, i(0), t { '" />' } }),
  s("col", { t { "<col />" } }),
  s("embed", { t { '<embed src="' }, i(0), t { '" />' } }),
  s("param", { t { '<param name="' }, i(0), t { '" value="' }, i(1), t { '" />' } }),
  s("wbr", { t { "<wbr />" } }),
}

ls.add_snippets("javascriptreact", jsx_tsx_snippets)
ls.add_snippets("typescriptreact", jsx_tsx_snippets)
