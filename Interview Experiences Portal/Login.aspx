<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Metronic Admin Theme #1 | User Login 2</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Preview page of Metronic Admin Theme #1 for " name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
    <link href="Assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="Assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="Assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="Assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="Assets/pages/css/login-2.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />

</head>
<body class="login">
    <form method="post" runat="server">
    <!-- BEGIN LOGO -->
    <section class="col-md-6">
    </section>
    <section class="col-md-6" style="margin-top: -25px;">
        <div class="logo">
            <a href="index-2.html">
                <img src="Admin/img/dainex.png" style="width: 350px;" alt="DA-InEx" />
            </a>
        </div>

        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <asp:Panel ID="PanelLogin" runat="server" Visible="true">
                <!-- BEGIN LOGIN FORM -->
                <form class="login-form" method="post">
                    <div class="form-title">
                        <span class="form-title">User Login</span>

                    </div>
                    <div class="alert alert-danger display-hide">
                        <button class="close" data-close="alert"></button>
                        <span><asp:Literal ID="error" runat="server" Text="Enter any username and password."></asp:Literal></span>
                    </div>
                    <div class="form-group">
                        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                        <label class="control-label visible-ie8 visible-ie9">Username</label>
                        <asp:TextBox ID="txtLoginUserName" runat="server" class="form-control form-control-solid placeholder-no-fix" autocomplete="off" placeholder="Username" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Password</label>
                        <asp:TextBox ID="txtLoginPassword" runat="server" class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="form-actions">
                        <asp:Button ID="btnLogin" runat="server" Text="Sign In" class="btn red btn-block uppercase" OnClick="btnLogin_Click" />
                    </div>
                    <div class="form-actions">
                        <div class="pull-left">
                            <label class="rememberme mt-checkbox mt-checkbox-outline">
                                <asp:CheckBox ID="chkRememberMe" runat="server" />
                                Remember me
                           
                            <span></span>
                            </label>
                        </div>
                        <div class="pull-right forget-password-block">
                            <asp:LinkButton ID="forgetpassword"  runat="server" class="forget-password" OnClick="forgetpassword_Click">Forgot Password?</asp:LinkButton>
                        </div>
                    </div>

                    <div class="create-account">
                        <p>
                            <asp:LinkButton ID="lnkRegistration" runat="server" class="btn-primary btn" OnClick="lnkRegistration_Click">Create an account</asp:LinkButton>
                            <%--<a href="javascript:;"  id="register-btn"></a>--%>
                        </p>
                    </div>
                </form>
                <!-- END LOGIN FORM -->
            </asp:Panel>
            <asp:Panel ID="PanelSendLink" runat="server" Visible="false">
                <!-- BEGIN FORGOT PASSWORD FORM -->
                <form class="forget-form" method="post">
                    <div class="form-title">
                        <span class="form-title">Forget Password ?</span><br />
                        <span class="form-title" style="font-size:12px;">Enter your E-mail address or Username below to reset your password.</span>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtForgetEmail" runat="server" class="form-control placeholder-no-fix" autocomplete="off" placeholder="Email" name="email" ></asp:TextBox>
                    </div>
                    <div class="form-actions">
                        <asp:Button ID="btnSendLinkBack" runat="server" Text="Back" class="btn btn-default" OnClick="btnSendLinkBack_Click" />
                        <%--<button type="button" id="back-btn">Back</button>--%>
                        <asp:Button ID="btnForgetSendLink" runat="server" Text="Send Link" class="btn btn-primary uppercase pull-right" OnClick="btnForgetSendLink_Click" />
                    </div>
                </form>
                <!-- END FORGOT PASSWORD FORM -->
            </asp:Panel>
            <asp:Panel ID="PanelRegistration" runat="server" Visible="false">
                <!-- BEGIN REGISTRATION FORM -->
                <form class="register-form" method="post">
                    <div class="form-title">
                        <span class="form-title">Sign Up</span>
                    </div>
                    <p class="hint">Enter your personal details below: </p>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Student Id</label>
                        <asp:TextBox ID="txtDAID" runat="server" class="form-control placeholder-no-fix" AutoPostBack="true" placeholder="DA-IICT Student ID" OnTextChanged="txtDAID_TextChanged" ></asp:TextBox>
                        <asp:Label ID="errorDAID" Text="error" runat="server" style="color: #b20707; margin-top: 2px;" Visible="false" />
                    </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">First Name</label>
                        <asp:TextBox ID="txtFirstName" runat="server" class="form-control placeholder-no-fix" placeholder="First Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Last Name</label>
                        <asp:TextBox ID="txtLastName" runat="server" class="form-control placeholder-no-fix" placeholder="Last Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Gender</label>
                        <asp:DropDownList ID="ddGender" runat="server" class="form-control">
                            <asp:ListItem Value="" Text="Select Gender"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Male"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Female"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Others"></asp:ListItem>
                        </asp:DropDownList>
                        <%--<select name="country">
                            <option value="">Gender</option>
                            <option value="1"></option>
                            <option value="2"></option>
                            <option value="3"></option>
                        </select>--%>
                    </div>
                    <p class="hint">Enter your account details below: </p>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Username</label>
                        <asp:TextBox ID="txtUserName" runat="server" class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Password</label>
                        <asp:TextBox ID="txtSignUpPassword" runat="server" class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
                        <asp:TextBox ID="txtSignUpCPassword" runat="server" class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password"></asp:TextBox>
                    </div>
                    <div class="form-group margin-top-20 margin-bottom-20">
                        <label class="mt-checkbox mt-checkbox-outline">
                            <asp:CheckBox ID="chkAgree" runat="server" />
                            I agree to the
                       
                        <a href="javascript:;">Terms of Service </a>&
                       
                        <a href="javascript:;">Privacy Policy </a>
                            <span></span>
                        </label>
                        <div id="register_tnc_error"></div>
                    </div>
                    <div class="form-actions">
                        <asp:Button ID="btnRegistrationBack" runat="server" Text="Back" class="btn btn-default" OnClick="btnSendLinkBack_Click" />
                        <%--<button type="button" id="register-back-btn" class="btn btn-default">Back</button>--%>
                        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" class="btn red uppercase pull-right" OnClick="btnSignUp_Click" />
                        <%--<button type="submit" id="register-submit-btn">Submit</button>--%>
                        <%--<button class="btn btn-success mt-sweetalert" data-title="Sweet Alerts" data-message="Beautiful popup alerts" data-allow-outside-click="true" data-confirm-button-class="btn-success">Success Alert</button>--%>
                    </div>
                </form>
                <!-- END REGISTRATION FORM -->
            </asp:Panel>
            <asp:Panel ID="PanelForgetPassword" runat="server" Visible="false">
                <form class="login-form" method="post">
                    <div class="form-title">
                        <span class="form-title">Change Password</span>

                    </div>
                    <div class="alert alert-danger display-hide">
                        <button class="close" data-close="alert"></button>
                        <span>Enter any username and password. </span>
                    </div>
                    <div class="form-group">
                        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                        <label class="control-label visible-ie8 visible-ie9">Password</label>
                        <asp:TextBox ID="txtFPassword" runat="server" class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="New Password"></asp:TextBox>
                        <%--<input name="username" />--%>
                    </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Confirm Password</label>
                        <asp:TextBox ID="txtCPassword" runat="server" class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Confirm Password"></asp:TextBox>
                        
                    </div>
                    <div class="form-actions">
                        <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" class="btn red btn-block uppercase" OnClick="btnChangePassword_Click" />
                    </div>
                </form>
            </asp:Panel>
        </div>
    </section>
    <div class="copyright hide">2014 © Metronic. Admin Dashboard Template. </div>
    <!-- END LOGIN -->
    <!--[if lt IE 9]>
<script src="Assets/global/plugins/respond.min.js"></script>
<script src="Assets/global/plugins/excanvas.min.js"></script> 
<script src="Assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
    <!-- BEGIN CORE PLUGINS -->
    <script src="Assets/global/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="Assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN THEME GLOBAL SCRIPTS -->
    <script src="Assets/global/scripts/app.min.js" type="text/javascript"></script>
    <!-- END THEME GLOBAL SCRIPTS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="Assets/pages/scripts/login.min.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <!-- BEGIN THEME LAYOUT SCRIPTS -->
    <!-- END THEME LAYOUT SCRIPTS -->
    <script>
        $(document).ready(function () {
            $('#clickmewow').click(function () {
                $('#radio1003').attr('checked', 'checked');
            });
        })
        </script>
    <!-- Google Code for Universal Analytics -->
    <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../../../../../www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-37564768-1', 'auto');
        ga('send', 'pageview');
    </script>
    <!-- End -->

    <!-- Google Tag Manager -->
    <noscript><iframe src="http://www.googletagmanager.com/ns.html?id=GTM-W276BJ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':
                new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                    '../../../../../www.googletagmanager.com/gtm5445.html?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-W276BJ');</script>
    <!-- End -->
        </form>
</body>
</html>
