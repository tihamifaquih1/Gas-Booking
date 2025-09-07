<%@ Page Title="" Language="C#" MasterPageFile="~/GasBooking.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GasBooking.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding100">
        <div class="container">
            <div class="container" style="margin-bottom:20px">
                <asp:Label ID="lblsuccessbook" CssClass="alert alert-success col-md-10 col-md-offset-1" Visible="false" runat="server"></asp:Label>
            </div>
           <div class="panel panel-default">
              <div class="panel-heading panel-heading-custom clearfix" style="color:#fff;Background-color:#525252;">
                <h3 class="panel-title" style="display:inline-block; padding:6px;">Welcome <asp:Label ID="lblaadhaar" runat="server"></asp:Label></h3>
                <asp:button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-warning" style="float:right" OnClick="btnlogout_Click"></asp:button>
              </div>
              <div class="panel-body" style="padding-top:30px">
                <div class="row">
                  <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                      <img src="images/gasblue.png" style="width:170px; height:200px"  />
                      <div class="caption">
                        <h3 style="text-align:center"><a href="Booknow.aspx" class="btn btn-primary btn-lg" role="button">Book Now</a></h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                      <img src="images/gasorange.png" style="width:170px; height:200px" />
                      <div class="caption">
                        <h3 style="text-align:center"><a href="Cancelbooking.aspx" class="btn btn-danger btn-lg" role="button">Cancel Booking</a></h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                      <img src="images/profile.png" style="width:200px; height:200px" />
                      <div class="caption">
                  
                        <h3 style="text-align:center"><a href="Viewdetails.aspx" class="btn btn-success btn-lg" role="button">View Details</a></h3>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </div>
</asp:Content>
