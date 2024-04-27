<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainscreen.aspx.cs" Inherits="mainscreen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script>

        window.onload = function () {
            setInterval(updateTime, 1000);
        };

        function updateTime() {
            var now = new Date();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();

            // Add leading zero if needed
            hours = (hours < 10 ? "0" : "") + hours;
            minutes = (minutes < 10 ? "0" : "") + minutes;
            seconds = (seconds < 10 ? "0" : "") + seconds;

            // Display the time
            document.getElementById('timetxt').innerHTML = hours + ":" + minutes + ":" + seconds;
        }
    
    </script>
 </head>
<body>
    <form id="form1" runat="server">
    <div class="container p-10">
    <div class="card p-11 shadow-md rounded-2xl bg-transparent">
        <asp:Label ID="Label8" runat="server" Text="* MANTROTRY FIELDS"></asp:Label>
    <div class="row">
    <div class="col-md-4">
        <asp:Label ID="Label1" runat="server"><span>Id</span><span class="text-red-500 mx-1">*</span></asp:Label>
        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server"><span>Customer Name</span><span class="text-red-500 mx-1">*</span></asp:Label>
        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server"><span>Cantact Number</span><span class="text-red-500 mx-1">*</span></asp:Label>
        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Existing Customer"/>
        
    </div>
     <div class="col-md-4">
        <asp:Label ID="Label2" runat="server"><span>Date</span><span class="text-red-500 mx-1">*</span></asp:Label>
        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" 
             TextMode="Date"></asp:TextBox>
         <asp:Label ID="Label6" runat="server"><span>Product Name</span><span class="text-red-500 mx-1">*</span></asp:Label>
          <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" placeholder="Select The Product">
              <asp:ListItem>One</asp:ListItem>
              <asp:ListItem>Two</asp:ListItem>
              <asp:ListItem Value="Three">three</asp:ListItem>
         </asp:DropDownList>
         <asp:Label ID="Label7" runat="server"><span>Issue Name</span><span class="text-red-500 mx-1">*</span></asp:Label>
        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
            <asp:ListItem>One</asp:ListItem>
            <asp:ListItem>Two</asp:ListItem>
            <asp:ListItem>Three</asp:ListItem>
         </asp:DropDownList>  
    </div>
     <div class="col-md-4">
        <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>
        <input type="text" id="timetxt" class="form-control" readonly/>
    </div>
    </div>
    <div class=" row mt-4">
    <div class="col-md-5">
    <asp:Label ID="Label9" runat="server" Text="Alternative Number"></asp:Label>
        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="Label13" runat="server" Text="Email Id"></asp:Label>
        <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
        
    </div>
    <div class="col-md-3">
    <asp:Label ID="Label10" runat="server" Text="Model No"></asp:Label>
        <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" Text="Searial No"></asp:Label>
        <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" Text="Any Mal Details"></asp:Label>
        <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server">
        </asp:DropDownList>
    </div>
    <div class="col-md-3">
     <asp:Label ID="Label11" runat="server" Text="Product Warranty"></asp:Label>
        <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="Label16" runat="server" Text="Service Warranty"></asp:Label>
        <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label17" runat="server" Text="Refrence Name"></asp:Label>
        <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    </div>

    <div class="">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary my-3 rounded-2xl hover:border border-red-50" Text="Button" />
    </div>
    </div>
    
    </div>
    </form>
</body>
</html>
