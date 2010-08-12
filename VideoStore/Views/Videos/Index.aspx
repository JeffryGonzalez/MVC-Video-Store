<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<VideoStore.Domain.Video>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Id
            </th>
            <th>
                Title
            </th>
            <th>
                Director
            </th>
            <th>
                YearReleased
            </th>
            <th>
                RetailPrice
            </th>
            <th>
                RentalPrice
            </th>
            <th>
                RentalDays
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new { /* id=item.PrimaryKey */ }) %> |
                <%= Html.ActionLink("Details", "Details", new { /* id=item.PrimaryKey */ })%>
            </td>
            <td>
                <%= Html.Encode(item.Id) %>
            </td>
            <td>
                <%= Html.Encode(item.Title) %>
            </td>
            <td>
                <%= Html.Encode(item.Director) %>
            </td>
            <td>
                <%= Html.Encode(item.YearReleased) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:F}", item.RetailPrice)) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:F}", item.RentalPrice)) %>
            </td>
            <td>
                <%= Html.Encode(item.RentalDays) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

