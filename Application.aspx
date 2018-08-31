<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="WebApplicationNTPC.Application" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ITAMS-NTPC</title>
</head>
 <style>
* {
    padding: 0px;
    margin: 0px auto;
        font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
}
header {
    border-bottom: 1px solid;
    border-color: dodgerblue;
}
.container {
    width: 960px;
    margin: 0px auto;
    height: 108px;
}
ul {
    float: right;
    list-style-type: none;
    display: inline;
    margin-top: 11px;
            height: 39px;
            width: 244px;
        }
nav>ul>li>a{
    text-decoration:none;
    color:black;
}
li {
    float: left;
    margin-right: 30px;
            height: 19px;
        }
#logo {
    font-family: cursive;
    float: left;
    margin-top: 30px;
}
.container1 {
    width: 960px;
    margin: 0px auto;
    height: 1000px;
}
.pannel{
        text-align: center;
    height: 100px;
    background-color: #337ab7;
    border-color: #337ab7;
    color: white;
    border-radius: 11px;
    padding-top: 63px;
}
a {
    color: #337ab7;
    text-decoration: none;
}
     a:hover {
         color: #23527c;
         text-decoration: underline;
     }
    </style>
<body>
    <form id="form1" runat="server">
    <header>
        <div class="container">
            <asp:Image ID="Image1" runat="server" Height="72px" Width="135px" AlternateText="Logo NTPC" ImageAlign="Middle" ImageUrl="~/Images/ntpc-logo-CCE1084F35-seeklogo.com.png" />
     
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Index.html">Home</a>
                &nbsp;&nbsp;&nbsp;
            <a href="Search.aspx">Search Asset</a> &nbsp;&nbsp;&nbsp;
            <a href="Allocation.aspx">Allocation</a>
        </div>
    </header>
    <main>
            <div class="container1">

                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="pannel">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="True" Text="IT Asset Management System"></asp:Label>
                </div>
                 <br />
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Serialno" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="417px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ShowFooter="True" Width="914px" AllowPaging="True">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField HeaderText="ItemType" SortExpression="ItemType">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("ItemType") %>'>
                                      <asp:ListItem>Select Type</asp:ListItem>
                                      <asp:ListItem>CPU</asp:ListItem>
                                      <asp:ListItem>Monitor</asp:ListItem>
                                      <asp:ListItem>Laptop</asp:ListItem>
                                      <asp:ListItem>Scanner</asp:ListItem>
                                      <asp:ListItem>Printer</asp:ListItem>
                                      <asp:ListItem>Network Components</asp:ListItem>
                                </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvEdIt" runat="server" 
                                        ErrorMessage="Item Type is a required field" Text="*"
                                        ControlToValidate="DropDownList1" ForeColor="Red" 
                                        InitialValue="Select Item Type">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ItemType") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="itmDrp" runat="server">
                                         <asp:ListItem>Select Type</asp:ListItem>
                                      <asp:ListItem>CPU</asp:ListItem>
                                      <asp:ListItem>Monitor</asp:ListItem>
                                      <asp:ListItem>Laptop</asp:ListItem>
                                      <asp:ListItem>Scanner</asp:ListItem>
                                      <asp:ListItem>Printer</asp:ListItem>
                                      <asp:ListItem>Network Components</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvInsIt" runat="server" 
                                        ErrorMessage="Item Type is a required field" Text="*"
                                        ControlToValidate="itmDrp" ForeColor="Red" ValidationGroup="Insert"
                                        InitialValue="Select Item Type">
                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Serialno" SortExpression="Serialno">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Serialno") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Serialno") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvInSn" runat="server" 
                                        ErrorMessage="Serial no is a required field" Text="*"
                                        ControlToValidate="TextBox10" ForeColor="Red" ValidationGroup="Insert"
                                        InitialValue="Select Serial no">
                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Brand" SortExpression="Brand">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Brand") %>'></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvEdBd" runat="server" 
                                        ErrorMessage="Brand is a required field" Text="*"
                                        ControlToValidate="TextBox2" ForeColor="Red" 
                                        InitialValue="Select Brand">
                                </asp:RequiredFieldValidator>                                
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Brand") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvInBd" runat="server" 
                                        ErrorMessage="Brand is a required field" Text="*"
                                        ControlToValidate="TextBox9" ForeColor="Red" ValidationGroup="Insert"
                                        InitialValue="Select Brand">
                                </asp:RequiredFieldValidator> 
                            </FooterTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Warranty" SortExpression="Warranty">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Warranty") %>'></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvEdWr" runat="server" 
                                        ErrorMessage="Wrranty is a required field" Text="*"
                                        ControlToValidate="TextBox3" ForeColor="Red" 
                                        InitialValue="Select Warranty">
                                </asp:RequiredFieldValidator> 
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Warranty") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvInWr" runat="server" 
                                        ErrorMessage="Wrranty is a required field" Text="*"
                                        ControlToValidate="TextBox8" ForeColor="Red" ValidationGroup="Insert"
                                        InitialValue="Select Warranty">
                                </asp:RequiredFieldValidator> 
                            </FooterTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Model" SortExpression="Model">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Model") %>'></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvEdMd" runat="server" 
                                        ErrorMessage="Model is a required field" Text="*"
                                        ControlToValidate="TextBox4" ForeColor="Red" 
                                        InitialValue="Select Model">
                                </asp:RequiredFieldValidator> 
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Model") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvInMd" runat="server" 
                                        ErrorMessage="Model is a required field" Text="*"
                                        ControlToValidate="TextBox7" ForeColor="Red" ValidationGroup="Insert"
                                        InitialValue="Select Model">
                                </asp:RequiredFieldValidator> 
                            </FooterTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date" SortExpression="Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvEdDt" runat="server" 
                                        ErrorMessage="Date is a required field" Text="*"
                                        ControlToValidate="TextBox5" ForeColor="Red" 
                                        InitialValue="Select Date">
                                </asp:RequiredFieldValidator> 
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvInDt" runat="server" 
                                        ErrorMessage="Date is a required field" Text="*"
                                        ControlToValidate="TextBox6" ForeColor="Red" ValidationGroup="Insert"
                                        InitialValue="Select Date">
                                </asp:RequiredFieldValidator> 
                            </FooterTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Operations" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:ValidationSummary ID="ValidationSummary1"  ValidationGroup="Insert" 
                ForeColor="Red" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" 
                 runat="server" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NTPCConnectionString %>" DeleteCommand="DELETE FROM [Detail] WHERE [Serialno] = @Serialno" InsertCommand="INSERT INTO [Detail] ([ItemType], [Serialno], [Brand], [Warranty], [Model], [Date]) VALUES (@ItemType, @Serialno, @Brand, @Warranty, @Model, @Date)" SelectCommand="SELECT * FROM [Detail]" UpdateCommand="UPDATE [Detail] SET [ItemType] = @ItemType, [Brand] = @Brand, [Warranty] = @Warranty, [Model] = @Model, [Date] = @Date WHERE [Serialno] = @Serialno">
                    <DeleteParameters>
                        <asp:Parameter Name="Serialno" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ItemType" Type="String" />
                        <asp:Parameter Name="Serialno" Type="String" />
                        <asp:Parameter Name="Brand" Type="String" />
                        <asp:Parameter Name="Warranty" Type="Int32" />
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ItemType" Type="String" />
                        <asp:Parameter Name="Brand" Type="String" />
                        <asp:Parameter Name="Warranty" Type="Int32" />
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="Serialno" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtInsert" OnClick="BtInsert_Click" runat="server" BorderStyle="Solid" EnableTheming="False" Font-Bold="True" Font-Size="Larger" ForeColor="Black" Text="Insert" ValidationGroup="Insert" Width="125px" Height="50px" />

            </div>
    </main>
    </form>
</body>
</html>
