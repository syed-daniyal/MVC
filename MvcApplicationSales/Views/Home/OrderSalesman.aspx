<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplicationSales.Models.ordersalesman>>" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>OrderSalesman</title>
</head>
<body>
    <table>

    <tr>
    <th>
    Order Id
    </th>
    <th>
    Customer Name
    </th>
    <th>
    City
    </th>
    <th>
    Code
    </th>
    <th>
    SalesmanName
    </th>
    </tr>



    <% foreach (var sale in Model)
       { %>
    <tr>
        <td>
            <%: sale.order_id %>
        </td>
        <td>
            <%: sale.customername %>
        </td>
        <td>
            <%: sale.city %>
        </td>
        <td>
            <%: sale.code %>
        </td>
        <td>
            <%: sale.salesman_name %>
        </td>
    </tr>
    
    <% } %>
    
    </table>
</body>
</html>
