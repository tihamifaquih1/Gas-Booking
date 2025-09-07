<%@ Page Title="" Language="C#" MasterPageFile="~/GasBooking.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GasBooking.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding100">
        <div class="container">
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom" style="color: #ffffff; background-color: #5cb85c;">
                        <div class="panel-title">
                            Sign In</div>
                    </div>
                    <div style="padding-top: 30px" class="panel-body">
                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12">
                        </div>
                        <div id="loginform" class="form-horizontal" role="form">
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox runat="server" ID="txtaadhaar" CssClass="form-control" placeholder="Enter Aadhaar No."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter 8 digit Aadhaar No." CssClass="alert alert-danger" ControlToValidate="txtaadhaar" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Aadhaar No. correctly." CssClass="alert alert-danger" ControlToValidate="txtaadhaar" Display="Dynamic" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                                
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Password" CssClass="alert alert-danger" ControlToValidate="txtpassword" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Password should be between 6 to 15 characters" CssClass="alert alert-danger" ControlToValidate="txtpassword" Display="Dynamic" ValidationExpression="^([a-zA-Z0-9@*#]{6,15})$"></asp:RegularExpressionValidator>
                                
                            </div>
                    
                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->
                                <div class="col-sm-12 controls">
                                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-success" OnClick="Button1_Click" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="padding-top: 15px; font-size: 85%">
                                        Don't have an account! <a href="register.aspx" >
                                            Register Here </a>
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
