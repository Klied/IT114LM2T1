﻿<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
    <style type="text/css">
        .auto-style1 {
            height: 549px;
        }
    </style>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server" class="auto-style1">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>            
            <asp:Label ID="Label1" runat="server" Text="Reason, by Nami Tamaki"></asp:Label>
              
        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%> 
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="https://i1.sndcdn.com/artworks-O2hlTzewj5Id-0-t500x500.jpg" Width="200px" Height="200px" AlternateText="Album Cover"> 
         </asp:Image>


        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Prev"> </asp:Button>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Play"> </asp:Button>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Next"> </asp:Button>

        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_event_handling.htm#:~:text=onclick=%22btnclick_Click%22 --%>
        <script runat="server">
            protected void Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
            {
                Button2.Text = "Now playing Reason <br/>";
            }

        </script>
        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <%-- Hint: https://learn.microsoft.com/en-us/troubleshoot/developer/webapps/aspnet/development/inline-expressions#:~:text=displays%20the%20current%20time --%>
        <%=DateTime.Now.ToLocalTime() %>
        <br />
    </form>
</body>
</html>
