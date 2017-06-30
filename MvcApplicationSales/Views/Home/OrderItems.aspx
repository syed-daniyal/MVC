<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplicationSales.Models.orderitems>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>OrderItems</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                Order Id 
            </th>
            <th>
                Customer Name
            </th>
            <th>
                Item Name
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: item.orderid %>
            </td>
            <td>
                <%: item.customername %>
            </td>
            <td>
                <%: item.itemname %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</body>
</html>

