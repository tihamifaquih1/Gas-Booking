<%@ Page Title="" Language="C#" MasterPageFile="~/GasBooking.Master" AutoEventWireup="true" CodeBehind="Booknow.aspx.cs" Inherits="GasBooking.Booknow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding100">
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading panel-heading-custom clearfix" style="color: #fff; background-color: #525252;">
                    <a href="Default.aspx" class="btn btn-info"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back</a>
                    <h3 style="margin: auto; width: 80%; display: inline-block; text-align: center;">Book Now</h3>
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-warning" Style="float: right" OnClick="btnlogout_Click"></asp:Button>
                </div>
                <div class="panel-body">
                    <div class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-heading panel-heading-custom" style="color: #fff; background-color: #337ab7;">
                                <h3 class="panel-title" style="text-align: center;">Booking Form</h3>

                            </div>
                            <div class="panel-body">
                                <div id="registerform" class="form-horizontal" role="form">
                                    <div class=" col-md-10 col-md-offset-1 alert-danger" runat="server" id="booking_alert" visible="false" style="text-align:center;border: 1px solid;border-radius: 30px;margin-bottom:20px;">
                                        <div>
                                            <h5>Bookings can be done with the interval of 21 days.</h5>
                                            <asp:Label runat="server" ID="lbldays"></asp:Label> Days remaining for Next booking.
                                        </div>
                                    </div>
                                <div class="form-group">
                                    <label for="txtaadhaar" class="col-md-3 control-label">
                                        Booking Date:</label>
                                    <div class="col-md-3">
                                        <asp:Label runat="server" ID="lbldate" Text="DD-MM-YYYY" CssClass="form-control"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Label runat="server" ID="lblyear" Text="YYYY" CssClass="form-control" Visible="False"></asp:Label>
                                    </div>

                                </div>
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
                                    <label for="lblrecentdate" class="col-md-3 control-label">
                                        Subsidy Consumed:</label>
                                    <div class="col-md-2">
                                        <asp:Label runat="server" ID="lblsubsidy" CssClass="form-control"></asp:Label>
                                    </div>

                                    <div class="col-md-3">
                                        <asp:Label runat="server" ID="Label1" CssClass="form-control" Text="Out Of 12"></asp:Label>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="radiokg" class="col-md-3 control-label">
                                        Cylinder Type:</label>
                                    <div class="col-md-9">
                                        <asp:RadioButtonList ID="radiokg" CssClass="form-control customradio" runat="server" CausesValidation="True" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="radiokg_SelectedIndexChanged">
                                            <asp:ListItem>14.2 Kg (Subsidised)</asp:ListItem>
                                            <asp:ListItem>14.2 Kg (Non-Subsidised)</asp:ListItem>
                                            <asp:ListItem>19 kg</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="radiokg" CssClass="alert alert-danger" Display="Dynamic">Please select Cylinder type</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="radiomode" class="col-md-3 control-label">
                                        Collection Mode:</label>
                                    <div class="col-md-9">
                                        <asp:RadioButtonList ID="radiomode" CssClass="form-control customradio" runat="server" CausesValidation="True" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="radiomode_SelectedIndexChanged">
                                            <asp:ListItem Selected="True">Home Delivery</asp:ListItem>
                                            <asp:ListItem>Collection at Agency office</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="alert alert-danger" Display="Dynamic" ErrorMessage="Please select Collection Mode" ControlToValidate="radiomode"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="txtprice" class="col-md-3 control-label">
                                        Price:</label>
                                    <div class="col-md-9">
                                        <asp:TextBox runat="server" ID="txtprice" CssClass="form-control" Enabled="false"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <!-- Button -->
                                    <div class="col-md-offset-3 col-md-9">
                                        <asp:Button runat="server" ID="btnbook" Text="Book Now" type="button" CssClass="btn btn-info" OnClick="btnbook_Click" />
                                        <a href="Default.aspx" id="cancel" class="btn btn-warning" style="margin-left: 10px">Cancel</a>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
