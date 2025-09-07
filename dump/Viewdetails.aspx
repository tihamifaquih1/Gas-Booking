<%@ Page Title="" Language="C#" MasterPageFile="~/GasBooking.Master" AutoEventWireup="true" CodeBehind="Viewdetails.aspx.cs" Inherits="GasBooking.Viewdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding100">
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading panel-heading-custom clearfix" style="color: #fff; background-color: #525252;">
                    <a href="Default.aspx" class="btn btn-info"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back</a>
                    <h3 style="margin: auto; width: 80%; display: inline-block; text-align: center;">View Details</h3>
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-warning" Style="float: right" OnClick="btnlogout_Click"></asp:Button>
                </div>
                <div class="panel-body">
                    <div class="mainbox col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-heading panel-heading-custom" style="color: #fff; background-color: #2f81a6;">
                                <h3 class="panel-title" style="text-align: center;">Details</h3>

                            </div>

                            <div class="panel-body">
                                <asp:Label ID="Label1" CssClass="alert alert-success col-md-10 col-md-offset-1" Visible="false" runat="server"></asp:Label>
                                <div id="details_form" class="form-horizontal col-md-10 col-md-offset-1" style="border: 1px solid #ddd; margin-bottom: 15px; padding: 20px; border-radius: 16px;" role="form">
                                    <div class="form-group">
                                        <label for="txtaadhaar" class="col-md-3 control-label">
                                            Aadhaar No:</label>
                                        <div class="col-md-9">
                                            <asp:TextBox runat="server" ID="txtaadhaar" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtname" class="col-md-3 control-label">
                                            Name:</label>
                                        <div class="col-md-3">
                                            <asp:TextBox runat="server" ID="txtfname" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox runat="server" ID="txtmname" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox runat="server" ID="txtlname" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtmobile" class="col-md-3 control-label">
                                            Mobile No:</label>
                                        <div class="col-md-9">
                                            <asp:TextBox runat="server" ID="txtmobile" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtaddress" class="col-md-3 control-label">
                                            Address:</label>
                                        <div class="col-md-9">
                                            <asp:TextBox runat="server" ID="txtaddress" CssClass="form-control" Enabled="false" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtcity" class="col-md-3 control-label">
                                            City:</label>
                                        <div class="col-md-3">
                                            <asp:TextBox runat="server" ID="txtcity" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                        <label for="txtstate" class="col-md-1 control-label">
                                            State:</label>
                                        <div class="col-md-5">
                                            <asp:TextBox runat="server" ID="txtstate" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <!-- Button -->
                                        <div class="col-md-offset-3 col-md-9">
                                            <asp:Button runat="server" ID="btnedit" Text="Edit Profile" type="button" CssClass="btn btn-info" OnClick="btnedit_Click" />
                                            <asp:Button runat="server" ID="btnsave" Text="Save Profile" type="button" CssClass="btn btn-success" OnClick="btnsave_Click" />
                                            <asp:Button runat="server" ID="btncancel" Text="Cancel" type="button" CssClass="btn btn-warning" OnClick="btncancel_Click" />
                                        </div>
                                    </div>
                                </div>
                                <div class="gridview">
                                    <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="booking_id" DataSourceID="SqlDataSource1" Caption="Booking Details" CaptionAlign="Top" AllowSorting="True" EmptyDataText="No Booking Found" ShowHeaderWhenEmpty="True">
                                        <Columns>
                                            <asp:BoundField DataField="booking_id" HeaderText="Booking ID" InsertVisible="False" ReadOnly="True" SortExpression="booking_id" />
                                            <asp:BoundField DataField="aadhaar_no" HeaderText="Aadhaar No." SortExpression="aadhaar_no" />
                                            <asp:BoundField DataField="cylinder_type" HeaderText="Cylinder Type" SortExpression="cylinder_type" />
                                            <asp:BoundField DataField="phone_no" HeaderText="Mobile No." SortExpression="phone_no" />
                                            <asp:BoundField DataField="collection_mode" HeaderText="Collection Mode" SortExpression="collection_mode" />
                                            <asp:BoundField DataField="booking_status" HeaderText="Booking Status" SortExpression="booking_status" />
                                            <asp:BoundField DataField="booking_date" HeaderText="Booking Date" SortExpression="booking_date" />
                                            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                                        </Columns>
                                        <HeaderStyle BackColor="White" BorderColor="White" CssClass="info" />
                                    </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [booking_id], [aadhaar_no], [cylinder_type], [phone_no], [collection_mode], [booking_status], [booking_date], [price] FROM [booking] WHERE ([aadhaar_no] = @aadhaar_no)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="aadhaar_no" SessionField="sessionid" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>


                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
