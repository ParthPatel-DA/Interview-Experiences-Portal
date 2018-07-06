<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>DA-InEx | Login</title>
    <link rel="shortcut icon" href="img/dainexlogo.ico" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="Client Assets/bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="Client Assets/bower_components/font-awesome/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="Client Assets/bower_components/Ionicons/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="Client Assets/dist/css/AdminLTE.min.css" />
    <!-- iCheck -->
    <link rel="stylesheet" href="Client Assets/plugins/iCheck/square/blue.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
</head>
<body class="hold-transition login-page" style="background-color: #24497a; overflow: hidden;">
    <form id="form1" runat="server">
        <div class="login-box">
            <div class="login-logo">
                <a style="color: #91afd5;"><img src="img/dainex.png" width="380" /></a>
            </div>
            <asp:Panel ID="errormailer" runat="server" class="alert alert-error alert-dismissable fade in" Visible="false">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Opps!</strong> User Email or Password Invalied.
            </asp:Panel>
            <!-- /.login-logo -->
            <asp:Panel ID="PanelLogin" runat="server">
                <div class="login-box-body" style="padding-top: 30px; border-radius: 6px; box-shadow: 0px 0px 10px #b3cae6;">
                    <p class="login-box-msg" style="margin-bottom: 20px;">Sign in for Administrator</p>

                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtUserName" runat="server" type="text" class="form-control" placeholder="Email"></asp:TextBox>
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row" style="margin: 50px 0px;">
                        <div class="col-xs-8">
                            <div class="checkbox icheck">
                                <label>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-xs-4">
                            <asp:Button ID="btnLogin" runat="server" Text="Sign In" class="btn btn-primary btn-block btn-flat" OnClick="btnLogin_Click" />
                        </div>
                        <!-- /.col -->
                    </div>
                    <asp:LinkButton ID="lnkForgetPassword" runat="server" OnClick="lnkForgetPassword_Click">I forgot my password</asp:LinkButton>
                </div>
            </asp:Panel>
            <!-- /.login-box-body -->

            <!-- /.Forget-logo -->
            <asp:Panel ID="PanelForgetLink" runat="server" Visible="false">
                <div class="login-box-body" style="padding-top: 30px; border-radius: 6px; box-shadow: 0px 0px 10px #b3cae6;">
                    <p class="login-box-msg" style="margin-bottom: 20px;">Forget Password for Administrator</p>

                    <asp:Panel ID="PanelForgetEmail" runat="server" Visible="true">
                        <div class="form-group has-feedback">
                            <asp:TextBox ID="txtSendUserName" runat="server" type="text" class="form-control" placeholder="Password"></asp:TextBox>
                            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                        </div>
                        <div class="row" style="margin: 50px 0px;">
                            <div class="col-xs-7"></div>
                            <!-- /.col -->
                            <div class="col-xs-5">
                                <asp:Button ID="btnSendLink" runat="server" class="btn btn-primary btn-block btn-flat" Text="Send Link" OnClick="btnSendLink_Click" />
                            </div>
                            <!-- /.col -->
                        </div>
                        <asp:LinkButton ID="lnkLogin" runat="server" OnClick="lnkLogin_Click">Login</asp:LinkButton>
                    </asp:Panel>
                    <asp:Panel ID="PanelForgetMsg" runat="server" Visible="false">
                        <div class="form-group has-feedback" style="margin-bottom: 40px;">
                            <p class="text-center" style="color: #b70505; font-size: larger;">
                                Please Check Your Mailid.
                        <br />
                                We are sending a Link.
                            </p>
                        </div>
                        <asp:LinkButton ID="lnkResendLink" runat="server" OnClick="btnSendLink_Click">Resend Link</asp:LinkButton>
                    </asp:Panel>

                </div>
            </asp:Panel>
            <!-- /.Forget-box-body -->

            <!-- /.Password-logo -->
            <asp:Panel ID="PanelForgetPassword" runat="server" Visible="false">
                <div class="login-box-body" style="padding-top: 30px; border-radius: 6px; box-shadow: 0px 0px 10px #b3cae6;">
                    <p class="login-box-msg" style="margin-bottom: 20px;">Forget Password for Administrator</p>

                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtFPassword" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtCPassword" runat="server" type="password" class="form-control" placeholder="Confirm Password"></asp:TextBox>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row" style="margin: 50px 0px;">
                        <div class="col-xs-6"></div>
                        <!-- /.col -->
                        <div class="col-xs-6">
                            <asp:Button ID="btnChangePassword" runat="server" class="btn btn-primary btn-block btn-flat" Text="Change Password" OnClick="btnChangePassword_Click" />
                        </div>
                        <!-- /.col -->
                    </div>
                    <asp:LinkButton ID="lnkLogin2" runat="server" OnClick="lnkLogin_Click">Login</asp:LinkButton>
                </div>
            </asp:Panel>
            <!-- /.Password-box-body -->

            <asp:Panel ID="PanelSetUserName" runat="server" Visible="false">
                <div class="login-box-body" style="padding-top: 30px; border-radius: 6px; box-shadow: 0px 0px 10px #b3cae6;">
                    <p class="login-box-msg" style="margin-bottom: 20px;">Set UserName And Password for Administrator</p>

                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtSetUserName" runat="server" type="text" class="form-control" placeholder="Email"></asp:TextBox>
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtSetPassword" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtSetCPassword" runat="server" type="password" class="form-control" placeholder="Re-type Your Password"></asp:TextBox>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row" style="margin: 50px 0px;">
                        <div class="col-xs-8"></div>
                        <div class="col-xs-4">
                            <asp:Button ID="btnSetUserName" runat="server" Text="Submit" class="btn btn-primary btn-block btn-flat" OnClick="btnSetUserName_Click" />
                        </div>
                        <!-- /.col -->
                    </div>
                </div>
            </asp:Panel>

        </div>
        <!-- /.login-box -->

        <!-- jQuery 3 -->
        <script src="Client Assets/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="Client Assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="Client Assets/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' /* optional */
                });
            });
</script>
    </form>
</body>
</html>
