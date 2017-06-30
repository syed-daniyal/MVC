<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MvcApplicationSales.Models.Salesman>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Create</title>
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.salesman_id) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.salesman_id) %>
                <%: Html.ValidationMessageFor(model => model.salesman_id) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.salesman_name) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.salesman_name) %>
                <%: Html.ValidationMessageFor(model => model.salesman_name) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.city) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.city) %>
                <%: Html.ValidationMessageFor(model => model.city) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.code) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.code) %>
                <%: Html.ValidationMessageFor(model => model.code) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</body>
</html>

