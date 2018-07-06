<%@ Page Title="" Language="C#" MasterPageFile="~/MainClientMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        span.checked {
            color: #72afd2;
        }
        /*.upvote:hover{
            background-color:cadetblue;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- BEGIN PAGE BAR -->
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <a href="index-2.html">Home</a>
                <i class="fa fa-circle"></i>
            </li>
            <li>
                <span>Experiences Feed</span>
            </li>
        </ul>
        <div class="page-toolbar">
        </div>
    </div>
    <!-- END PAGE BAR -->
    <!-- BEGIN PAGE TITLE-->
    <div class="portlet-body">
        <div class="tabbable-custom ">
            <ul class="nav nav-tabs " style="margin-top: 10px;">
                <li class="">
                    <%--<a href="#tab_5_1" data-toggle="tab" aria-expanded="true">Experiences </a>--%>
                    <asp:Button ID="Button1" runat="server" Text="Experiences" class="btn btn-info" Width="150" Style="padding: 10px;" PostBackUrl="~/Default.aspx" />
                </li>
                <li class="">
                    <%--<a href="#tab_5_2" data-toggle="tab" aria-expanded="false">Forum </a>--%>
                    <asp:Button ID="Button2" runat="server" Text="Forum" class="btn btn-info" Width="150" Style="padding: 10px;" PostBackUrl="~/ForumFeed.aspx" />
                </li>
                <%--<li class="">
                    <asp:Button ID="Button3" runat="server" Text="Chat" class="btn btn-info" Width="150" Style="padding: 10px;" />
                </li>--%>
                <li class=" pull-right">
                    <%--<a href="#tab_5_3" data-toggle="tab" aria-expanded="false">Chat </a>--%>
                    <%--<asp:Button ID="Button5" runat="server" Text="+ Add Expereince" class="btn btn-info" Width="150" Style="padding: 10px;" />--%>
                    <a class="btn red btn-outline sbold btn btn-info" href="AddExperience.aspx" style="padding: 10px; width: 150px;">+ Add Expereince </a>
                </li>
            </ul>
            <div class="row" style="margin-top: 10px;">
                <div class="col-md-12">
                    <div class="input-group">
                        <asp:TextBox ID="txtMainSearch" runat="server" list="browsers" class="form-control" placeholder="Search for..."></asp:TextBox>
                        <datalist id="browsers">
                            <option value="asdf"></option>
                            <option value="e"></option>
                        </datalist>
                        <span class="input-group-btn">
                            <asp:Button ID="Button4" runat="server" Text="Search" class="btn blue uppercase bold" />
                        </span>
                    </div>
                </div>
            </div>
            <div class="tab-content col-md-9" style="margin-top: 10px; border: 0px solid; padding-left: 1px; padding-right: 10px;">
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
            <div class="tab-content col-md-3" style="margin-top: 10px; border: 0px solid; padding: 5px;">
                <div class="col-md-12" style="box-shadow: 0px 0px 2px #808080; margin-top: 15px; background-color: #e7505a; color: white;">
                    <div class="tab-pane active" style="height: 300px;">

                        <p><b>Upcoming Session</b></p>
                        <marquee direction="up" id="marquee" onmouseover="this.stop()" onmouseout="this.start()" scrollamount="2" scrolldelay="71" align="left" height="200">
                            <label>Session 1</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 2</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 3</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 1</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 2</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 3</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 1</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 2</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 3</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 1</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 2</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                            <hr />
                            <label>Session 3</label>
                            <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        </marquee>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <!-- END PAGE TITLE-->
    <!-- END PAGE HEADER-->
    <!-- BEGIN DASHBOARD STATS 1-->
    <div class="clearfix"></div>
    <!-- END DASHBOARD STATS 1-->
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
