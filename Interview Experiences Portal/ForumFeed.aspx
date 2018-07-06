<%@ Page Title="" Language="C#" MasterPageFile="~/MainClientMasterPage.master" AutoEventWireup="true" CodeFile="ForumFeed.aspx.cs" Inherits="ForumFeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        span.checked {
            color: #72afd2;
        }

        <link href="../assets/global/plugins/bootstrap-summernote/summernote.css" rel="stylesheet" type="text/css" / >
        /*.upvote:hover{
            background-color:cadetblue;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN THEME PANEL -->
            <div class="theme-panel hidden-xs hidden-sm">
                <div class="toggler-close"></div>
                <div class="theme-options">
                    <div class="theme-option theme-colors clearfix">
                        <span>THEME COLOR </span>
                        <ul>
                            <li class="color-default current tooltips" data-style="default" data-container="body" data-original-title="Default"></li>
                            <li class="color-darkblue tooltips" data-style="darkblue" data-container="body" data-original-title="Dark Blue"></li>
                            <li class="color-blue tooltips" data-style="blue" data-container="body" data-original-title="Blue"></li>
                            <li class="color-grey tooltips" data-style="grey" data-container="body" data-original-title="Grey"></li>
                            <li class="color-light tooltips" data-style="light" data-container="body" data-original-title="Light"></li>
                            <li class="color-light2 tooltips" data-style="light2" data-container="body" data-html="true" data-original-title="Light 2"></li>
                        </ul>
                    </div>
                    <div class="theme-option">
                        <span>Theme Style </span>
                        <select class="layout-style-option form-control input-sm">
                            <option value="square" selected="selected">Square corners</option>
                            <option value="rounded">Rounded corners</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span>Layout </span>
                        <select class="layout-option form-control input-sm">
                            <option value="fluid" selected="selected">Fluid</option>
                            <option value="boxed">Boxed</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span>Header </span>
                        <select class="page-header-option form-control input-sm">
                            <option value="fixed" selected="selected">Fixed</option>
                            <option value="default">Default</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span>Top Menu Dropdown</span>
                        <select class="page-header-top-dropdown-style-option form-control input-sm">
                            <option value="light" selected="selected">Light</option>
                            <option value="dark">Dark</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span>Sidebar Mode</span>
                        <select class="sidebar-option form-control input-sm">
                            <option value="fixed">Fixed</option>
                            <option value="default" selected="selected">Default</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span>Sidebar Menu </span>
                        <select class="sidebar-menu-option form-control input-sm">
                            <option value="accordion" selected="selected">Accordion</option>
                            <option value="hover">Hover</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span>Sidebar Style </span>
                        <select class="sidebar-style-option form-control input-sm">
                            <option value="default" selected="selected">Default</option>
                            <option value="light">Light</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span>Sidebar Position </span>
                        <select class="sidebar-pos-option form-control input-sm">
                            <option value="left" selected="selected">Left</option>
                            <option value="right">Right</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span>Footer </span>
                        <select class="page-footer-option form-control input-sm">
                            <option value="fixed">Fixed</option>
                            <option value="default" selected="selected">Default</option>
                        </select>
                    </div>
                </div>
            </div>
            <!-- END THEME PANEL -->
            <!-- BEGIN PAGE BAR -->
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <a href="index-2.html">Home</a>
                        <i class="fa fa-circle"></i>
                    </li>
                    <li>
                        <span>Dashboard</span>
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
                            <asp:Button ID="Button1" runat="server" Text="Experiences" class="btn btn-info" Width="150" Style="padding: 10px;" />
                        </li>
                        <li class="">
                            <%--<a href="#tab_5_2" data-toggle="tab" aria-expanded="false">Forum </a>--%>
                            <asp:Button ID="Button2" runat="server" Text="Forum" class="btn btn-info" Width="150" Style="padding: 10px;" />
                        </li>
                        <li class="">
                            <%--<a href="#tab_5_3" data-toggle="tab" aria-expanded="false">Chat </a>--%>
                            <asp:Button ID="Button3" runat="server" Text="Chat" class="btn btn-info" Width="150" Style="padding: 10px;" />
                        </li>
                        <li class=" pull-right">
                            <%--<a href="#tab_5_3" data-toggle="tab" aria-expanded="false">Chat </a>--%>
                            <%--<asp:Button ID="Button5" runat="server" Text="+ Add Question" class="btn btn-info" Width="150"  Style="padding: 10px;" data-toggle="modal" />--%>
                            <a class="btn red btn-outline sbold btn btn-info" data-toggle="modal" href="#basic" style="padding: 10px; width: 150px;">+ Add Question </a>
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
                        <div class="tab-pane active" style="">
                            <asp:Repeater ID="rptQue" runat="server" OnItemCommand="rptQue_ItemCommand">
                                <ItemTemplate>

                                    <div style="padding: 10px; box-shadow: 0px 0px 2px #808080; margin-top: 10px;">

                                        <div class="col-md-1" style="padding: 0px;">
                                            <asp:Image ID="Image1" runat="server" src="Assets/pages/media/users/avatar1.jpg" class="img-circle img-circle" />
                                        </div>
                                        <div class="col-md-11" style="padding: 0px;">
                                            <div style="margin: 5px;">
                                                <div style="display: flex; flex-direction: row;">
                                                    <asp:HiddenField ID="hdnQuestionID" runat="server" Value='<%# Eval("QuestionID") %>' />
                                                    <asp:Label ID="lblQuestion" runat="server" Style="font-weight: bolder; font-size: 20px; margin-top: -7px; margin-bottom: -8px; color: #ed6b75;" Text='<%# Eval("Question") %>'></asp:Label>
                                                    <asp:HiddenField ID="hdnTime" runat="server" Value='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' />
                                                    <asp:Label ID="lblTime" runat="server" Text='' Style="margin-left: auto; font-size: 13px; color: #c4c4c4"></asp:Label>
                                                </div>
                                                <div>
                                                    <%--<asp:Label ID="lblAddedBy" runat="server" Text="" Style="font-size: 12px;"></asp:Label>--%>
                                                    <span style="font-size: 12px;">by </span>
                                                    <asp:HiddenField ID="hdnUser" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                    <asp:LinkButton ID="LinkButton3" runat="server" Style="font-size: 12px; text-decoration: none;" CommandName="ViewUserProfile" CommandArgument='<%# Eval("CreatedBy") %>'><%--Parth Patel--%></asp:LinkButton>
                                                </div>
                                                <asp:Repeater ID="rptAns" runat="server" OnItemCommand="rptAns_ItemCommand">
                                                    <ItemTemplate>
                                                        <div style="margin-top: 10px;">
                                                            <div style="padding: 10px; box-shadow: 0px 0px 2px #808080; margin-top: 10px;">

                                                                <div class="col-md-1" style="padding: 0px;">
                                                                    <img id="ContentPlaceHolder1_Image1" src="Assets/pages/media/users/avatar1.jpg" class="img-circle img-circle">
                                                                </div>
                                                                <div class="col-md-11" style="padding: 0px;">
                                                                    <div style="margin: 5px;">
                                                                        <div style="display: flex; flex-direction: row;">
                                                                            <div>
                                                                                <span style="font-size: 15px;">By </span>
                                                                                <asp:HiddenField ID="hdnUserAns" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                                                <%--<a id="ContentPlaceHolder1_LinkButton3" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$LinkButton3','')" style="font-size: 15px; color: royalblue; font-weight: bold; text-decoration: none;"></a>--%>
                                                                                <asp:LinkButton ID="LinkButton334" runat="server" Style="font-size: 15px; color: royalblue; font-weight: bold; text-decoration: none;" CommandName="ViewUserProfile" CommandArgument='<%# Eval("CreatedBy") %>'><%--Parth Patel--%></asp:LinkButton>
                                                                            </div>
                                                                            <asp:HiddenField ID="hdnAnsTime" runat="server" Value='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' />
                                                                            <%--<span id="ContentPlaceHolder1_lblTime" style="margin-left: auto; font-size: 13px; color: #c4c4c4"></span>--%>
                                                                            <asp:Label ID="lblAnsTime" runat="server" Text='' Style="margin-left: auto; font-size: 13px; color: #c4c4c4"></asp:Label>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <div>
                                                                    <asp:HiddenField ID="hdnAns" runat="server" Value='<%# Eval("AnswerID") %>' />
                                                                    <asp:Label ID="lblAnswer" runat="server" Text='<%# Eval("Answer") %>'></asp:Label>
                                                                </div>
                                                                <hr />
                                                                <div style="display: flex; flex-direction: row;">
                                                                    <div style="padding: 5px; margin-bottom: -10px; margin-top: -20px;">
                                                                        <asp:LinkButton ID="LinkButton6" runat="server" class="btn btn-default" Style="border: 0px solid black;"><i class="fa fa-hand-o-up"></i>Upvote<span class="badge" style="margin-left: 5px;"><asp:Label ID="lblUpvoteCount" runat="server" Text="25"></asp:Label></span></asp:LinkButton>
                                                                    </div>
                                                                    <div class="upvote" style="padding: 5px; margin-bottom: -10px; margin-top: -20px; margin-left: auto;">
                                                                        <asp:LinkButton ID="LinkButton7" runat="server" class="btn btn-default" Style="border: 0px solid black; color: red;"><i class="fa fa-exclamation-circle" style="margin-right:5px;"></i>Report Abuse</asp:LinkButton>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>

                                            </div>
                                        </div>

                                        <div>
                                            <asp:LinkButton ID="LinkButton10" runat="server" class="" Style="border: 0px solid black; margin-left: 75px; text-decoration: none;" CommandName="PostAnswer" CommandArgument='<%# Eval("QuestionID") %>'><i class="fa fa-plus"></i> Post Answer</asp:LinkButton><br />
                                            <hr />
                                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-default" Style="border: 0px solid black; margin-top: -10px;"><i class="fa fa-hand-o-up"></i>Upvote<span class="badge" style="margin-left: 5px;"><asp:Label ID="Label6" runat="server" Text="25"></asp:Label></span></asp:LinkButton>
                                            <asp:LinkButton ID="lblReportAbuse" runat="server" class="btn btn-default pull-right" Style="margin-top: -10px; border: 0px solid black; color: red;"><i class="fa fa-exclamation-circle" style="margin-right:5px;"></i>Report Abuse</asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="tab-pane" id="tab_5_2">
                            <p>Howdy, I'm in Section 2. </p>
                            <p>
                                Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie
                                                        consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.
                            </p>
                            <p>
                                <a class="btn green" href="ui_tabs_accordions_navs.html#tab_5_2" target="_blank">Activate this tab via URL </a>
                            </p>
                        </div>
                        <div class="tab-pane" id="tab_5_3">
                            <p>Howdy, I'm in Section 3. </p>
                            <p>
                                Duis autem vel eum iriure dolor in hendrerit in vulputate. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel
                                                        eum iriure dolor in hendrerit in vulputate velit esse molestie consequat
                            </p>
                            <p>
                                <a class="btn yellow" href="ui_tabs_accordions_navs.html#tab_5_3" target="_blank">Activate this tab via URL </a>
                            </p>
                        </div>
                    </div>
                    <div class="tab-content col-md-3" style="margin-top: 10px; border: 0px solid; padding: 5px;">
                        <div class="col-md-12" style="box-shadow: 0px 0px 2px #808080; margin-top: 15px; background-color: #e7505a; color: white;">
                            <div class="tab-pane active" style="height: 300px;">

                                <p><b>News/Updates</b></p>
                                <%--<marquee direction="up" scrollamount="10" truespeed><p style="text-align:justify;">
                        <label>Session 1</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 2</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 3</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 1</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 2</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 3</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 1</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 2</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 3</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 1</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 2</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                        <label>Session 3</label>
                        <label>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</label>
                    </p></marquee>--%>
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

                        
                        <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Add Question</h4>
                                    </div>
                                    <div class="modal-body">
                                        <asp:TextBox ID="txtAddQuestion" runat="server" TextMode="MultiLine" class="form-control-focus col-md-12 input-group form-control " focus Style="font-family: 'Comic Sans MS'; font-size: 18px; font-weight: 700" placeholder="Start your question with What , How , Why , etc. "></asp:TextBox>

                                    </div>
                                    <div class="modal-footer">

                                        <asp:Button ID="btnClose" runat="server" Text="Close" class="btn dark btn-outline" data-dismiss="modal" />
                                        <%--<asp:Button ID="btnAddQuestion" runat="server" Text="Add Question" class="btn green" OnClick="btnAddQuestion_Click" />--%>
                                        <asp:Button ID="btnAddQuestion" runat="server" Text="Add Question" class="btn green" OnClick="btnAddQuestion_Click" />
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <div class="modal fade" id="basic1" tabindex="-1" role="basic" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                        <h4 class="modal-title">Post Answer</h4>
                                    </div>
                                    <div class="modal-body">
                                        <asp:TextBox ID="txtAnswer" runat="server" TextMode="MultiLine" class="form-control-focus col-md-12 input-group form-control " focus Style="font-family: 'Comic Sans MS'; font-size: 18px; font-weight: 700" placeholder="Add Answer"></asp:TextBox>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                                        <asp:Button ID="btnPostAnswer" class="btn green" runat="server" Text="Post Answer" OnClick="btnPostAnswer_Click" />
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PAGE TITLE-->
            <!-- END PAGE HEADER-->
            <!-- BEGIN DASHBOARD STATS 1-->
            <div class="clearfix"></div>
            <!-- END DASHBOARD STATS 1-->
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnAddQuestion" />
            <asp:PostBackTrigger ControlID="btnPostAnswer" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
