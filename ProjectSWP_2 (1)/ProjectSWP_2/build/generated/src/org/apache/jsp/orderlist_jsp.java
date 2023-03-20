package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class orderlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto|Varela+Round\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/orderlist.css\">\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("        <title>ORDER LIST</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"sidebar\" id=\"sidebar\">\n");
      out.write("            <div class=\"logo-details\">\n");
      out.write("                <i class='bx bxl-c-plus-plus'></i>\n");
      out.write("                <span class=\"logo_name\">GROUP 6</span>\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"nav-links\">\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"countTotalProduct\" class=\"active\">\n");
      out.write("                        <i class='bx bx-grid-alt'></i>\n");
      out.write("                        <span class=\"links_name\">Dashboard</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"productControl\">\n");
      out.write("                        <i class='bx bx-box'></i>\n");
      out.write("                        <span class=\"links_name\">Product</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class='bx bx-list-ul'></i>\n");
      out.write("                        <span class=\"links_name\">Order list</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class='bx bx-pie-chart-alt-2'></i>\n");
      out.write("                        <span class=\"links_name\">Analytics</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"storageControl\">\n");
      out.write("                        <i class='bx bx-box'></i>\n");
      out.write("                        <span class=\"links_name\">Storage</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class='bx bx-book-alt'></i>\n");
      out.write("                        <span class=\"links_name\">Total order</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class='bx bx-user'></i>\n");
      out.write("                        <span class=\"links_name\">Customers</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class='bx bx-message'></i>\n");
      out.write("                        <span class=\"links_name\">Messages</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class='bx bx-heart'></i>\n");
      out.write("                        <span class=\"links_name\">Favrorites</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class='bx bx-cog'></i>\n");
      out.write("                        <span class=\"links_name\">Setting</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"log_out\">\n");
      out.write("                    <a href=\"home\">\n");
      out.write("                        <i class='bx bx-log-out'></i>\n");
      out.write("                        <span class=\"links_name\">Log out</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <section class=\"home-section\">\n");
      out.write("            <nav>\n");
      out.write("                <div class=\"sidebar-button\">\n");
      out.write("                    <i class='bx bx-menu sidebarBtn'></i>\n");
      out.write("                    <span class=\"dashboard\">Dashboard</span>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!--table order and price-->\n");
      out.write("            <div class=\"sales-boxes\">\n");
      out.write("                <div class=\"recent-sales box\">\n");
      out.write("                    <div>\n");
      out.write("                        <table id=\"product-table\" style=\"margin-top: 55px;\">\n");
      out.write("                            <tr>\n");
      out.write("                            <br>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>User_id</th>\n");
      out.write("                                <th>Order_id</th>\n");
      out.write("                                <th>Quantity</th>\n");
      out.write("                                <th>Total_price</th>\n");
      out.write("                                <th>Shipping Method</th>\n");
      out.write("                                \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                                <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <div class=img-product1>\n");
      out.write("                                        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                                <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                                <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                                <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.total_price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                                <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.Status}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                                <td style=\"text-align: center;\">\n");
      out.write("                                    <a href=\"#\" class=\"delete\" title=\"Delete\" data-toggle=\"tooltip\"><i\n");
      out.write("                                            class=\"material-icons\">&#xE5C9;</i></a>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <script>\n");
      out.write("                let sidebar = document.querySelector(\".sidebar\");\n");
      out.write("                let sidebarBtn = document.querySelector(\".sidebarBtn\");\n");
      out.write("                sidebarBtn.onclick = function () {\n");
      out.write("                    sidebar.classList.toggle(\"active\");\n");
      out.write("                    if (sidebar.classList.contains(\"active\")) {\n");
      out.write("                        sidebarBtn.classList.replace(\"bx-menu\", \"bx-menu-alt-right\");\n");
      out.write("                    } else\n");
      out.write("                        sidebarBtn.classList.replace(\"bx-menu-alt-right\", \"bx-menu\");\n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("        </section>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
