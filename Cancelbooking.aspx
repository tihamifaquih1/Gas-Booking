<%@ Page Title="" Language="C#" MasterPageFile="~/GasBooking.Master" AutoEventWireup="true" CodeBehind="Cancelbooking.aspx.cs" Inherits="GasBooking.Cancelbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding100">
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading panel-heading-custom clearfix" style="color: #fff; background-color: #525252;">
                    <a href="Default.aspx" class="btn btn-info"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back</a>
                    <h3 style="margin: auto; width: 80%; display: inline-block; text-align: center;">Cancel Booking</h3>
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-warning" Style="float: right" OnClick="btnlogout_Click"></asp:Button>
                </div>
                <div class="panel-body">
                    <div class="mainbox col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-heading panel-heading-custom" style="color: #fff; background-color: #670404;">
                                <h3 class="panel-title" style="text-align: center;">Booking Cancel Form</h3>

                            </div>
                            <div class="panel-body">
                                <div id="details_form" class="form-horizontal col-md-10 col-md-offset-1" style="border: 1px solid #ddd; margin-bottom: 15px; padding: 20px; border-radius: 16px;" role="form">
                                    <div class="form-group">
                                        <label for="txtaadhaar" class="col-md-3 control-label">
                                            Aadhaar No:</label>
                                        <div class="col-md-9">
                                            <asp:TextBox runat="server" ID="txtaadhaar" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label for="txtcanceldate" class="col-md-3 control-label">
                                            Date:</label>
                                        <div class="col-md-9">
                                            <asp:TextBox runat="server" ID="txtcanceldate" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="cancelgrid" >
                                    <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="booking_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Caption="Latest Bookings" EmptyDataText="No Latest Bookings to Cancel" ShowHeaderWhenEmpty="True">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="booking_id" HeaderText="Booking ID" InsertVisible="False" ReadOnly="True" SortExpression="booking_id" />
                                            <asp:BoundField DataField="aadhaar_no" HeaderText="Aadhaar No." SortExpression="aadhaar_no" />
                                            <asp:BoundField DataField="cylinder_type" HeaderText="Cylinder Type" SortExpression="cylinder_type" />
                                            <asp:BoundField DataField="collection_mode" HeaderText="Collection Mode" SortExpression="collection_mode" />
                                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="Price" />
                                            <asp:BoundField DataField="booking_date" HeaderText="Booking Date" SortExpression="booking_date" />
                                            <asp:BoundField DataField="booking_status" HeaderText="Booking Status" SortExpression="booking_status" />
                                            <asp:ButtonField CommandName="Update" HeaderText="Cancel Booking" ShowHeader="True" Text="Cancel Booking">
                                                <ControlStyle CssClass="btn btn-warning" ForeColor="White" />
                                            </asp:ButtonField>
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" UpdateCommand="UPDATE [booking] SET [booking_status]='canceled',[cancel_date]=@canceldate WHERE [booking_id]=@booking_id" SelectCommand="SELECT [booking_id], [aadhaar_no], [cylinder_type], [collection_mode], [price], [booking_date], [booking_status] FROM [booking] WHERE (([booking_status] = @booking_status) AND ([aadhaar_no] = @aadhaar_no))">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="booked" Name="booking_status" Type="String" />
                                            <asp:SessionParameter Name="aadhaar_no" SessionField="sessionid" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="booking_status" Type="String" />
                                            <asp:Parameter Name="booking_id" Type="Int32" />
                                            <asp:ControlParameter ControlID="txtcanceldate" Name="canceldate" Type="DateTime" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
