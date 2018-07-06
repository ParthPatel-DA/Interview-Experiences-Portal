<%@ Page Title="" Language="C#" MasterPageFile="~/MainClientMasterPage.master" AutoEventWireup="true" CodeFile="AddExperience.aspx.cs" Inherits="AddExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

           
            <!-- BEGIN PAGE BAR -->
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <a href="index-2.html">Home</a>
                        <i class="fa fa-circle"></i>
                    </li>
                    <li>
                        <span>Form Stuff</span>
                    </li>
                </ul>
                <div class="page-toolbar">
                    
                </div>
            </div>
            <!-- END PAGE BAR -->
            <!-- BEGIN PAGE TITLE-->

            <!-- END PAGE TITLE-->
            <!-- END PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">

                    <div class="portlet light bordered" id="form_wizard_1">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class=" icon-layers font-red"></i>
                                <span class="caption-subject font-red bold uppercase">Form Wizard -
                                               
                            <span class="step-title">Step
                                <asp:Literal ID="ltrStep" runat="server" Text="1"></asp:Literal>
                                of 4 </span>
                                </span>
                            </div>
                        </div>
                        <div class="portlet-body form">

                            <div class="form-wizard">
                                <div class="form-body">


                                    <div class="tab-content">
                                        <asp:Panel ID="Panel1" runat="server">
                                            <div class="tab-pane">
                                                <h3 class="block">Provide General Details of Interview</h3>
                                                <div class="form-group col-md-12">
                                                    <label class="control-label col-md-3">
                                                        Comapny Name
                                                                   
                                                <span class="required">* </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList ID="ddCompanyName" runat="server" name="cmpany_name" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddCompanyName_SelectedIndexChanged"></asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-12">
                                                    <label class="control-label col-md-3">
                                                        Desigantion
                                                                   
                                                <span class="required">* </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList ID="ddDesignation" runat="server" name="designation" class="form-control"></asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-12">
                                                    <label class="control-label col-md-3">
                                                        Year
                                                                   
                                                <span class="required">* </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txtYear" runat="server" name="year" placeholder="Enter Year in which you give interview" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-12">
                                                    <label class="control-label col-md-3">
                                                        In-Campus
                                                                   
                                                <span class="required">* </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <div class="radio-list">
                                                            <label>
                                                                <asp:RadioButton ID="rdIncampus" runat="server" data-title="yes" Text="Yes" GroupName="incampus" Checked="true" />
                                                            </label>
                                                            <label>
                                                                <asp:RadioButton ID="rdOffcampus" runat="server" data-title="no" Text="No" GroupName="incampus" />
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-12">
                                                    <label class="control-label col-md-3">
                                                        Job-Type
                                                                   
                                                <span class="required">* </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList ID="ddJobType" runat="server" name="designation" class="form-control"></asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-12">
                                                    <label class="control-label col-md-3">
                                                        Is-Selected
                                                                   
                                                <span class="required">* </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <div class="radio-list">
                                                            <label>
                                                                <asp:RadioButton ID="rdSelected" runat="server" data-title="yes" Text="Yes" GroupName="isselected" OnCheckedChanged="rdSelected_CheckedChanged" AutoPostBack="true" />
                                                            </label>
                                                            <label>
                                                                <asp:RadioButton ID="rdNotSelected" runat="server" data-title="no" Text="No" GroupName="isselected" OnCheckedChanged="rdNotSelected_CheckedChanged" Checked="true" AutoPostBack="true" />
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <asp:Panel ID="PanelCTC" runat="server" Visible="false">
                                                    <div class="form-group col-md-12">
                                                        <label class="control-label col-md-3">
                                                            CTC
                                                                   
                                                
                                                        </label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txtCTC" runat="server" type="number" placeholder="Enter CTC you got/offered" class="form-control" Text="0"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <%--<div class="form-group col-md-12">
                                                        <label class="control-label col-md-3">
                                                            Select City
                                                                   
                                                <span class="required">* </span>
                                                        </label>
                                                        <div class="col-md-4">
                                                            <asp:DropDownList ID="ddCityName" runat="server" class="form-control"></asp:DropDownList>
                                                        </div>
                                                    </div>--%>
                                                </asp:Panel>
                                                <div class="col-md-12">
                                                    <asp:LinkButton ID="lnkNext1" runat="server" class="btn btn-outline green pull-right" OnClick="lnkNext1_Click">Continue <i class="fa fa-angle-right"></i></asp:LinkButton>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="Panel2" runat="server" Visible="false">
                                            <div class="tab-pane">
                                                <h3 class="block">Provide detail of Interview</h3>
                                                <div>
                                                    <div class="container">
                                                        <div class="form-group col-md-12">
                                                            <label class="control-label col-md-3" style="text-align: left;">
                                                                Number of Rounds
                                                                     
                                                            <span class="required">* </span>
                                                            </label>


                                                            <div class="col-md-4">
                                                                <asp:DropDownList ID="ddNoOfRound" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddNoOfRound_SelectedIndexChanged">
                                                                    <asp:ListItem Value="">Select No Of Round</asp:ListItem>
                                                                    <asp:ListItem Value="1">1</asp:ListItem>
                                                                    <asp:ListItem Value="2">2</asp:ListItem>
                                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                                    <asp:ListItem Value="4">4</asp:ListItem>
                                                                    <asp:ListItem Value="5">5</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>

                                                        </div>

                                                        <asp:Repeater ID="rptRound" runat="server">
                                                            <ItemTemplate>
                                                                <div class="col-md-12" style="box-shadow: 0px 0px 5px #444; padding: 40px 30px; margin-bottom: 40px;">
                                                                    <div class="form-group col-md-12">
                                                                        <label class="control-label col-md-3" style="text-align: left;">
                                                                            Round Type
                                                                     
                                                            <span class="required">* </span>
                                                                        </label>
                                                                        <div class="col-md-4">
                                                                            <asp:DropDownList ID="ddRoundType" runat="server" class="form-control"></asp:DropDownList>
                                                                        </div>

                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <label class="control-label col-md-3" style="text-align: left;">
                                                                            No of Question in Round
                                                                     
                                                            <span class="required">* </span>
                                                                        </label>
                                                                        <div class="col-md-4">
                                                                            <asp:DropDownList ID="ddNoOfQuestion" runat="server" class="form-control">
                                                                                <asp:ListItem Value="">Select No of Question in Round</asp:ListItem>
                                                                                <asp:ListItem Value="1">1</asp:ListItem>
                                                                                <asp:ListItem Value="2">2</asp:ListItem>
                                                                                <asp:ListItem Value="3">3</asp:ListItem>
                                                                                <asp:ListItem Value="4">4</asp:ListItem>
                                                                                <asp:ListItem Value="5">5</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>

                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <label class="control-label col-md-3" style="text-align: left;">
                                                                            No of Question are you Describe?
                                                                     
                                                            <span class="required">* </span>
                                                                        </label>
                                                                        <div class="col-md-4">
                                                                            <asp:DropDownList ID="ddNoOfQuestionDescribe" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddNoOfQuestionDescribe_SelectedIndexChanged" class="form-control">
                                                                                <asp:ListItem Value="">Select No of Question are you Describe</asp:ListItem>
                                                                                <asp:ListItem Value="1">1</asp:ListItem>
                                                                                <asp:ListItem Value="2">2</asp:ListItem>
                                                                                <asp:ListItem Value="3">3</asp:ListItem>
                                                                                <asp:ListItem Value="4">4</asp:ListItem>
                                                                                <asp:ListItem Value="5">5</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>

                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <label class="control-label col-md-3" style="text-align: left;">
                                                                            Level Of Difficulty
                                                                     
                                                            <span class="required">* </span>
                                                                        </label>
                                                                        <div class="col-md-4">
                                                                            <asp:DropDownList ID="ddLevelOfDifficulty" runat="server" AutoPostBack="true" class="form-control">
                                                                                <asp:ListItem Value="">Select Level Of Difficulty</asp:ListItem>
                                                                                <asp:ListItem Value="1">1</asp:ListItem>
                                                                                <asp:ListItem Value="2">2</asp:ListItem>
                                                                                <asp:ListItem Value="3">3</asp:ListItem>
                                                                                <asp:ListItem Value="4">4</asp:ListItem>
                                                                                <asp:ListItem Value="5">5</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <asp:Repeater ID="rptQA" runat="server">
                                                                        <ItemTemplate>
                                                                            <div class="col-md-12" style="box-shadow: 0px 0px 5px #444; padding: 30px; margin-bottom: 40px;">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-12" style="text-align: left;">
                                                                                        Question
                                                                   
                                                            <span class="required">* </span>
                                                                                    </label>
                                                                                    <div class="col-md-12">
                                                                                        <asp:TextBox ID="txtQuestion" runat="server" class="form-control" placeholder=" Enter question ehich were ask to you"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-12" style="text-align: left;">
                                                                                        Answer
                                                                   
                                                    <span class="required">* </span>
                                                                                    </label>
                                                                                    <div class="col-md-12">
                                                                                        <asp:TextBox ID="txtAnswer" runat="server" Rows="3" class="form-control" TextMode="MultiLine" placeholder="Answer of the question which were ask to you"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                        <div class="col-md-12">
                                                            <asp:LinkButton ID="lnkPri1" runat="server" class="btn btn-outline green" OnClick="lnkPri1_Click"><i class="fa fa-angle-left"></i> Back</asp:LinkButton>
                                                            <asp:LinkButton ID="lnkNext2" runat="server" class="btn btn-outline green pull-right" OnClick="lnkNext2_Click">Continue <i class="fa fa-angle-right"></i></asp:LinkButton>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="Panel3" runat="server" Visible="false">
                                            <div class="tab-pane">
                                                <h3 class="block">Summary</h3>

                                                <div style="display: flex; flex-direction: row;">
                                                    <h4 class="block">Overall Experience:</h4>
                                                    <div class="col--md-12">
                                                        <asp:DropDownList ID="ddRate" runat="server" AutoPostBack="true" class="form-control" style="margin: 15px 0px 0px 20px;">
                                                            <asp:ListItem Value="">Select Level Of Difficulty</asp:ListItem>
                                                            <asp:ListItem Value="1">1</asp:ListItem>
                                                            <asp:ListItem Value="2">2</asp:ListItem>
                                                            <asp:ListItem Value="3">3</asp:ListItem>
                                                            <asp:ListItem Value="4">4</asp:ListItem>
                                                            <asp:ListItem Value="5">5</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>

                                                <h3 class="block">Summary</h3>
                                                <div class="form-group">

                                                    <div class="col-md-12">
                                                        <asp:TextBox ID="txtSummary" Rows="20" TextMode="MultiLine" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-12" style="margin: 20px 0px;">
                                                    <asp:LinkButton ID="lnkPri2" runat="server" class="btn btn-outline green" OnClick="lnkPri2_Click"><i class="fa fa-angle-left"></i> Back</asp:LinkButton>
                                                    <asp:LinkButton ID="lnkPostExperience" runat="server" class="btn btn-outline green pull-right" OnClick="lnkPostExperience_Click">Post Experience</asp:LinkButton>
                                                    <%--<asp:LinkButton ID="lnkNext3" runat="server" class="btn btn-outline green pull-right" OnClick="lnkNext3_Click">Continue <i class="fa fa-angle-right"></i></asp:LinkButton>--%>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="Panel4" runat="server" Visible="false">
                                            <div class="tab-pane">
                                                <asp:Repeater ID="rptExpereince" runat="server">
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
                                                <div class="" style="margin-top: 20px;">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-outline green" OnClick="LinkButton1_Click"><i class="fa fa-angle-left"></i> Back</asp:LinkButton>
                                                    <%--<asp:LinkButton ID="lnkPostExperience" runat="server" class="btn btn-outline green pull-right" OnClick="lnkPostExperience_Click">Post Experience</asp:LinkButton>--%>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <%--<asp:AsyncPostBackTrigger ControlID="ddNoOfRound" EventName="ddNoOfRound_SelectedIndexChanged" />--%>
            <asp:PostBackTrigger ControlID="ddNoOfRound" />
            <asp:PostBackTrigger ControlID="lnkPostExperience" />
            <%--<asp:AsyncPostBackTrigger ControlID="rdSelected" EventName="rdSelected_CheckedChanged" />--%>
            <%--<asp:PostBackTrigger ControlID="rdSelected" />--%>
            <%--<asp:PostBackTrigger ControlID="rdNotSelected" />--%>
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <script src="Assets/pages/scripts/form-wizard.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
    <script src="Assets/global/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js" type="text/javascript"></script>
</asp:Content>

