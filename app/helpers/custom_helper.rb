module CustomHelper
  def cabecalho_para(texto, link)
    ativo_str = current_page?(link) ? "active" : ""
    data =
      " <li class=\"nav-item\">
        <a class=\"nav-link #{ativo_str}\" aria-current=\"page\" href=\"#{link}\"> #{texto} </a>
      </li>"
    data.html_safe
  end
end
