<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="GSAFIRSTAPP.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/AdminLog.css" rel="stylesheet" />
    <div class="container">
        <div class="row">
            <div class="content">
                <div class="text">
                    Login Form
                    <center>
                        <img style="width: 100px;" src="img/adminuser.png" />
                    </center>
                </div>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label><br />
                <div class="field">
                    <asp:TextBox ID="Logname" runat="server" Height="50px" Width="258px" required="Please enter UserName" value="UserName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'UserName';}"></asp:TextBox>
                    <span class="fas fa-user"></span>
                </div>
                <br />
                <div class="field">
                    <asp:TextBox ID="LogPassword" runat="server" Height="50px" Width="258px" TextMode="Password" required="Please enter Password" value="Password" onfocus="this.value='';" onblur="if(this.value==''){this.value = 'Password';}"></asp:TextBox>
                    <span class="fas fa-locek"></span>
                </div>
                <div class="forgot-pass">
                    <a href="#">Forgot Password?</a>
                </div>
                <div class="form-group">
                    <asp:Button class="btn btn-success btn-block btn-lg col-md-12 " ID="btnlog" runat="server" Text="Sign in" OnClick="btnlog_Click" />
                </div>

                <div class="sign-up">
                    Not a member?
      
                </div>
            </div>
        </div>

    </div>


</asp:Content>
