<%@ Page Title="" Language="VB" MasterPageFile="~/MainClientMasterPage.master" AutoEventWireup="false" CodeFile="CompanyProfile.aspx.vb" Inherits="CompanyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="Assets/pages/css/profile.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/global/plugins/ladda/ladda-themeless.min.css" rel="stylesheet" type="text/css" />
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- BEGIN PAGE HEADER-->
    <!-- BEGIN THEME PANEL -->

    <!-- END THEME PANEL -->
    <!-- BEGIN PAGE BAR -->
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <a href="index-2.html">Home</a>
                <i class="fa fa-circle"></i>
            </li>
            <li>
                <span>Google</span>
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
    <!-- END PAGE BAR -->
    <!-- BEGIN PAGE TITLE-->
    <!-- <h1 class="page-title"> User Profile -->
    <!-- <small></small> -->
    <!-- </h1> -->
    <!-- END PAGE TITLE-->
    <!-- END PAGE HEADER-->
    <div class="row">
        <div class="col-md-12" style="margin-top: 20px;">
            <!-- BEGIN PROFILE SIDEBAR -->
            <div class="profile-sidebar col-md-12" style="margin-bottom: 20px; width: 100%; height: auto; background-color: #fff; border: solid #5b9bd1 3px; box-shadow: 0px 0px 8px #808080;">
                <!-- PORTLET MAIN -->
                <div class="portlet light profile-sidebar-portlet col-md-3" style="margin-top: 70px;">
                    <!-- SIDEBAR USERPIC -->
                    <div class="profile-userpic">
                        <img src="Assets/CompanyLogo/google_PNG19635.png" class="img-responsive" style="width: 25%; border: solid 1px gray;" alt="">
                    </div>
                    <!-- END SIDEBAR USERPIC -->
                    <!-- SIDEBAR USER TITLE -->
                    <div class="profile-usertitle" style="margin-bottom: 25px;">
                        <div class="profile-usertitle-name">Google </div>
                        <div class="profile-usertitle-job"><a href="https://careers.google.com/" target="_blank">https://careers.google.com/ </a></div>
                    </div>
                    <!-- END SIDEBAR USER TITLE -->
                    <!-- SIDEBAR BUTTONS -->
                    <div class="profile-userbuttons">

                        <%--<button type="button" class="btn btn-circle green btn-sm">Interested</button>--%>
                    </div>
                    <!-- END SIDEBAR BUTTONS -->

                    <!-- END MENU -->
                </div>
                <!-- END PORTLET MAIN -->

                <!-- PORTLET MAIN -->
                <div class="portlet light col-md-9 ">
                    <!-- STAT -->
                    <div class="row list-separated profile-stat">
                        <div class="col-md-4 col-sm-4 col-xs-6">
                            <div class="uppercase profile-stat-title">620 </div>
                            <div class="uppercase profile-stat-text">Interested </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                            <div class="uppercase profile-stat-title">29.5 L </div>
                            <div class="uppercase profile-stat-text">CTC </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                            <div class="uppercase profile-stat-title">6 </div>
                            <div class="uppercase profile-stat-text">Selected </div>
                        </div>
                    </div>
                    <!-- END STAT -->
                    <%--<div class="col-md-12" >
                                            <div class="col-md-6 m-grid-col-middle" >
                                                <h4 class="profile-desc-title">Profiles</h4>
                                                <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-briefcase"></i>
                                                    <Strong style="color: #5b9bd1;">Platform Engineer</Strong>
                                                </div>
                                                <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-briefcase"></i>
                                                    <Strong style="color: #5b9bd1;">Network Engineer</Strong>
                                                </div>
                                                <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-briefcase"></i>
                                                    <Strong style="color: #5b9bd1;">Software Engineer</Strong>
                                                </div>
                                              
                                            </div>
                                            <div class="col-md-6 m-grid-col-middle" >
                                                <h4 class="profile-desc-title">Location</h4>

                                                
                                                <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-map-marker"></i>
                                                    <Strong style="color: #5b9bd1;">Pune</Strong>
                                                </div>
                                                <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-map-marker"></i>
                                                    <Strong style="color: #5b9bd1;">Hydrabad</Strong>
                                                </div>
                                                <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-map-marker"></i>
                                                    <Strong style="color: #5b9bd1;">Mumbai</Strong>
                                                </div>
                                                
                                            </div>
                                            
                                        </div>--%>

                    <div class="col-md-12  row list-separated" style="margin-top: 15px; margin-left: 15px;">
                        <div class="profile-desc-title" style="margin-bottom: 5px;">Description</div>
                        <div class="profile-desc-text">Apply for a job. Once you've found a job you want to apply for, click the APPLY button near the top of the job description. ... When you're signed in to a Google Account while applying for a job, only data that you explicitly put into the application form is sent to Google Staffing with your application.</div>
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

    <ul class="nav nav-tabs " style="margin-top: 10px;">
        <li class="">
            <%--<a href="#tab_5_1" data-toggle="tab" aria-expanded="true">Experiences </a>--%>
            <asp:Button ID="Button1" runat="server" Text="Experience" class="btn btn-info" Width="150" Style="padding: 10px;" />
        </li>

    </ul>


    <div class="tab-pane active" style="">
        <div style="padding: 10px; display: flex; flex-direction: row; box-shadow: 0px 0px 2px #808080; margin-top: 10px;">
            <div class="col-md-1" style="padding: 0px;">
                <img id="ContentPlaceHolder1_rptExpereince_imgCompany_0" class="img-circle img-circle" src="Assets/CompanyLogo/google_PNG19635.png" style="width: 100%;">
            </div>
            <div class="col-md-11" style="padding: 0px;">
                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnExpereinceID" id="ContentPlaceHolder1_rptExpereince_hdnExpereinceID_0" value="1">
                <div style="margin: 5px;">
                    <div style="display: flex; flex-direction: row;">
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnSelected" id="ContentPlaceHolder1_rptExpereince_hdnSelected_0" value="True">
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnCompanyID" id="ContentPlaceHolder1_rptExpereince_hdnCompanyID_0" value="11">
                        <a id="ContentPlaceHolder1_rptExpereince_lblCompanyName_0" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lblCompanyName','')" style="font-weight: bolder; font-size: 20px; margin-top: -7px; margin-bottom: -8px; color: #ed6b75; text-decoration: none;">Google</a>

                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnDesignationID" id="ContentPlaceHolder1_rptExpereince_hdnDesignationID_0" value="1">
                        <small><span style="margin-left: 10px;"><i class="fa fa-briefcase"></i></span><span>
                            <span id="ContentPlaceHolder1_rptExpereince_lblDesignation_0" style="margin-left: 5px;">Backend Developer</span></span></small>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnJobTypeID" id="ContentPlaceHolder1_rptExpereince_hdnJobTypeID_0" value="3">
                        <small><span style="margin-left: 10px;">●</span><span>
                            <span id="ContentPlaceHolder1_rptExpereince_lblJobType_0" style="margin-left: 5px;">Internship + Job</span></span></small>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnCOn" id="ContentPlaceHolder1_rptExpereince_hdnCOn_0" value="10-07-2016">
                        <span id="ContentPlaceHolder1_rptExpereince_lblTime_0" style="margin-left: auto; font-size: 13px; color: #c4c4c4">2 Year 3 Month 163 Days ago</span>
                    </div>
                    <div>

                        <span style="font-size: 12px;">by </span>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnUserID" id="ContentPlaceHolder1_rptExpereince_hdnUserID_0" value="4">
                        <a id="ContentPlaceHolder1_rptExpereince_lnkUserProfile_0" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkUserProfile','')" style="font-size: 12px;">ABC asd</a>
                    </div>
                    <div style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 15px; margin-bottom: 15px; margin-right: 250px;">
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoSelected_0" class="fa fa-square" style="color: green;"></i>
                            <span id="ContentPlaceHolder1_rptExpereince_lblSelected_0">Accepted Offer</span>
                        </div>
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoOAE_0" class="fa fa-square" style="color: yellow;"></i>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnOverallExperienceRate" id="ContentPlaceHolder1_rptExpereince_hdnOverallExperienceRate_0" value="4">
                            <span id="ContentPlaceHolder1_rptExpereince_lblOAE_0">Neutral Experience</span>
                        </div>
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoLOD_0" class="fa fa-square" style="color: #eb4133;"></i>
                            <span id="ContentPlaceHolder1_rptExpereince_lblLOD_0">Average Interview</span>
                        </div>
                    </div>
                    <div style="margin-top: 10px;">

                        <div style="box-shadow: 0px 0px 2px #808080; margin-top: 10px; padding: 5px;">
                            <div style="display: flex; flex-direction: row;">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnLevelOfDifficulty" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnLevelOfDifficulty_0" value="3">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnExpereinceRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnExpereinceRoundID_0" value="1">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnRoundID_0" value="1">
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_lblRound_0" style="color: royalblue; font-weight: bold;">Round 1 : Coding</span>
                            </div>
                            <div style="display: flex; flex-direction: column;">

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblQuestion_0" style="font-weight: bold; margin-top: 10px;">1 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblAnswer_0" style="margin-top: -1px; color: #8196a3">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</span>

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblQuestion_1" style="font-weight: bold; margin-top: 10px;">2 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblAnswer_1" style="margin-top: -1px; color: #8196a3">No Answer</span>

                            </div>
                        </div>

                        <div style="box-shadow: 0px 0px 2px #808080; margin-top: 10px; padding: 5px;">
                            <div style="display: flex; flex-direction: row;">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnLevelOfDifficulty" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnLevelOfDifficulty_1" value="4">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnExpereinceRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnExpereinceRoundID_1" value="2">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnRoundID_1" value="2">
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_lblRound_1" style="color: royalblue; font-weight: bold;">Round 2 : HR</span>
                            </div>
                            <div style="display: flex; flex-direction: column;">

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_1_lblQuestion_0" style="font-weight: bold; margin-top: 10px;">1 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_1_lblAnswer_0" style="margin-top: -1px; color: #8196a3">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</span>

                            </div>
                        </div>


                        <div style="padding: 10px; display: flex; flex-direction: column; text-align: justify;">
                            <span id="ContentPlaceHolder1_rptExpereince_Label21_0" style="font-weight: bolder; font-size: 15px; color: royalblue">Summary</span>
                            Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.
                        </div>
                        <hr style="margin-top: -3px;">
                        <div class="upvote col-md-2" style="padding: 5px; margin-bottom: -10px; margin-top: -20px;">
                            <a id="ContentPlaceHolder1_rptExpereince_lnkUpvote_0" class="btn btn-default" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkUpvote','')" style="border: 0px solid black;"><i class="fa fa-hand-o-up"></i>Upvote &nbsp;<span class="badge">&nbsp;10&nbsp;</span></a>
                        </div>
                        <div class="upvote col-md-2 pull-right" style="padding: 5px; margin-bottom: -10px; margin-top: -20px; margin-right: 20px;">
                            <a id="ContentPlaceHolder1_rptExpereince_lnkReportAbuse_0" class="btn btn-default" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkReportAbuse','')" style="border: 0px solid black; color: red;"><i class="fa fa-exclamation-circle" style="margin-right: 5px;"></i>Report Abuse</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane active" style="">
        <div style="padding: 10px; display: flex; flex-direction: row; box-shadow: 0px 0px 2px #808080; margin-top: 10px;">
            <div class="col-md-1" style="padding: 0px;">
                <img id="ContentPlaceHolder1_rptExpereince_imgCompany_0" class="img-circle img-circle" src="Assets/CompanyLogo/google_PNG19635.png" style="width: 100%;">
            </div>
            <div class="col-md-11" style="padding: 0px;">
                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnExpereinceID" id="ContentPlaceHolder1_rptExpereince_hdnExpereinceID_0" value="1">
                <div style="margin: 5px;">
                    <div style="display: flex; flex-direction: row;">
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnSelected" id="ContentPlaceHolder1_rptExpereince_hdnSelected_0" value="True">
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnCompanyID" id="ContentPlaceHolder1_rptExpereince_hdnCompanyID_0" value="11">
                        <a id="ContentPlaceHolder1_rptExpereince_lblCompanyName_0" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lblCompanyName','')" style="font-weight: bolder; font-size: 20px; margin-top: -7px; margin-bottom: -8px; color: #ed6b75; text-decoration: none;">Google</a>

                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnDesignationID" id="ContentPlaceHolder1_rptExpereince_hdnDesignationID_0" value="1">
                        <small><span style="margin-left: 10px;"><i class="fa fa-briefcase"></i></span><span>
                            <span id="ContentPlaceHolder1_rptExpereince_lblDesignation_0" style="margin-left: 5px;">Backend Developer</span></span></small>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnJobTypeID" id="ContentPlaceHolder1_rptExpereince_hdnJobTypeID_0" value="3">
                        <small><span style="margin-left: 10px;">●</span><span>
                            <span id="ContentPlaceHolder1_rptExpereince_lblJobType_0" style="margin-left: 5px;">Internship + Job</span></span></small>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnCOn" id="ContentPlaceHolder1_rptExpereince_hdnCOn_0" value="10-07-2016">
                        <span id="ContentPlaceHolder1_rptExpereince_lblTime_0" style="margin-left: auto; font-size: 13px; color: #c4c4c4">2 Year 3 Month 163 Days ago</span>
                    </div>
                    <div>

                        <span style="font-size: 12px;">by </span>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnUserID" id="ContentPlaceHolder1_rptExpereince_hdnUserID_0" value="4">
                        <a id="ContentPlaceHolder1_rptExpereince_lnkUserProfile_0" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkUserProfile','')" style="font-size: 12px;">ABC asd</a>
                    </div>
                    <div style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 15px; margin-bottom: 15px; margin-right: 250px;">
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoSelected_0" class="fa fa-square" style="color: green;"></i>
                            <span id="ContentPlaceHolder1_rptExpereince_lblSelected_0">Accepted Offer</span>
                        </div>
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoOAE_0" class="fa fa-square" style="color: yellow;"></i>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnOverallExperienceRate" id="ContentPlaceHolder1_rptExpereince_hdnOverallExperienceRate_0" value="4">
                            <span id="ContentPlaceHolder1_rptExpereince_lblOAE_0">Neutral Experience</span>
                        </div>
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoLOD_0" class="fa fa-square" style="color: #eb4133;"></i>
                            <span id="ContentPlaceHolder1_rptExpereince_lblLOD_0">Average Interview</span>
                        </div>
                    </div>
                    <div style="margin-top: 10px;">

                        <div style="box-shadow: 0px 0px 2px #808080; margin-top: 10px; padding: 5px;">
                            <div style="display: flex; flex-direction: row;">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnLevelOfDifficulty" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnLevelOfDifficulty_0" value="3">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnExpereinceRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnExpereinceRoundID_0" value="1">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnRoundID_0" value="1">
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_lblRound_0" style="color: royalblue; font-weight: bold;">Round 1 : Coding</span>
                            </div>
                            <div style="display: flex; flex-direction: column;">

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblQuestion_0" style="font-weight: bold; margin-top: 10px;">1 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblAnswer_0" style="margin-top: -1px; color: #8196a3">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</span>

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblQuestion_1" style="font-weight: bold; margin-top: 10px;">2 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblAnswer_1" style="margin-top: -1px; color: #8196a3">No Answer</span>

                            </div>
                        </div>

                        <div style="box-shadow: 0px 0px 2px #808080; margin-top: 10px; padding: 5px;">
                            <div style="display: flex; flex-direction: row;">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnLevelOfDifficulty" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnLevelOfDifficulty_1" value="4">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnExpereinceRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnExpereinceRoundID_1" value="2">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnRoundID_1" value="2">
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_lblRound_1" style="color: royalblue; font-weight: bold;">Round 2 : HR</span>
                            </div>
                            <div style="display: flex; flex-direction: column;">

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_1_lblQuestion_0" style="font-weight: bold; margin-top: 10px;">1 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_1_lblAnswer_0" style="margin-top: -1px; color: #8196a3">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</span>

                            </div>
                        </div>


                        <div style="padding: 10px; display: flex; flex-direction: column; text-align: justify;">
                            <span id="ContentPlaceHolder1_rptExpereince_Label21_0" style="font-weight: bolder; font-size: 15px; color: royalblue">Summary</span>
                            Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.
                        </div>
                        <hr style="margin-top: -3px;">
                        <div class="upvote col-md-2" style="padding: 5px; margin-bottom: -10px; margin-top: -20px;">
                            <a id="ContentPlaceHolder1_rptExpereince_lnkUpvote_0" class="btn btn-default" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkUpvote','')" style="border: 0px solid black;"><i class="fa fa-hand-o-up"></i>Upvote &nbsp;<span class="badge">&nbsp;10&nbsp;</span></a>
                        </div>
                        <div class="upvote col-md-2 pull-right" style="padding: 5px; margin-bottom: -10px; margin-top: -20px; margin-right: 20px;">
                            <a id="ContentPlaceHolder1_rptExpereince_lnkReportAbuse_0" class="btn btn-default" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkReportAbuse','')" style="border: 0px solid black; color: red;"><i class="fa fa-exclamation-circle" style="margin-right: 5px;"></i>Report Abuse</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane active" style="">
        <div style="padding: 10px; display: flex; flex-direction: row; box-shadow: 0px 0px 2px #808080; margin-top: 10px;">
            <div class="col-md-1" style="padding: 0px;">
                <img id="ContentPlaceHolder1_rptExpereince_imgCompany_0" class="img-circle img-circle" src="Assets/CompanyLogo/google_PNG19635.png" style="width: 100%;">
            </div>
            <div class="col-md-11" style="padding: 0px;">
                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnExpereinceID" id="ContentPlaceHolder1_rptExpereince_hdnExpereinceID_0" value="1">
                <div style="margin: 5px;">
                    <div style="display: flex; flex-direction: row;">
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnSelected" id="ContentPlaceHolder1_rptExpereince_hdnSelected_0" value="True">
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnCompanyID" id="ContentPlaceHolder1_rptExpereince_hdnCompanyID_0" value="11">
                        <a id="ContentPlaceHolder1_rptExpereince_lblCompanyName_0" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lblCompanyName','')" style="font-weight: bolder; font-size: 20px; margin-top: -7px; margin-bottom: -8px; color: #ed6b75; text-decoration: none;">Google</a>

                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnDesignationID" id="ContentPlaceHolder1_rptExpereince_hdnDesignationID_0" value="1">
                        <small><span style="margin-left: 10px;"><i class="fa fa-briefcase"></i></span><span>
                            <span id="ContentPlaceHolder1_rptExpereince_lblDesignation_0" style="margin-left: 5px;">Backend Developer</span></span></small>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnJobTypeID" id="ContentPlaceHolder1_rptExpereince_hdnJobTypeID_0" value="3">
                        <small><span style="margin-left: 10px;">●</span><span>
                            <span id="ContentPlaceHolder1_rptExpereince_lblJobType_0" style="margin-left: 5px;">Internship + Job</span></span></small>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnCOn" id="ContentPlaceHolder1_rptExpereince_hdnCOn_0" value="10-07-2016">
                        <span id="ContentPlaceHolder1_rptExpereince_lblTime_0" style="margin-left: auto; font-size: 13px; color: #c4c4c4">2 Year 3 Month 163 Days ago</span>
                    </div>
                    <div>

                        <span style="font-size: 12px;">by </span>
                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnUserID" id="ContentPlaceHolder1_rptExpereince_hdnUserID_0" value="4">
                        <a id="ContentPlaceHolder1_rptExpereince_lnkUserProfile_0" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkUserProfile','')" style="font-size: 12px;">ABC asd</a>
                    </div>
                    <div style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 15px; margin-bottom: 15px; margin-right: 250px;">
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoSelected_0" class="fa fa-square" style="color: green;"></i>
                            <span id="ContentPlaceHolder1_rptExpereince_lblSelected_0">Accepted Offer</span>
                        </div>
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoOAE_0" class="fa fa-square" style="color: yellow;"></i>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$hdnOverallExperienceRate" id="ContentPlaceHolder1_rptExpereince_hdnOverallExperienceRate_0" value="4">
                            <span id="ContentPlaceHolder1_rptExpereince_lblOAE_0">Neutral Experience</span>
                        </div>
                        <div>
                            <i id="ContentPlaceHolder1_rptExpereince_icoLOD_0" class="fa fa-square" style="color: #eb4133;"></i>
                            <span id="ContentPlaceHolder1_rptExpereince_lblLOD_0">Average Interview</span>
                        </div>
                    </div>
                    <div style="margin-top: 10px;">

                        <div style="box-shadow: 0px 0px 2px #808080; margin-top: 10px; padding: 5px;">
                            <div style="display: flex; flex-direction: row;">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnLevelOfDifficulty" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnLevelOfDifficulty_0" value="3">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnExpereinceRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnExpereinceRoundID_0" value="1">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl00$hdnRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnRoundID_0" value="1">
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_lblRound_0" style="color: royalblue; font-weight: bold;">Round 1 : Coding</span>
                            </div>
                            <div style="display: flex; flex-direction: column;">

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblQuestion_0" style="font-weight: bold; margin-top: 10px;">1 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblAnswer_0" style="margin-top: -1px; color: #8196a3">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</span>

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblQuestion_1" style="font-weight: bold; margin-top: 10px;">2 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_0_lblAnswer_1" style="margin-top: -1px; color: #8196a3">No Answer</span>

                            </div>
                        </div>

                        <div style="box-shadow: 0px 0px 2px #808080; margin-top: 10px; padding: 5px;">
                            <div style="display: flex; flex-direction: row;">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnLevelOfDifficulty" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnLevelOfDifficulty_1" value="4">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnExpereinceRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnExpereinceRoundID_1" value="2">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rptExpereince$ctl00$rptRound$ctl01$hdnRoundID" id="ContentPlaceHolder1_rptExpereince_rptRound_0_hdnRoundID_1" value="2">
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_lblRound_1" style="color: royalblue; font-weight: bold;">Round 2 : HR</span>
                            </div>
                            <div style="display: flex; flex-direction: column;">

                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_1_lblQuestion_0" style="font-weight: bold; margin-top: 10px;">1 : Find sum of all Integers</span>
                                <span id="ContentPlaceHolder1_rptExpereince_rptRound_0_rptQuestionAnswer_1_lblAnswer_0" style="margin-top: -1px; color: #8196a3">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</span>

                            </div>
                        </div>


                        <div style="padding: 10px; display: flex; flex-direction: column; text-align: justify;">
                            <span id="ContentPlaceHolder1_rptExpereince_Label21_0" style="font-weight: bolder; font-size: 15px; color: royalblue">Summary</span>
                            Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.
                        </div>
                        <hr style="margin-top: -3px;">
                        <div class="upvote col-md-2" style="padding: 5px; margin-bottom: -10px; margin-top: -20px;">
                            <a id="ContentPlaceHolder1_rptExpereince_lnkUpvote_0" class="btn btn-default" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkUpvote','')" style="border: 0px solid black;"><i class="fa fa-hand-o-up"></i>Upvote &nbsp;<span class="badge">&nbsp;10&nbsp;</span></a>
                        </div>
                        <div class="upvote col-md-2 pull-right" style="padding: 5px; margin-bottom: -10px; margin-top: -20px; margin-right: 20px;">
                            <a id="ContentPlaceHolder1_rptExpereince_lnkReportAbuse_0" class="btn btn-default" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$rptExpereince$ctl00$lnkReportAbuse','')" style="border: 0px solid black; color: red;"><i class="fa fa-exclamation-circle" style="margin-right: 5px;"></i>Report Abuse</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- END PROFILE CONTENT -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <script src="Assets/global/plugins/ladda/spin.min.js" type="text/javascript"></script>
    <script src="Aassets/global/plugins/ladda/ladda.min.js" type="text/javascript"></script>

    <script src="Assets/pages/scripts/profile.min.js" type="text/javascript"></script>
    <script src="Aassets/pages/scripts/timeline.min.js" type="text/javascript"></script>
    <script src="Assets/pages/scripts/ui-buttons-spinners.min.js" type="text/javascript"></script>

</asp:Content>
