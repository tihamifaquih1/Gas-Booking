<%@ Page Title="" Language="C#" MasterPageFile="~/GasBooking.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="GasBooking.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="padding100">
        <div class="container">
            <div id="adminloginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom" style="color:#fff;Background-color:#ca0e31">
                        <div class="panel-title">
                            Admin Login</div>
                    </div>
                    <div style="padding-top: 30px" class="panel-body">
                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12">
                        </div>
                        <div id="loginform" class="form-horizontal" role="form">
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox runat="server" ID="txtusername" CssClass="form-control" placeholder="Enter Username"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Username" class="alert alert-danger" role="alert" ControlToValidate="txtusername" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Username Correctly" class="alert alert-danger" role="alert" ControlToValidate="txtusername" Display="Dynamic" ValidationExpression="^([a-zA-Z0-9@*#]{6,15})$"></asp:RegularExpressionValidator>
                                
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" placeholder="Password"
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Password" class="alert alert-danger" role="alert" ControlToValidate="txtpassword" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Password should be between 6 to 15 characters" class="alert alert-danger" role="alert" ControlToValidate="txtpassword" Display="Dynamic" ValidationExpression="^([a-zA-Z0-9@*#]{6,15})$"></asp:RegularExpressionValidator>
                                
                            </div>
                    
                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->
                                <div class="col-sm-12 controls">
                                    <asp:Button ID="btnadminlogin" runat="server" Text="Login" CssClass="btn btn-danger" OnClick="btnadminlogin_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
