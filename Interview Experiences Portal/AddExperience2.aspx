<%@ Page Title="" Language="C#" MasterPageFile="~/MainClientMasterPage.master" AutoEventWireup="true" CodeFile="AddExperience2.aspx.cs" Inherits="AddExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        div.stars {
            width: 270px;
            display: inline-block;
        }

        input.star {
            display: none;
        }

        label.star {
            float: right;
            padding: 5px;
            font-size: 30px;
            color: #444;
            transition: all .2s;
        }

        input.star:checked ~ label.star:before {
            content: '\f005';
            color: #36c6d3;
            transition: all .25s;
        }

        input.star-5:checked ~ label.star:before {
            color: #ed6b75;
            text-shadow: 0 0 20px #fff;
        }

        input.star-1:checked ~ label.star:before {
            color: #F62;
        }

        label.star:hover {
            transform: rotate(-15deg) scale(1.3);
        }

        label.star:before {
            content: '\f006';
            font-family: FontAwesome;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
            <div class="page-content-wrapper">



                <div class="row">
                    <div class="col-md-12">

                        <div class="portlet light bordered" id="form_wizard_1">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class=" icon-layers font-red"></i>
                                    <span class="caption-subject font-red bold uppercase">Form Wizard -
                                               
                                <span class="step-title">Step 1 of 4 </span>
                                    </span>
                                </div>
                                <div class="actions">
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-cloud-upload"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-wrench"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-trash"></i>
                                            </a>
                                        </div>
                            </div>
                            <div class="portlet-body form">
                                <form class="form-horizontal" action="#" id="submit_form" method="POST">
                                    <div class="form-wizard">
                                        <div class="form-body">
                                            <ul class="nav nav-pills nav-justified steps">
                                                <li>
                                                    <a href="#tab1" data-toggle="tab" class="step">
                                                        <span class="number">1 </span>
                                                        <span class="desc">
                                                            <i class="fa fa-check"></i>Details </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab2" data-toggle="tab" class="step">
                                                        <span class="number">2 </span>
                                                        <span class="desc">
                                                            <i class="fa fa-check"></i>Experience </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab3" data-toggle="tab" class="step active">
                                                        <span class="number">3 </span>
                                                        <span class="desc">
                                                            <i class="fa fa-check"></i>Summary </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab4" data-toggle="tab" class="step">
                                                        <span class="number">4 </span>
                                                        <span class="desc">
                                                            <i class="fa fa-check"></i>Overview </span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <div id="bar" class="progress progress-striped" role="progressbar">
                                                <div class="progress-bar progress-bar-success"></div>
                                            </div>
                                            <div class="tab-content">
                                                <div class="alert alert-danger display-none">
                                                    <button class="close" data-dismiss="alert"></button>
                                                    You have some form errors. Please check below.
                                                </div>
                                                <div class="alert alert-success display-none">
                                                    <button class="close" data-dismiss="alert"></button>
                                                    Your form validation is successful!
                                                </div>


                                                <div class="tab-pane active" id="tab1">
                                                    <div class="container">
                                                        <div class="container">
                                                            <h3 class="block">Provide General Details of Interview</h3>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                    Company Name
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="ddSelectCompany" runat="server" Class="form-control select2-dropdown">
                                                                        <asp:ListItem Value="">Select Comapny</asp:ListItem>
                                                                        <asp:ListItem>Amazon</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                    Designation
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="ddSelectDesignation" name="select-desigantion" runat="server" Class="form-control select2-dropdown">
                                                                        <asp:ListItem Value="">Select Designation</asp:ListItem>
                                                                        <asp:ListItem>web-devloper</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                    Year
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-12">
                                                                    <asp:TextBox ID="txtYear" runat="server" class="form-control" name="year" placeholder="Enter year"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                    In-Campus
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-12">
                                                                    <div class="radio-list">
                                                                        <label>
                                                                            <asp:RadioButton ID="rdIncampusY" runat="server" Text="Yes" GroupName="place" class="form-md-radios col-md-4" />
                                                                            <label>
                                                                                <asp:RadioButton ID="rdOffcampusN" runat="server" Text=" No" GroupName="place" class="form-md-radios col-md-12 " />
                                                                    </div>

                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                    Job type
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="ddJobType" name="job-type" runat="server" Class="form-control select2-dropdown">
                                                                        <asp:ListItem Value="">Select Job Type</asp:ListItem>
                                                                        <asp:ListItem>I+J</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                    Is Selected
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-12">
                                                                    <div class="radio-list">
                                                                        <label>
                                                                            <asp:RadioButton ID="rdIsSelectY" runat="server" Text="Yes" AutoPostBack="true" GroupName="selected" class="form-md-radios col-md-4" OnCheckedChanged="rdIsSelectY_CheckedChanged" Checked="true" />
                                                                            <label>
                                                                                <asp:RadioButton ID="rdIsSelectN" runat="server" Text="No" AutoPostBack="true" GroupName="selected" class="form-md-radios col-md-12" OnCheckedChanged="rdIsSelectN_CheckedChanged" />
                                                                    </div>

                                                                </div>

                                                            </div>

                                                            <asp:Panel ID="PanelSelected" runat="server">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-12" style="text-align: left;">
                                                                        CTC
                                                                   
                                                        <span class="required">* </span>
                                                                    </label>
                                                                    <div class="col-md-12">
                                                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" name="year" placeholder="Enter CTC"></asp:TextBox>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="control-label col-md-12" style="text-align: left;">
                                                                        City(Job Location)
                                                                   
                                                        <span class="required">* </span>
                                                                    </label>
                                                                    <div class="col-md-12">
                                                                        <asp:DropDownList ID="ddCity" runat="server" Class="form-control select2-dropdown">
                                                                            <asp:ListItem Value="">Select City</asp:ListItem>
                                                                            <asp:ListItem>Las Vegas</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </asp:Panel>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="tab-pane" id="tab2">
                                                    <div class="container">
                                                        <div class="container">
                                                            <h3 class="block">Provide details for interview</h3>
                                                            <%--<div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                    Rounds You Appear
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="ddRounds" runat="server" Class="form-control select2-dropdown">
                                                                        <asp:ListItem Value="">Select Rounds</asp:ListItem>
                                                                        <asp:ListItem>1</asp:ListItem>
                                                                        <asp:ListItem>2</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>--%>
                                                            <div class="border">
                                                                <div class="container">
                                                        
                                                                <div class="container">
                                                                    <div class="form-group">
                                                                        <label class="control-label col-md-12" style="text-align: left;">
                                                                            How many rounds you clear
                                                                      <span class="required">* </span>
                                                                        </label>
                                                                        <div class="col-md-11">
                                                                            <asp:DropDownList ID="ddNoOfRound" runat="server" Class="form-control select2-dropdown">
                                                                                <asp:ListItem Value="">Select Rounds</asp:ListItem>
                                                                                <asp:ListItem>1</asp:ListItem>
                                                                                <asp:ListItem>2</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                         
                                                                    </div>
                                                                
                                                            
                                                                
                                                                     
                                                                
                                                                     <div class="form-group">
                                                                        <label class="control-label col-md-3" style="text-align: left;">
                                                                            Round Type
                                                                      <span class="required">* </span>
                                                                        </label>
                                                                        <div class="col-md-4">
                                                                            <asp:DropDownList ID="DropDownList2" runat="server" Class="form-control select2-dropdown">
                                                                                <asp:ListItem Value="">Select Round Type</asp:ListItem>
                                                                                <asp:ListItem>GD</asp:ListItem>
                                                                                <asp:ListItem>Coding</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                         
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label col-md-3" style="text-align: left;">
                                                                           Question in round
                                                                      <span class="required">* </span>
                                                                        </label>
                                                                        <div class="col-md-4">
                                                                            <asp:DropDownList ID="ddRoundQuestion" runat="server" Class="form-control select2-dropdown">
                                                                                <asp:ListItem Value="">Select Number of Question</asp:ListItem>
                                                                                <asp:ListItem>1</asp:ListItem>
                                                                                <asp:ListItem>2</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                         <div style="display: flex; flex-direction: row;">
                                                        <h4 class="block">Overall Experience:</h4>
                                                        <div class="col--md-12">
                                                            <input class="star star-5" id="star-5" type="radio" name="star" value="5" />
                                                            <label class="star star-5" for="star-5"></label>
                                                            <input class="star star-5" id="star-4" type="radio" name="star" value="4" />
                                                            <label class="star star-4" for="star-4"></label>
                                                            <input class="star star-5" id="star-3" type="radio" name="star" value="3" />
                                                            <label class="star star-3" for="star-3"></label>
                                                            <input class="star star-5" id="star-2" type="radio" name="star" value="2" />
                                                            <label class="star star-2" for="star-2"></label>
                                                            <input class="star star-5" id="star-1" type="radio" name="star" value="1" />
                                                            <label class="star star-1" for="star-1"></label>
                                                            <input type="hidden" id="Hidden1" runat="server" />
                                                        </div>
                                                    </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                    Question
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-11">
                                                                    <asp:TextBox ID="txtQuestion" runat="server" class="form-control"  placeholder="Enter Question which was asked to you"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                                    <div class="form-group">
                                                                <label class="control-label col-md-12" style="text-align: left;">
                                                                   Answer
                                                                   
                                                    <span class="required">* </span>
                                                                </label>
                                                                <div class="col-md-11">
                                                                    <textarea id="TextAreaAnswer" cols="131" rows="2" class="form-control" placeholder="Answer of the question which were ask to you"></textarea>
                                                                   
                                                                </div>
                                                            </div>
                                                                    <asp:LinkButton ID="lbtnAddQuestion" runat="server" >Add New Question</asp:LinkButton>
                                                                </div>
                                                     </div>
                                                        </div> 
                                                    </div></div>
                                                </div>

                                                <div class="tab-pane" id="tab3">

                                                    <div style="display: flex; flex-direction: row;">
                                                        <h4 class="block">Overall Experience:</h4>
                                                        <div class="col--md-12">
                                                            <input class="star star-5" id="star-5" type="radio" name="star" value="5" />
                                                            <label class="star star-5" for="star-5"></label>
                                                            <input class="star star-5" id="star-4" type="radio" name="star" value="4" />
                                                            <label class="star star-4" for="star-4"></label>
                                                            <input class="star star-5" id="star-3" type="radio" name="star" value="3" />
                                                            <label class="star star-3" for="star-3"></label>
                                                            <input class="star star-5" id="star-2" type="radio" name="star" value="2" />
                                                            <label class="star star-2" for="star-2"></label>
                                                            <input class="star star-5" id="star-1" type="radio" name="star" value="1" />
                                                            <label class="star star-1" for="star-1"></label>
                                                            <input type="hidden" id="txtRate" runat="server" />
                                                        </div>
                                                    </div>

                                                    <h3 class="block">Summary</h3>
                                                    <div class="form-group">

                                                        <div class="col-md-12">
                                                            <textarea id="txtarea" cols="150" rows="20"></textarea>

                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="tab-pane" id="tab4">
                                                    <h3 class="block">Confirm your account</h3>
                                                    <h4 class="form-section">Account</h4>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Username:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="username"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Email:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="email"></p>
                                                        </div>
                                                    </div>
                                                    <h4 class="form-section">Profile</h4>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Fullname:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="fullname"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Gender:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="gender"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Phone:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="phone"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Address:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="address"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">City/Town:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="city"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Country:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="country"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Remarks:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="remarks"></p>
                                                        </div>
                                                    </div>
                                                    <h4 class="form-section">Billing</h4>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Card Holder Name:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="card_name"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Card Number:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="card_number"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">CVC:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="card_cvc"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Expiration:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="card_expiry_date"></p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3">Payment Options:</label>
                                                        <div class="col-md-4">
                                                            <p class="form-control-static" data-display="payment[]"></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <a href="javascript:;" class="btn default button-previous">
                                                        <i class="fa fa-angle-left"></i>Back </a>
                                                    <a href="javascript:;" class="btn btn-outline green button-next">Continue
                                                               
                                                <i class="fa fa-angle-right"></i>
                                                    </a>
                                                    <a href="javascript:;" class="btn green button-submit">Submit
                                                               
                                                <i class="fa fa-check"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        

    <!-- END CONTENT BODY -->
     <a href="javascript:;" class="page-quick-sidebar-toggler">
                    <i class="icon-login"></i>
                </a>
               

    <script>
        $(document).ready(function () {
            $('#clickmewow').click(function () {
                $('#radio1003').attr('checked', 'checked');
            });
        })
        </script>
    <!-- Google Code for Universal Analytics -->
      <script>
            $(document).ready(function()
            {
                $('#clickmewow').click(function()
                {
                    $('#radio1003').attr('checked', 'checked');
                });
            })
        </script>
    <!-- Google Code for Universal Analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-37564768-1', 'auto');
  ga('send', 'pageview');
</script>
<!-- End -->

<!-- Google Tag Manager -->
<noscript><iframe src="http://www.googletagmanager.com/ns.html?id=GTM-W276BJ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'../../../../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-W276BJ');</script>
    <!-- End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

