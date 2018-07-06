<%@ Page Title="" Language="C#" MasterPageFile="~/MainClientMasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="Assets/pages/css/profile.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/global/plugins/ladda/ladda-themeless.min.css" rel="stylesheet" type="text/css" />
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <style>
      
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN THEME PANEL -->

            <!-- END THEME PANEL -->
            <!-- BEGIN PAGE BAR -->
            <div style="background-color: white; display: inline-block;">
                <div class="page-bar">
                    <ul class="page-breadcrumb">
                        <li>
                            <a href="index-2.html">Home</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <span>
                                <asp:Label ID="lblDir" runat="server" Text=""></asp:Label>
                            </span>
                        </li>
                    </ul>
                    <div class="page-toolbar">
                        <div class="btn-group pull-right">
                            <button type="button" class="btn green btn-sm btn-outline dropdown-toggle" data-toggle="dropdown">
                                Actions
                                       
                    <i class="fa fa-angle-down"></i>
                            </button>
                            <ul class="dropdown-menu pull-right" role="menu">
                                <li>
                                    <a href="#">
                                        <i class="icon-bell"></i>Action</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-shield"></i>Another action</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-user"></i>Something else here</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <i class="icon-bag"></i>Separated link</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-12" style="margin-top: 20px;">
                        <!-- BEGIN PROFILE SIDEBAR -->
                        <div class="profile-sidebar col-md-12" style="margin-bottom: 20px; width: 100%; height: auto; background-color: #fff; border: solid #5b9bd1 3px; box-shadow: 0px 0px 8px #808080;">
                            <!-- PORTLET MAIN -->
                            <div class="portlet light profile-sidebar-portlet col-md-4" style="margin-top: 10px;">
                                <!-- SIDEBAR USERPIC -->
                                <div class="profile-userpic">
                                    <img src="../assets/pages/media/profile/profile_user.jpg" class="img-responsive" style="width: 25%;" alt="">
                                </div>
                                <!-- END SIDEBAR USERPIC -->
                                <!-- SIDEBAR USER TITLE -->
                                <div class="profile-usertitle" style="margin-bottom: 25px;">
                                    <div class="profile-usertitle-name">
                                        <asp:Label ID="lblName" runat="server" Text="Chirag Chevli"></asp:Label>
                                    </div>
                                    <div class="profile-usertitle-job">
                                        <asp:Label ID="lblUsrNm" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <!-- END SIDEBAR USER TITLE -->
                                <!-- SIDEBAR BUTTONS -->
                                <div class="profile-userbuttons">
                                    <button type="button" class="btn btn-circle green btn-sm">M.sc IT &#9679; 1st </button>
                                    <button type="button" class="btn btn-circle green btn-sm">Follow</button>
                                    <button type="button" class="btn btn-circle green btn-sm">Message</button>
                                </div>
                                <!-- END SIDEBAR BUTTONS -->

                                <!-- END MENU -->
                            </div>
                            <!-- END PORTLET MAIN -->

                            <!-- PORTLET MAIN -->
                            <div class="portlet light col-md-8 ">
                                <!-- STAT -->
                                <div class="row list-separated profile-stat">
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="uppercase profile-stat-title">61 </div>
                                        <div class="uppercase profile-stat-text">Followers </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="uppercase profile-stat-title">15 </div>
                                        <div class="uppercase profile-stat-text">Experiences </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="uppercase profile-stat-title">12 </div>
                                        <div class="uppercase profile-stat-text">Questions </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="uppercase profile-stat-title">12 </div>
                                        <div class="uppercase profile-stat-text">Session </div>
                                    </div>
                                </div>
                                <!-- END STAT -->
                                <div class="col-md-12">
                                    <div class="col-md-4">
                                        <h4 class="profile-desc-title">Personal Info</h4>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-check-circle"></i>
                                            <strong style="color: #5b9bd1;">
                                                <asp:Label ID="lblDAID" runat="server" Text=""></asp:Label>
                                            </strong>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-user"></i>
                                            <strong style="color: #5b9bd1;">
                                                <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                                            </strong>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-envelope"></i>
                                            <asp:LinkButton ID="LinkButton20" PostBackUrl="mailto:chevlichirag@gmail.com" Text="" runat="server"></asp:LinkButton>
                                            <%--<a href="mailto:chevlichirag@gmail.com">marcus@gmail.com</a>--%>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-phone"></i>
                                            <strong style="color: #5b9bd1;">
                                                <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                                            </strong>
                                        </div>

                                    </div>
                                    <div class="col-md-4">
                                        <h4 class="profile-desc-title" style="font-size: 16px;">Professional Accounts</h4>


                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-github"></i>
                                            <asp:LinkButton ID="lkbtnGit" PostBackUrl="" Style="text-decoration: none;" Text="" runat="server"></asp:LinkButton>
                                            <%--<a href="http://www.twitter.com/keenthemes/">Github</a>--%>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-linkedin"></i>
                                            <asp:LinkButton ID="lkbtnLinkedIn" Style="text-decoration: none;" PostBackUrl="" Text="" runat="server"></asp:LinkButton>
                                            <%--<a href="http://www.facebook.com/keenthemes/">Linkedin</a>--%>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-stack-overflow "></i>
                                            <asp:LinkButton ID="lkbtnStack" Style="text-decoration: none;" Text="" PostBackUrl="" runat="server"></asp:LinkButton>
                                            <%--<a href="http://www.facebook.com/keenthemes/">StackOverFlow</a>--%>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-file-text "></i>
                                            <asp:LinkButton ID="lkbtnResume" Style="text-decoration: none;" PostBackUrl="" Text="" runat="server"></asp:LinkButton>
                                            <%--<a href="http://www.facebook.com/keenthemes/">Resume</a>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <h4 class="profile-desc-title">Coding Accounts</h4>


                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-code"></i>
                                            <asp:LinkButton ID="lkbtnHackerEarth" Text="" PostBackUrl="" runat="server"></asp:LinkButton>
                                            <%--<a href="http://www.twitter.com/keenthemes/">HeakderEarth</a>--%>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-code"></i>
                                            <asp:LinkButton ID="lkbtnHackerRank" Text="" PostBackUrl="" runat="server"></asp:LinkButton>
                                            <%--<a href="http://www.facebook.com/keenthemes/">HeakderRank</a>--%>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-code "></i>
                                            <asp:LinkButton ID="lkbtnCodeChef" Text="" PostBackUrl="" runat="server"></asp:LinkButton>
                                            <%--<a href="http://www.facebook.com/keenthemes/">CodeChef</a>--%>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-code "></i>
                                            <asp:LinkButton ID="lkbtnCodeForce" Text="" PostBackUrl="" runat="server"></asp:LinkButton>
                                            <%--<a href="http://www.facebook.com/keenthemes/">CodeForce</a>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END PORTLET MAIN -->


                        </div>
                        <!-- END BEGIN PROFILE SIDEBAR -->
                        <!-- BEGIN PROFILE CONTENT -->
                        <div class="profile-content">
                        </div>
                    </div>
                </div>



                <div class="well well-sm" style="display: none;">
                    <button type="button" class="btn btn-circle green btn-sm" style="margin-bottom: 10px; background-color: gray; opacity: 0.5;">Job List</button>
                    <div class="panel panel-success">
                        <div class="panel-heading" style="color: white; background-color: gray; opacity: 0.5;">
                            <h3 class="panel-title">
                                <label style="font-size: 30px; font-weight: bolder;">Direct i  </label>
                                <br />
                                <span style="font-size: 15px;"><i class="fa fa-briefcase"></i></span><span style="font-size: 15px;">&nbsp Platform Engineer</span>
                                <span style="font-size: 15px;">&nbsp&nbsp<i class="fa fa-map-marker"></i></span><span style="font-size: 15px;">&nbsp Pune</span><br />
                                <span style="font-size: 15px;"><i class="fa fa-clock-o"></i></span><span style="font-size: 15px;">&nbsp May 2009 – May 2010 &#9679; 1 yr 1 mo</span><br />
                        </div>
                        <div class="panel-body">Summury of Job </div>
                    </div>
                    <div class="panel panel-success">
                        <div class="panel-heading" style="color: white; background-color: gray; opacity: 0.5;">
                            <h3 class="panel-title">
                                <label style="font-size: 30px; font-weight: bolder;">Amazon  </label>
                                <br />
                                <span style="font-size: 15px;"><i class="fa fa-briefcase"></i></span><span style="font-size: 15px;">&nbsp Software Engineer</span>
                                <span style="font-size: 15px;">&nbsp&nbsp<i class="fa fa-map-marker"></i></span><span style="font-size: 15px;">&nbsp Pune</span><br />
                                <span style="font-size: 15px;"><i class="fa fa-clock-o"></i></span><span style="font-size: 15px;">&nbsp May 2009 – May 2010 &#9679; 1 yr 1 mo</span><br />
                        </div>
                        <div class="panel-body">Summury of Job </div>
                    </div>
                </div>



                <div class="well well-sm">
                    <%--<button type="button" data-loading-text="Loading..." class="btn demo-loading-btn blue mt-ladda-btn ladda-button mt-progress-demo" data-style="slide-right">
            <span class="ladda-label">Experience</span>
        </button>--%>

                    <asp:Button ID="Button1" runat="server" data-loading-text="Loading..." Text="Experience" class="btn demo-loading-btn blue mt-ladda-btn ladda-button mt-progress-demo" data-style="slide-right" />

                    <%--<button type="button" data-loading-text="Loading..." class="btn demo-loading-btn blue mt-ladda-btn ladda-button mt-progress-demo" data-style="slide-right">
            <span class="ladda-label">Forum</span>
        </button>--%>

                    <asp:Button ID="Button2" runat="server" Text="Forum" data-loading-text="Loading..." class="btn demo-loading-btn blue mt-ladda-btn ladda-button mt-progress-demo" data-style="slide-right" />

                    <%--<button type="button" data-loading-text="Loading..." class="btn demo-loading-btn blue mt-ladda-btn ladda-button mt-progress-demo" data-style="slide-right">
            <span class="ladda-label">Session</span>
        </button>--%>
                    <%--<asp:Button ID="Button3" runat="server" data-toggle="modal" href="#large" Text="Your Interests" data-loading-text="Loading..." class="btn demo-loading-btn blue mt-ladda-btn ladda-button mt-progress-demo" data-style="slide-right" />--%>
                    <a class="btn purple btn-outline sbold pull-right" data-toggle="modal" href="#large">Add Your Interested Company</a>
                </div>

                <div class="tab-content col-md-12" style="margin-top: 10px; border: 0px solid; padding-left: 1px; padding-right: 10px;">
                    <asp:Repeater ID="rptExpereince" runat="server" OnItemCommand="rptExpereince_ItemCommand">
                        <ItemTemplate>
                            <div class="tab-pane active" style="">
                                <div style="padding: 10px; display: flex; flex-direction: row; box-shadow: 0px 0px 2px #808080; margin-top: 10px;">
                                    <div class="col-md-1" style="padding: 0px;">
                                        <asp:Image ID="imgCompany" runat="server" class="img-circle img-circle" Width="100%" />
                                    </div>
                                    <div class="col-md-11" style="padding: 0px;">
                                        <asp:HiddenField ID="hdnExpereinceID" runat="server" Value='<%# Eval("ExeperienecesID") %>' />
                                        <div style="margin: 5px;">
                                            <div style="display: flex; flex-direction: row;">
                                                <asp:HiddenField ID="hdnSelected" runat="server" Value='<%# Eval("IsSelected") %>' />
                                                <asp:HiddenField ID="hdnCompanyID" runat="server" Value='<%# Eval("CompanyID") %>' />
                                                <asp:LinkButton ID="lblCompanyName" runat="server" Style="font-weight: bolder; font-size: 20px; margin-top: -7px; margin-bottom: -8px; color: #ed6b75; text-decoration: none;" CommandName="ViewCompanyProfile" CommandArgument='<%# Eval("CompanyID") %>'></asp:LinkButton>
                                                <%--<asp:Label ID="" runat="server" Text=""></asp:Label>--%>
                                                <asp:HiddenField ID="hdnDesignationID" runat="server" Value='<%# Eval("DesignationID") %>' />
                                                <small><span style="margin-left: 10px;"><i class="fa fa-briefcase"></i></span><span>
                                                    <asp:Label ID="lblDesignation" runat="server" Text="" Style="margin-left: 5px;"></asp:Label></span></small>
                                                <asp:HiddenField ID="hdnJobTypeID" runat="server" Value='<%# Eval("JobTypeID") %>' />
                                                <small><span style="margin-left: 10px;">&#9679;</span><span>
                                                    <asp:Label ID="lblJobType" runat="server" Text="Software Engineer" Style="margin-left: 5px;"></asp:Label></span></small>
                                                <asp:HiddenField ID="hdnCOn" runat="server" Value='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' />
                                                <asp:Label ID="lblTime" runat="server" Text='' Style="margin-left: auto; font-size: 13px; color: #c4c4c4"></asp:Label>
                                            </div>
                                            <div>
                                                <%--<asp:Label ID="lblAddedBy" runat="server" Text="" Style="font-size: 12px;"></asp:Label>--%>
                                                <span style="font-size: 12px;">by </span>
                                                <asp:HiddenField ID="hdnUserID" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                <asp:LinkButton ID="lnkUserProfile" runat="server" Style="font-size: 12px;" CommandName="ViewUserProfile"></asp:LinkButton>
                                            </div>
                                            <div style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 15px; margin-bottom: 15px; margin-right: 250px;">
                                                <div>
                                                    <i id="icoSelected" class="fa fa-square" style="color: green;" runat="server"></i>
                                                    <asp:Label ID="lblSelected" runat="server" Text="Accepted Offer"></asp:Label>
                                                </div>
                                                <div>
                                                    <i id="icoOAE" class="fa fa-square" style="color: yellow;" runat="server"></i>
                                                    <asp:HiddenField ID="hdnOverallExperienceRate" runat="server" Value='<%# Eval("OverallExperienceRate") %>' />
                                                    <asp:Label ID="lblOAE" runat="server" Text="Declined Offer"></asp:Label>
                                                </div>
                                                <div>
                                                    <i id="icoLOD" class="fa fa-square" runat="server" style="color: #eb4133;"></i>
                                                    <asp:Label ID="lblLOD" runat="server" Text="No Offer"></asp:Label>
                                                </div>
                                            </div>
                                            <div style="margin-top: 10px;">
                                                <asp:Repeater ID="rptRound" runat="server">
                                                    <ItemTemplate>
                                                        <div style="box-shadow: 0px 0px 2px #808080; margin-top: 10px; padding: 5px;">
                                                            <div style="display: flex; flex-direction: row;">
                                                                <asp:HiddenField ID="hdnLevelOfDifficulty" runat="server" Value='<%# Eval("LevelOfDifficulty") %>' />
                                                                <asp:HiddenField ID="hdnExpereinceRoundID" runat="server" Value='<%# Eval("ExperiencesRoundID") %>' />
                                                                <asp:HiddenField ID="hdnRoundID" runat="server" Value='<%# Eval("RoundID") %>' />
                                                                <asp:Label ID="lblRound" runat="server" Style="color: royalblue; font-weight: bold;" Text='<%# "Round " + (Container.ItemIndex + 1) + " : " %>'></asp:Label>
                                                            </div>
                                                            <div style="display: flex; flex-direction: column;">
                                                                <asp:Repeater ID="rptQuestionAnswer" runat="server">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblQuestion" runat="server" Style="font-weight: bold; margin-top: 10px;" Text='<%# (Container.ItemIndex + 1) + " : " + Eval("Question") %>'></asp:Label>
                                                                        <asp:Label ID="lblAnswer" runat="server" Text='<%# Eval("Answer") %>' Style="margin-top: -1px; color: #8196a3"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>

                                                <div style="padding: 10px; display: flex; flex-direction: column; text-align: justify;">
                                                    <asp:Label ID="Label21" runat="server" Text="Summary" Style="font-weight: bolder; font-size: 15px; color: royalblue"></asp:Label>
                                                    <asp:Literal ID="ltrSummary" runat="server" Text="Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat."></asp:Literal>
                                                </div>
                                                <hr style="margin-top: -3px;" />
                                                <div class="upvote col-md-2" style="padding: 5px; margin-bottom: -10px; margin-top: -20px;">
                                                    <asp:LinkButton ID="lnkUpvote" runat="server" class="btn btn-default" Style="border: 0px solid black;"><i class="fa fa-hand-o-up"></i> Upvote &nbsp;<span class="badge">&nbsp;10&nbsp;</span></asp:LinkButton>
                                                </div>
                                                <div class="upvote col-md-2 pull-right" style="padding: 5px; margin-bottom: -10px; margin-top: -20px; margin-right: 20px;">
                                                    <asp:LinkButton ID="lnkReportAbuse" runat="server" class="btn btn-default" Style="border: 0px solid black; color: red;"><i class="fa fa-exclamation-circle" style="margin-right:5px;"></i>Report Abuse</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>


                <!-- /.modal -->
                <div class="modal fade bs-modal-lg" id="large" tabindex="-1" role="dialog" aria-hidden="true">

                    <div class="modal-dialog modal-lg">

                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h3 class="modal-title" style="font-size: 20px;"><strong>Please Select Minimun 5 Interested Companies</strong></h3>
                            </div>

                            <div style="display: flex; flex-direction: row; flex-wrap: wrap;">
                                <asp:Repeater ID="rptcheckCompany" runat="server">
                                    <ItemTemplate>
                                        <div style="padding: 20px;">
                                            <div class="col-md-12" style="padding: 5px; border: 1px solid #808080; opacity: 0.8;">
                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("CompanyID") %>' />
                                                <asp:CheckBox ID="chkbxCompanyName" class="form-control" runat="server" Text='<%# Eval("Name") %>' />
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>

                            <div class="modal-footer">

                                <button type="button" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                                <%--<button type="button" class="btn green">Save changes</button>--%>
                                <asp:Button ID="btnAddICompany" runat="server" Text="Save changes" OnClick="btnAddICompany_Click" />
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>



                <!-- END PROFILE CONTENT -->
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnAddICompany" />
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <script src="Assets/global/plugins/ladda/spin.min.js" type="text/javascript"></script>
    <script src="Aassets/global/plugins/ladda/ladda.min.js" type="text/javascript"></script>

    <script src="Assets/pages/scripts/profile.min.js" type="text/javascript"></script>
    <script src="Aassets/pages/scripts/timeline.min.js" type="text/javascript"></script>
    <script src="Assets/pages/scripts/ui-buttons-spinners.min.js" type="text/javascript"></script>


</asp:Content>
