package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005fDashBoard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/Admin_DashBoard.css\">\n");
      out.write("        <!-- Boxicons CDN Link -->\n");
      out.write("        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("        <script src=\"https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js\"></script>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <!--css table-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.13.2/css/dataTables.bootstrap5.min.css\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css\"></script>\n");
      out.write("        <!--bang thong ke-->\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#example1').DataTable({\n");
      out.write("                    pagingType: 'full_numbers',\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <title>Dashboard</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"sidebar\" id=\"sidebar\">\n");
      out.write("            <div class=\"logo-details\">\n");
      out.write("                <i class='bx bxl-c-plus-plus'></i>\n");
      out.write("                <span class=\"logo_name\">GROUP 6</span>\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"nav-links\">\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"loadDashBoard\" class=\"active\">\n");
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
      out.write("                <!-- <div class=\"search-box\">\n");
      out.write("                    <input type=\"text\" placeholder=\"Search...\">\n");
      out.write("                    <i class='bx bx-search'></i>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"profile-details\">\n");
      out.write("                     <img src=\"images/profile.jpg\" alt=\"\">\n");
      out.write("                    <span class=\"admin_name\"></span>\n");
      out.write("                    <i class='bx bx-chevron-down'></i>\n");
      out.write("                </div> -->\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            <div class=\"home-content\">\n");
      out.write("                <div class=\"overview-boxes\">\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        <div class=\"right-side\">\n");
      out.write("                            <div class=\"box-topic\">Products</div>\n");
      out.write("                            <h1>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${TotalP}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\n");
      out.write("                        </div>\n");
      out.write("                        <iconify-icon icon=\"carbon:product\" style=\"color: #e14d2a;\" width=\"50\" height=\"50\"></iconify-icon>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        <div class=\"right-side\">\n");
      out.write("                            <div class=\"box-topic\">Categories</div>\n");
      out.write("                            <h1>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${TotalC}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\n");
      out.write("                        </div>\n");
      out.write("                        <iconify-icon icon=\"ic:baseline-category\" style=\"color: #0008c1;\" width=\"50\" height=\"50\">\n");
      out.write("                        </iconify-icon>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        <div class=\"right-side\">\n");
      out.write("                            <div class=\"box-topic\">Customers</div>\n");
      out.write("                            <h1>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${totalCus}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\n");
      out.write("                        </div>\n");
      out.write("                        <iconify-icon icon=\"raphael:customer\" style=\"color: green;\" width=\"50\" height=\"50\"></iconify-icon>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        <div class=\"right-side\">\n");
      out.write("                            <div class=\"box-topic\">Total Order</div>\n");
      out.write("                            <h1>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${totalO}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\n");
      out.write("                        </div>\n");
      out.write("                        <iconify-icon icon=\"fe:list-order\" style=\"color: #31e1f7;\" width=\"50\" height=\"50\"></iconify-icon>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!--table order and price-->\n");
      out.write("                <div class=\"table-total\">\n");
      out.write("                    <h1>SALES STATISTICS IN DAY</h1>\n");
      out.write("                    <br>\n");
      out.write("                    <table id=\"example1\" class=\"display\" style=\"width:100%\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Date</th>\n");
      out.write("                                <th>Bill</th>\n");
      out.write("                                <th>Sold</th>\n");
      out.write("                                <th>Renovue</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                        <tfoot>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Date</th>\n");
      out.write("                                <th>Bill</th>\n");
      out.write("                                <th>Sold</th>\n");
      out.write("                                <th>Revenue</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </tfoot>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!--products-->\n");
      out.write("                <div class=\"sales-boxes\">\n");
      out.write("                    <div class=\"container-chart2\">\n");
      out.write("                        <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\n");
      out.write("                        <div id=\"piechart_3d\" style=\"width: 100%; height: 100%;\"></div>\n");
      out.write("                        <script type=\"text/javascript\">\n");
      out.write("            google.charts.load(\"current\", {packages: [\"corechart\"]});\n");
      out.write("            google.charts.setOnLoadCallback(drawChart);\n");
      out.write("            function drawChart() {\n");
      out.write("                var data = google.visualization.arrayToDataTable([\n");
      out.write("                    ['Task', 'Hours per Day'],\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                ]);\n");
      out.write("\n");
      out.write("                var options = {\n");
      out.write("                    title: 'TOTAL PRODUCTS IN STOCK (BY %)',\n");
      out.write("                    is3D: true,\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));\n");
      out.write("                chart.draw(data, options);\n");
      out.write("            }\n");
      out.write("                        </script>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"container-chart3\">\n");
      out.write("                        <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\">\n");
      out.write("                        </script>\n");
      out.write("                        <script type=\"text/javascript\">\n");
      out.write("                            google.charts.load('current', {packages: ['corechart']});\n");
      out.write("                        </script>\n");
      out.write("                        <div id=\"container\" style=\"width: 100%; height: 100%; margin: 0 auto\">\n");
      out.write("                        </div>\n");
      out.write("                        <script language=\"JavaScript\">\n");
      out.write("                            function drawChart() {\n");
      out.write("                                // Define the chart to be drawn.\n");
      out.write("                                var data = google.visualization.arrayToDataTable([\n");
      out.write("                                    ['Year', 'Revenue'],\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                                ]);\n");
      out.write("                                var options = {title: 'REVENUE (BY YEAR)'};\n");
      out.write("\n");
      out.write("                                // Instantiate and draw the chart.\n");
      out.write("                                var chart = new google.visualization.ColumnChart(document.getElementById('container'));\n");
      out.write("                                chart.draw(data, options);\n");
      out.write("                            }\n");
      out.write("                            google.charts.setOnLoadCallback(drawChart);\n");
      out.write("                        </script>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!--column chart-->\n");
      out.write("                <div class=\"sales-boxes\">\n");
      out.write("                    <div class=\"container-chart\">\n");
      out.write("                        <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\n");
      out.write("                        <script type=\"text/javascript\">\n");
      out.write("                            google.charts.load(\"current\", {packages: [\"corechart\"]});\n");
      out.write("                            google.charts.setOnLoadCallback(drawChart);\n");
      out.write("                            function drawChart() {\n");
      out.write("                                var data = google.visualization.arrayToDataTable([\n");
      out.write("                                    ['Task', 'Hours per Day'],\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                ]);\n");
      out.write("                                var options = {\n");
      out.write("                                    title: 'TOP 5 BEST SELLING PRODUCTS (BY QUANTITY)',\n");
      out.write("                                    pieHole: 0.4,\n");
      out.write("                                };\n");
      out.write("                                var chart = new google.visualization.PieChart(document.getElementById('donutchart'));\n");
      out.write("                                chart.draw(data, options);\n");
      out.write("                            }\n");
      out.write("                        </script>\n");
      out.write("                        <div id=\"donutchart\" style=\"width: 100%; height: 100%; margin: 0 auto\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"container-chart1\">\n");
      out.write("                        <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\n");
      out.write("                        <script type=\"text/javascript\">\n");
      out.write("                            google.charts.load('current', {'packages': ['corechart']});\n");
      out.write("                            google.charts.setOnLoadCallback(drawChart);\n");
      out.write("\n");
      out.write("                            function drawChart() {\n");
      out.write("                                var data = google.visualization.arrayToDataTable([\n");
      out.write("                                    ['Task', 'Hours per Day'],\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                ]);\n");
      out.write("                                var options = {\n");
      out.write("                                    title: 'PRODUCT SOLD IN WEEK'\n");
      out.write("                                };\n");
      out.write("\n");
      out.write("                                var chart = new google.visualization.PieChart(document.getElementById('piechart'));\n");
      out.write("\n");
      out.write("                                chart.draw(data, options);\n");
      out.write("                            }\n");
      out.write("                        </script>\n");
      out.write("                        <div id=\"piechart\" style=\"width: 100%; height: 100%;\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"sales-boxes\">\n");
      out.write("                    <!--dothi-->\n");
      out.write("                    <div class=\"container-chart1\" style=\"width: 35%; margin-left: 20px; margin-right: 0px;\" >\n");
      out.write("                        <div class=\"circle\" title=\"Title\" style=\"width: 80%;\">\n");
      out.write("                            <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${acti}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("                            <p>ACTIVITIES</p>\n");
      out.write("                        </div>\n");
      out.write("                        <style>\n");
      out.write("                            .circle {\n");
      out.write("                                width: 100%;\n");
      out.write("                                height: 60%;\n");
      out.write("                                border-radius: 50%;\n");
      out.write("                                border: 50px solid green;\n");
      out.write("                                display: flex;\n");
      out.write("                                flex-direction: column;\n");
      out.write("                                justify-content: center;\n");
      out.write("                                align-items: center;\n");
      out.write("                                color: green;\n");
      out.write("                                font-size: 80px;\n");
      out.write("                                font-weight: bold;\n");
      out.write("                                position: relative;\n");
      out.write("                                margin-left: 30px;\n");
      out.write("                                margin-top: 60px;\n");
      out.write("                            }\n");
      out.write("                            .circle span {\n");
      out.write("                                z-index: 1;\n");
      out.write("                            }\n");
      out.write("                            .circle p {\n");
      out.write("                                z-index: 1;\n");
      out.write("                                margin: 0;\n");
      out.write("                                position: absolute;\n");
      out.write("                                bottom: -110px;\n");
      out.write("                                left: 50%;\n");
      out.write("                                transform: translateX(-50%);\n");
      out.write("                                text-align: center;\n");
      out.write("                                font-weight: bold;\n");
      out.write("                                font-size: 30px;\n");
      out.write("                            }\n");
      out.write("                        </style>\n");
      out.write("                    </div>\n");
      out.write("                    <!--table-->\n");
      out.write("                    <div class=\"table-total1\">\n");
      out.write("                        <h1 style=\"margin-top: 5px;margin-bottom: 5px\">ACCOUNT HAS MADE LOGIN AND PURCHASE IN WEEK</h1>\n");
      out.write("                        <table id=\"example\" class=\"table table-striped\" style=\"width:100%\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Username</th>\n");
      out.write("                                    <th>Email</th>\n");
      out.write("                                    <th>Phone</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                            <tfoot>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Username</th>\n");
      out.write("                                    <th>Email</th>\n");
      out.write("                                    <th>Phone</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </tfoot>\n");
      out.write("                        </table>\n");
      out.write("                        <script>\n");
      out.write("                            $(document).ready(function () {\n");
      out.write("                                $('#example').DataTable();\n");
      out.write("                            });\n");
      out.write("                        </script>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            let sidebar = document.querySelector(\".sidebar\");\n");
      out.write("            let sidebarBtn = document.querySelector(\".sidebarBtn\");\n");
      out.write("            sidebarBtn.onclick = function () {\n");
      out.write("                sidebar.classList.toggle(\"active\");\n");
      out.write("                if (sidebar.classList.contains(\"active\")) {\n");
      out.write("                    sidebarBtn.classList.replace(\"bx-menu\", \"bx-menu-alt-right\");\n");
      out.write("                } else\n");
      out.write("                    sidebarBtn.classList.replace(\"bx-menu-alt-right\", \"bx-menu\");\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListOandP}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("o");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                <tr>\n");
          out.write("                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.total_in_day}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.total_product_in_day}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.total_price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" VND</td>\n");
          out.write("                                </tr>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListP}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("o");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                    ['");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("', ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.amount}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("],\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListSale}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("o");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    ['");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.year}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("', ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.total}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("],\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListTop5}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("o");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    ['");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("', ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.total_sales}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("],\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent(null);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listSW}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("o");
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    ['");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.productname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("', ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.totalquantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("],\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent(null);
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ListInfo}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_5.setVar("o");
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <tr>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                    </tr>\n");
          out.write("                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_5.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_5.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }
}
