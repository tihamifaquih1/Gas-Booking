<%@ Page Title="" Language="C#" MasterPageFile="~/GasBooking.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="GasBooking.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding100">
        <div class="container">
            <div id="signupbox" style="margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom" style="color: #ffffff; background-color: #31b0d5;">
                        <div class="panel-title">
                            Register</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="registerform" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="txtaadhaar" class="col-md-3 control-label">
                                    Aadhaar No.</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtaadhaar" CssClass="form-control" placeholder="Enter 8 Digit Aadhaar Number" CausesValidation="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter 8 digit Aadhaar No." class="alert alert-danger" role="alert" ControlToValidate="txtaadhaar" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter only 8 digits" class="alert alert-danger" role="alert" ControlToValidate="txtaadhaar" Display="Dynamic" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtfname" class="col-md-3 control-label">
                                    First Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtfname" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter First Name" class="alert alert-danger" role="alert" ControlToValidate="txtfname" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter only characters" class="alert alert-danger" role="alert" ControlToValidate="txtfname" Display="Dynamic" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="txtmname" class="col-md-3 control-label">
                                    Middle Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtmname" CssClass="form-control" placeholder="Middle Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Middle Name." class="alert alert-danger" role="alert" ControlToValidate="txtmname" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter only characters" class="alert alert-danger" role="alert" ControlToValidate="txtmname" Display="Dynamic" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtlname" class="col-md-3 control-label">
                                    Last Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtlname" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Last Name." class="alert alert-danger" role="alert" ControlToValidate="txtlname" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please Enter only characters" class="alert alert-danger" role="alert" ControlToValidate="txtlname" Display="Dynamic" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="txtmobile" class="col-md-3 control-label">
                                    Mobile No.</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtmobile" CssClass="form-control" placeholder="Mobil No. (10 Digits)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please Enter Mobile No." class="alert alert-danger" role="alert" ControlToValidate="txtmobile" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Please Enter Mobile Number correctly" class="alert alert-danger" role="alert" ControlToValidate="txtmobile" Display="Dynamic" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="radiogender" class="col-md-3 control-label">
                                    Gender</label>
                                <div class="col-md-9">
                                    <asp:RadioButtonList ID="radiogender" CssClass="form-control customradio" runat="server" RepeatDirection="Horizontal" >
                                        <asp:ListItem>Male</asp:ListItem> 
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select Gender." class="alert alert-danger" role="alert" ControlToValidate="radiogender" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="txtaddress" class="col-md-3 control-label">
                                    Address</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtaddress" CssClass="form-control" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Address." class="alert alert-danger" role="alert" ControlToValidate="txtaddress" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="txtcity" class="col-md-3 control-label">
                                    City</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtcity" CssClass="form-control" placeholder="City"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter city" class="alert alert-danger" role="alert" ControlToValidate="txtcity" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please Enter only characters" class="alert alert-danger" role="alert" ControlToValidate="txtcity" Display="Dynamic" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="dropstates" class="col-md-3 control-label">
                                   State</label>
                                <div class="col-md-9">
                                    <asp:DropDownList ID="dropstates" CssClass="form-control" runat="server">
                                        <asp:ListItem>--Select State--</asp:ListItem>
                                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Assam</asp:ListItem>
                                        <asp:ListItem>Bihar</asp:ListItem>
                                        <asp:ListItem>Chandigarh</asp:ListItem>
                                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                                        <asp:ListItem>Dadar and Nagar Haveli</asp:ListItem>
                                        <asp:ListItem>Daman and Diu</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Goa</asp:ListItem>
                                        <asp:ListItem>Gujarat</asp:ListItem>
                                        <asp:ListItem>Haryana</asp:ListItem>
                                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Jharkhand</asp:ListItem>
                                        <asp:ListItem>Karnataka</asp:ListItem>
                                        <asp:ListItem>Kerala</asp:ListItem>
                                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                        <asp:ListItem>Maharashtra</asp:ListItem>
                                        <asp:ListItem>Manipur</asp:ListItem>
                                        <asp:ListItem>Meghalaya</asp:ListItem>
                                        <asp:ListItem>Mizoram</asp:ListItem>
                                        <asp:ListItem>Nagaland</asp:ListItem>
                                        <asp:ListItem>Odisha</asp:ListItem>
                                        <asp:ListItem>Punjab</asp:ListItem>
                                        <asp:ListItem>Rajasthan</asp:ListItem>
                                        <asp:ListItem>Sikkim</asp:ListItem>
                                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                                        <asp:ListItem>Telangana</asp:ListItem>
                                        <asp:ListItem>Tripura</asp:ListItem>
                                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                        <asp:ListItem>Uttarakhand</asp:ListItem>
                                        <asp:ListItem>West Bengal</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please select State" class="alert alert-danger" role="alert" ControlToValidate="dropstates" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtpassword" class="col-md-3 control-label">
                                    Password</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Password" class="alert alert-danger" role="alert" ControlToValidate="txtpassword" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Password should be between 6 to 15 characters" class="alert alert-danger" role="alert" ControlToValidate="txtpassword" Display="Dynamic" ValidationExpression="^([a-zA-Z0-9@*#]{6,15})$"></asp:RegularExpressionValidator>
                                </div>
                            </div>                           
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    <asp:button runat="server" id="btnregister" Text="Register" type="button" class="btn btn-info" OnClick="btnregister_Click" />
                                    <input  id="reset" type="reset"  value="Reset" class="btn btn-warning" style="margin-left:10px"/>
                                </div>
                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    </script>
    
</asp:Content>
