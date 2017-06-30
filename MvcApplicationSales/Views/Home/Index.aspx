<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplicationSales.Models.Salesman>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                salesman_id
            </th>
            <th>
                salesman_name
            </th>
            <th>
                city
            </th>
            <th>
                code
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.salesman_id }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.salesman_id })%>
            </td>
            <td>
                <%: item.salesman_id %>
            </td>
            <td>
                <%: item.salesman_name %>
            </td>
            <td>
                <%: item.city %>
            </td>
            <td>
                <%: item.code %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

    <p>
        <%: Html.ActionLink("Show all orders with items", "OrderItems") %>
    </p>


     <p>
        <%: Html.ActionLink("Show all orders with SalesmanName", "OrderSalesman") %>
    </p>


</body>
</html>

