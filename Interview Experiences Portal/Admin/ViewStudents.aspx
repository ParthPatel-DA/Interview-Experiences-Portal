<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainMaster.master" AutoEventWireup="true" CodeFile="ViewStudents.aspx.cs" Inherits="Admin_ViewStudens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="margin-bottom: 30px;">
        <h1>Student List
       
           

            <%--<small>advanced tables</small>--%>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Tables</a></li>
            <li class="active">Data tables</li>
        </ol>
    </section>
    <div class="col-md-13">
        <div class="col-md-12">
            <!-- Custom Tabs -->
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="rptProgram_ItemCommand">
                        <ItemTemplate>
                            <%--data-toggle="tab"--%>
                            <li class="demo">
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="GetYearList" CommandArgument='<%# Eval("ProgramCode") %>' OnClick="LinkButton2_Click" OnClientClick="FunctionClick();"><%# Eval("ProgramName") %></asp:LinkButton></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%--<li class="active">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="#" data-toggle="tab">Program</asp:LinkButton></li>--%>
                </ul>
                <div class="tab-content">
                    <%--<div class="tab-pane" style="display: inline-block;">
                
              </div>--%>
                    <b class="col-md-12">Year List:</b>
                    <div style="display: inline-block; width: 100%; margin-top: 10px;">
                        <div class="col-md-12">
                            <asp:Repeater ID="rptYearList" runat="server" OnItemCommand="rptYearList_ItemCommand">
                                <ItemTemplate>
                                    <div class="col-md-1">
                                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="GetStudentData" CommandArgument='<%# Eval("year") %>'><%# Eval("year") %></asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <!-- /.tab-content -->
            </div>
            <!-- nav-tabs-custom -->
        </div>

        <!-- /.col -->
    </div>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">


                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Student List With Details</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                            <%--<div class="row">
                                <div class="col-sm-6">
                                    <div class="dataTables_length" id="example1_length">
                                        <label>
                                            Show
                                            <select name="example1_length" aria-controls="example1" class="form-control input-sm">
                                                <option value="10">10</option>
                                                <option value="25">25</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                            </select>
                                            entries</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div id="example1_filter" class="dataTables_filter">
                                        <label>Search:<input type="search" class="form-control input-sm" placeholder="Hello" aria-controls="example1"></label>
                                    </div>
                                </div>
                            </div>--%>
                            <%--<div class="dropdown">
                                <a href="/">BTech</a>
                                <div class="dropdown-content">
                                   <a href="#">2016</a>
                                   <a href="#">2017</a>
                                   <a href="#">2018</a>
                               </div>
                            </div>
                            <div class="dropdown1">
                                <a href="/">MTech</a>
                                <div class="dropdown-content1">
                                   <a href="#">2019</a>
                                   <a href="#">2020</a>
                                   <a href="#">2021</a>
                               </div>
                            </div>
                            <div class="dropdown2">
                                <a href="/">MSCIT</a>
                                <div class="dropdown-content2">
                                   <a href="#">2022</a>
                                   <a href="#">2023</a>
                                   <a href="#">2024</a>
                               </div>
                            </div>--%>




                            <div class="row">
                                <div class="col-sm-12">
                                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 182px;">Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 224px;">Email ID</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 156px;">Contact No</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 199px;">Gender</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Verify</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Is Blocked</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Created On</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Last Login</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="rptStudent" runat="server" OnItemCommand="rptStudent_ItemCommand">
                                                <ItemTemplate>
                                                    <tr role="row" class="odd">

                                                        <td class="sorting_1">
                                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("StudentID") %>' />
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="ViewStudentDetail" CommandArgument='<%# Eval("StudentID") %>'>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FirstName") + " " + Eval("LastName") %>' />
                                                            </asp:LinkButton>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("EmailID") %>' /></td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactNo") %>' /></td>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>' /></td>

                                                        <td>
                                                            <center><asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/" + Eval("IsVerify") + ".png" %>' Width="20" Height="20" /></center>
                                                            <td>
                                                                <center><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# "img/" + Eval("IsBlocked") + ".png" %>' Width="20" Height="20" CommandName="tblAdmin" CommandArgument='<%# Eval("StudentID") %>' /></center>
                                                            </td>
                                                        <td>
                                                            <%--<asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />--%>
                                                            <asp:Literal ID="LtrCBy" runat="server"></asp:Literal>
                                                            <asp:Label ID="Label6" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                        <td>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToDateTime(Eval("LastLogin")).ToShortDateString() %>' /></td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr role="row" class="even">
                                                        <td class="sorting_1">
                                                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("StudentID") %>' />
                                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("FirstName") + " " + Eval("LastName") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("EmailID") %>' /></td>
                                                        <td>
                                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("ContactNo") %>' /></td>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>' /></td>
                                                        <td>
                                                            <center><asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/" + Eval("IsVerify") + ".png" %>' Width="20" Height="20" /></center>
                                                            <td>
                                                                <center><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "img/" + Eval("IsBlocked") + ".png" %>' Width="20" Height="20" CommandName="tblAdmin" CommandArgument='<%# Eval("StudentID") %>' /></center>
                                                            </td>
                                                        <td>
                                                            <%--<asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />--%>
                                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                                            <asp:Label ID="Label10" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                        <td>
                                                            <asp:Label ID="Label11" runat="server" Text='<%# Convert.ToDateTime(Eval("LastLogin")).ToShortDateString() %>' /></td>
                                                    </tr>
                                                </AlternatingItemTemplate>
                                            </asp:Repeater>

                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th rowspan="1" colspan="1">Name</th>
                                                <th rowspan="1" colspan="1">Email ID</th>
                                                <th rowspan="1" colspan="1">Contact No</th>
                                                <th rowspan="1" colspan="1">Gender</th>
                                                <th rowspan="1" colspan="1">Verify</th>
                                                <th rowspan="1" colspan="1">Is Blocked</th>
                                                <th rowspan="1" colspan="1">Created On</th>
                                                <th rowspan="1" colspan="1">Last Login</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <div class="modal fade" id="modal-default" style="display: none;">
            <div class="modal-dialog" style="width: 80%">
                <div class="modal-content">
                    <div class="modal-header">

                        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
                        <!-- <span aria-hidden="false">&times;</span></button> -->
                        <!-- <h4 class="modal-title">Student ID :- </h4> -->

                        <!-- /.col -->
                        <div style="width: 100%;">
                            <!-- Widget: user widget style 1 -->
                            <div class="box box-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-aqua-active">
                                    <h3 class="widget-user-username">
                                        <asp:Literal ID="ltrStudentName" runat="server"></asp:Literal></h3>
                                    <h5 class="widget-user-desc">
                                        <asp:Literal ID="ltrDAID" runat="server"></asp:Literal></h5>
                                </div>
                                <div class="widget-user-image">
                                    <img class="img-circle" src="Client Assets/dist/img/user1-128x128.jpg" alt="User Avatar">
                                </div>
                                <div class="box-footer">
                                    <div class="row">
                                        <div class="col-sm-4 border-right">
                                            <div class="description-block">
                                                <h5 class="description-header">12</h5>
                                                <span class="description-text">Experiences</span>
                                            </div>
                                            <!-- /.description-block -->
                                        </div>
                                        <!-- /.col -->
                                        <div class="col-sm-4 border-right">
                                            <div class="description-block">
                                                <h5 class="description-header">121</h5>
                                                <span class="description-text">FOLLOWERS</span>
                                            </div>
                                            <!-- /.description-block -->
                                        </div>
                                        <!-- /.col -->
                                        <div class="col-sm-4">
                                            <div class="description-block">
                                                <h5 class="description-header">15</h5>
                                                <span class="description-text">Question Asked</span>
                                            </div>
                                            <!-- /.description-block -->
                                        </div>
                                        <!-- /.col -->
                                    </div>
                                    <!-- /.row -->
                                </div>
                            </div>
                            <!-- /.widget-user -->
                        </div>

                    </div>
                    <div class="modal-body">

                        <!-- ******************************************************************************************** -->

                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#settings" data-toggle="tab">Personal Info</a></li>
                                <li><a href="#timeline" data-toggle="tab">Experience</a></li>
                            </ul>
                            <div class="tab-content">

                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="timeline">
                                    <!-- The timeline -->
                                    <%--<ul class="timeline ">
                                        <!-- timeline time label -->
                                        <li class="time-label">
                                            <span class="bg-red">10 Feb. 2014
                                            </span>
                                        </li>
                                        <!-- /.timeline-label -->
                                        <!-- timeline item -->
                                        <li>
                                            <!-- <i class="fa fa-envelope bg-blue"></i> -->

                                            <div class="timeline-item">


                                                <h1 class="timeline-header" style="font-size: large;"><a href="#">Amazon</a><a style="color: green;"> Software Engineering <i class="fa fa-check"></i></a></h1>

                                                <div class="timeline-body">
                                                    <div class="box-body" style="border: 3px dashed #DDDDDD; margin-bottom: 10px;">
                                                        <dl>
                                                            <div style="width: 100%; height: 20px;">
                                                                <div style="float: left;">
                                                                    <dt>
                                                                        <h4 style="margin-top: 10px; color: #72afd2;">Round 1</h4>
                                                                    </dt>
                                                                </div>
                                                                <div style="float: right;">
                                                                    <div>
                                                                        <dt>
                                                                            <h4 style="margin-top: 10px;">
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star"></span>
                                                                                <span class="fa fa-star"></span>
                                                                            </h4>
                                                                        </dt>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q1 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 1</h5>
                                                            </dd>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q2 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 2</h5>
                                                            </dd>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q3 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 3</h5>
                                                            </dd>
                                                        </dl>


                                                    </div>
                                                    <div class="box-body" style="border: 3px dashed #DDDDDD; margin-bottom: 10px;">
                                                        <dl>
                                                            <div style="width: 100%; height: 20px;">
                                                                <div style="float: left;">
                                                                    <dt>
                                                                        <h4 style="margin-top: 10px; color: #72afd2;">Round 2</h4>
                                                                    </dt>
                                                                </div>
                                                                <div style="float: right;">
                                                                    <div>
                                                                        <dt>
                                                                            <h4 style="margin-top: 10px;">
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star"></span>
                                                                                <span class="fa fa-star"></span>
                                                                            </h4>
                                                                        </dt>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q1 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 1</h5>
                                                            </dd>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q2 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 2</h5>
                                                            </dd>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q3 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 3</h5>
                                                            </dd>
                                                        </dl>


                                                    </div>
                                                </div>
                                                <div class="timeline-footer">


                                                    <!-- <a class="btn btn-danger btn-xs">Delete</a> -->
                                                </div>
                                            </div>
                                        </li>
                                        <!-- END timeline item -->
                                        <!-- timeline item -->
                                        <!-- <li> -->
                                        <!-- <i class="fa fa-user bg-aqua"></i> -->

                                        <!-- <div class="timeline-item"> -->
                                        <!-- <span class="time"><i class="fa fa-clock-o"></i> 5 mins ago</span> -->

                                        <!-- <h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted your friend request -->
                                        <!-- </h3> -->
                                        <!-- </div> -->
                                        <!-- </li> -->
                                        <!-- END timeline item -->
                                        <!-- timeline item -->


                                        <li class="time-label">
                                            <span class="bg-red">10 Feb. 2014
                                            </span>
                                        </li>
                                        <!-- /.timeline-label -->
                                        <!-- timeline item -->
                                        <li>


                                            <div class="timeline-item">


                                                <h1 class="timeline-header" style="font-size: large;"><a href="#">Direct i</a><a style="color: green;"> Platform Engineer </a></h1>

                                                <div class="timeline-body">
                                                    <div class="box-body" style="border: 3px dashed #DDDDDD; margin-bottom: 10px;">
                                                        <dl>
                                                            <div style="width: 100%; height: 20px;">
                                                                <div style="float: left;">
                                                                    <dt>
                                                                        <h4 style="margin-top: 10px; color: #72afd2;">Round 1</h4>
                                                                    </dt>
                                                                </div>
                                                                <div style="float: right;">
                                                                    <div>
                                                                        <dt>
                                                                            <h4 style="margin-top: 10px;">
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star"></span>
                                                                                <span class="fa fa-star"></span>
                                                                            </h4>
                                                                        </dt>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q1 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 1</h5>
                                                            </dd>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q2 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 2</h5>
                                                            </dd>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q3 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 3</h5>
                                                            </dd>
                                                        </dl>


                                                    </div>
                                                    <div class="box-body" style="border: 3px dashed #DDDDDD; margin-bottom: 10px;">
                                                        <dl>
                                                            <div style="width: 100%; height: 20px;">
                                                                <div style="float: left;">
                                                                    <dt>
                                                                        <h4 style="margin-top: 10px; color: #72afd2;">Round 2</h4>
                                                                    </dt>
                                                                </div>
                                                                <div style="float: right;">
                                                                    <div>
                                                                        <dt>
                                                                            <h4 style="margin-top: 10px;">
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star checked"></span>
                                                                                <span class="fa fa-star "></span>
                                                                                <span class="fa fa-star"></span>
                                                                                <span class="fa fa-star"></span>
                                                                            </h4>
                                                                        </dt>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q1 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 1</h5>
                                                            </dd>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q2 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 2</h5>
                                                            </dd>
                                                        </dl>

                                                        <dl>
                                                            <dt>
                                                                <h5>Q3 . Find Sum of all Integer Given in Array</h5>
                                                            </dt>
                                                            <dd>
                                                                <h5>This is Answer of Question 3</h5>
                                                            </dd>
                                                        </dl>


                                                    </div>
                                                </div>

                                                <div class="box-body" style="border: 3px dashed #DDDDDD; margin-bottom: 10px;">
                                                    <dl>
                                                        <div style="width: 100%; height: 20px;">
                                                            <div style="float: left;">
                                                                <dt>
                                                                    <h4 style="margin-top: 10px; color: #72afd2;">Summary</h4>
                                                                </dt>
                                                            </div>
                                                            <div style="float: right;">
                                                                <div>
                                                                    <dt>
                                                                        <h4 style="margin-top: 10px;">
                                                                            <span class="fa fa-star checked"></span>
                                                                            <span class="fa fa-star checked"></span>
                                                                            <span class="fa fa-star checked"></span>
                                                                            <span class="fa fa-star"></span>
                                                                            <span class="fa fa-star"></span>
                                                                        </h4>
                                                                    </dt>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </dl>

                                                    <dl>
                                                        <dt>
                                                            <h5>This is Summary</h5>
                                                        </dt>

                                                    </dl>



                                                </div>
                                                <div class="timeline-footer">


                                                    <!-- <a class="btn btn-danger btn-xs">Delete</a> -->
                                                </div>
                                            </div>
                                        </li>
                                        <!-- END timeline item -->
                                        <!-- timeline item -->
                                        <!-- <li> -->
                                        <!-- <i class="fa fa-user bg-aqua"></i> -->

                                        <!-- <div class="timeline-item"> -->
                                        <!-- <span class="time"><i class="fa fa-clock-o"></i> 5 mins ago</span> -->

                                        <!-- <h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted your friend request -->
                                        <!-- </h3> -->
                                        <!-- </div> -->
                                        <!-- </li> -->
                                        <!-- END timeline item -->
                                        <!-- timeline item -->


                                    </ul>--%>
                                    <h2>My Experience List</h2>
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
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!-- /.tab-pane -->

                                <div class="active tab-pane" id="settings">
                                    <div class="form-horizontal  ">
                                        <div style="min-height: 300px">
                                            <div style="width: 50%; float: left;">
                                                <asp:HiddenField ID="ID" runat="server" />
                                                <div class="form-group">
                                                    <label for="inputName" class="col-sm-4 control-label" style="display: flex;">Username</label>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblUserName" runat="server" Text="Label" for="inputName" class="col-sm-12 control-label" Style="display: flex;"></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="inputEmail" class="col-sm-4 control-label" style="display: flex;">Email</label>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblEmail" runat="server" Text="Label" for="inputName" class="col-sm-12 control-label" Style="display: flex;"></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="inputName" class="col-sm-4 control-label" style="display: flex;">Gender</label>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblGender" runat="server" Text="Label" for="inputName" class="col-sm-12 control-label" Style="display: flex;"></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="inputSkills" class="col-sm-4 control-label" style="display: flex;">Contact No</label>

                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblContactNo" runat="server" Text="Label" for="inputName" class="col-sm-12 control-label" Style="display: flex;"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="width: 50%; float: left;">
                                                <div class="form-group">
                                                    <label for="inputName" class="col-sm-4 control-label" style="display: flex;">Resume</label>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblResume" runat="server" Text="Label" for="inputName" class="col-sm-12 control-label" Style="display: flex;"></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="inputName" class="col-sm-4 control-label" style="display: flex;">LinkedIn</label>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblLinkedIn" runat="server" Text="Label" for="inputName" class="col-sm-12 control-label" Style="display: flex;"></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="inputName" class="col-sm-4 control-label" style="display: flex;">GitHub</label>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblGitHub" runat="server" Text="Label" for="inputName" class="col-sm-12 control-label" Style="display: flex;"></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="inputEmail" class="col-sm-4 control-label" style="display: flex;">StackOverflow</label>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblStackOverflow" runat="server" Text="Label" for="inputName" class="col-sm-12 control-label" Style="display: flex;"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                            </div>
                                        </div>
                                        <!-- /.tab-pane -->
                                    </div>
                                    <!-- /.tab-content -->
                                </div>
                                <!-- /.nav-tabs-custom -->
                            </div>
                            <!-- /.col -->

                            <!-- ******************************************************************************************** -->

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary" style="background-color: red">BLOCK</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-primary fade" id="modal-primary">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span></button>
                            <h4 class="modal-title">Primary Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body…</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-info fade" id="modal-info">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span></button>
                            <h4 class="modal-title">Info Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body…</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-warning fade" id="modal-warning">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span></button>
                            <h4 class="modal-title">Warning Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body…</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-success fade" id="modal-success">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span></button>
                            <h4 class="modal-title">Success Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body…</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-danger fade" id="modal-danger">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span></button>
                            <h4 class="modal-title">Danger Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body…</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </div>
    </section>
    <!-- /.content -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <!-- DataTables -->
    <script src="Client Assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="Client Assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <!-- page script -->
    <script>
        $(function () {
            $('#example1').DataTable()
            $('#example2').DataTable({
                'paging': true,
                'lengthChange': false,
                'searching': false,
                'ordering': true,
                'info': true,
                'autoWidth': false
            })
        });
        $(".nav-tabs").children().first().addClass('active demo');

        $(document).ready(function () {
            $(".demo").click(function () {
                $(".nav-tabs").children().first().removeClass();
                $(".nav-tabs").children().removeClass();
                $(this).addClass("active demo");
            });
        });



        //function FunctionClick() {
        //    var ul = document.getElementsByClassName(".nav-tabs");

        //}
    </script>
</asp:Content>
