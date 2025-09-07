<%@ Page Title="" Language="C#" MasterPageFile="~/GasBooking.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="GasBooking.users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="padding100">
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading panel-heading-custom clearfix" style="color: #fff; background-color: #2892b1;">
                    <h3 class="panel-title" style="display: inline-block; padding: 6px;">Welcome
                        <asp:Label ID="lblusername" runat="server"></asp:Label></h3>
                    <a href="Adminpanel.aspx" class="btn btn-info" >Bookings</a>
                    <a href="canceledbookings.aspx" class="btn btn-info" >Canceled Bookings</a>
                    <a href="deliveredbookings.aspx" class="btn btn-info">Delivered Bookings</a>
                    <a href="users.aspx" class="btn btn-info" style="background-color:#2892b1">Users</a>
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-warning" Style="float: right" OnClick="btnlogout_Click" ></asp:Button>
                </div>
                <div class="panel-body" style="padding-top: 30px">
                    <div class="col-md-12" style="overflow-x:auto;">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Caption="Users" CellPadding="4" CssClass="table table-bordered" DataKeyNames="aadhaar_no" DataSourceID="SqlDataSource1" EmptyDataText="Users not Found" ForeColor="#333333" GridLines="None" PageSize="20" ShowFooter="True" ShowHeaderWhenEmpty="True">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="aadhaar_no" HeaderText="Aadhaar No" ReadOnly="True" SortExpression="aadhaar_no" />
                                <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                                <asp:BoundField DataField="middle_name" HeaderText="Middle Name" SortExpression="middle_name" />
                                <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                <asp:BoundField DataField="phone_no" HeaderText="Phone No" SortExpression="phone_no" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customers] ORDER BY [first_name], [middle_name], [last_name]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
