<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<VideoStore.Domain.Video>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm("Add", "Videos")) {%>

        <fieldset>
            <legend>Fields</legend>
            <p>
                <label for="Id">Id:</label>
                <%= Html.TextBox("Id") %>
                <%= Html.ValidationMessage("Id", "*") %>
            </p>
            <p>
                <label for="Title">Title:</label>
                <%= Html.TextBox("Title") %>
                <%= Html.ValidationMessage("Title", "*") %>
            </p>
            <p>
                <label for="Director">Director:</label>
                <%= Html.TextBox("Director") %>
                <%= Html.ValidationMessage("Director", "*") %>
            </p>
            <p>
                <label for="YearReleased">YearReleased:</label>
                <%= Html.TextBox("YearReleased") %>
                <%= Html.ValidationMessage("YearReleased", "*") %>
            </p>
            <p>
                <label for="RetailPrice">RetailPrice:</label>
                <%= Html.TextBox("RetailPrice") %>
                <%= Html.ValidationMessage("RetailPrice", "*") %>
            </p>
            <p>
                <label for="RentalPrice">RentalPrice:</label>
                <%= Html.TextBox("RentalPrice") %>
                <%= Html.ValidationMessage("RentalPrice", "*") %>
            </p>
            <p>
                <label for="RentalDays">RentalDays:</label>
                <%= Html.TextBox("RentalDays") %>
                <%= Html.ValidationMessage("RentalDays", "*") %>
            </p>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

