<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainMaster.master" AutoEventWireup="true" CodeFile="ViewReportAbuseExperience.aspx.cs" Inherits="Admin_ViewReportAbuseExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .timeline > li > .timeline-item {
            -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
            box-shadow: 0 1px 1px rgba(0,0,0,0.1);
            border-radius: 3px;
            margin-top: 0;
            background: #fff;
            color: #444;
            margin-left: 15px;
            margin-right: 15px;
            padding: 0;
            position: relative;
        }

        .timeline:before {
            content: '';
            position: absolute;
            top: 0;
            bottom: 0;
            width: 4px;
            background: #fff;
            left: 31px;
            margin: 0;
            border-radius: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-header">
        <h1>Report Abuse Experince List
       
            <%--<small>advanced tables</small>--%>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Tables</a></li>
            <li class="active">Data tables</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">


                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Pending Report Abuse Experiences List With Details</h3>
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
                            <div class="row">
                                <div class="col-sm-12">
                                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 182px;">Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 224px;">Company Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 199px;">Designation</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 156px;">Is Selected</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 90px;">Delete</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Record Added By</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Added Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="rptCompany" runat="server">
                                                <ItemTemplate>
                                                    <tr role="row" class="odd">
                                                        <td class="sorting_1">
                                                            <asp:HiddenField ID="hidCompanyID" runat="server" Value='<%# Eval("CompanyID") %>' />
                                                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Description") %>' /></td>
                                                        <td>
                                                            <asp:Label ID="lblWebsite" runat="server" Text='<%# Eval("Website") %>' /></td>
                                                        <td>
                                                            <center><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblCompany" CommandArgument='<%# Eval("CompanyID") %>' /></center>
                                                        </td>
                                                        <td>
                                                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                            <asp:Literal ID="LtrCBy" runat="server"></asp:Literal></td>
                                                        <td>
                                                            <asp:Label ID="CreatedOnLabel" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr role="row" class="even">
                                                        <td class="sorting_1">
                                                            <asp:HiddenField ID="hidCompanyID" runat="server" Value='<%# Eval("ExperiencesID") %>' />
                                                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Description") %>' /></td>
                                                        <td>
                                                            <asp:Label ID="lblWebsite" runat="server" Text='<%# Eval("Website") %>' /></td>
                                                        <td>
                                                            <center><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblCompany" CommandArgument='<%# Eval("CompanyID") %>' /></center>
                                                        </td>
                                                        <td>
                                                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                            <asp:Literal ID="LtrCBy" runat="server"></asp:Literal></td>
                                                        <td>
                                                            <asp:Label ID="CreatedOnLabel" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                    </tr>
                                                </AlternatingItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th rowspan="1" colspan="1">Name</th>
                                                <th rowspan="1" colspan="1">Company Name</th>
                                                <th rowspan="1" colspan="1">Designation</th>
                                                <th rowspan="1" colspan="1">Is Selected</th>
                                                <th rowspan="1" colspan="1">Delete</th>
                                                <th rowspan="1" colspan="1">Record Added By</th>
                                                <th rowspan="1" colspan="1">Added Date</th>
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

    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">


                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Reported Abuse Experiences List With Details</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div id="example3_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
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
                            <div class="row">
                                <div class="col-sm-12">
                                    <table id="example3" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 180px;">Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 200px;">Company Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 199px;">Designation</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 100px;">Is Selected</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 90px;">Delete</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Record Added By</th>
                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Added Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td class="sorting_1">
                                                    <asp:HiddenField ID="hidCompanyID" runat="server" Value='fdh' />
                                                    <asp:LinkButton ID="LinkButton1" runat="server" data-toggle="modal" data-target="#modal-default">
                                                        <asp:Label ID="lblName" runat="server" Text='dfhf' />
                                                    </asp:LinkButton>
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" data-toggle="modal" data-target="#modal-default">
                                                        <asp:Label ID="lblDesc" runat="server" Text='dgh' />
                                                    </asp:LinkButton>
                                                </td>   
                                                <td>
                                                    <asp:LinkButton ID="LinkButton3" runat="server" data-toggle="modal" data-target="#modal-default">
                                                        <asp:Label ID="Label2" runat="server" Text='designation' />
                                                    </asp:LinkButton>
                                                </td>
                                                <td>
                                                    <center><asp:Image ID="Image4" runat="server" ImageUrl="~/Admin/img/true.png" Width="20" Height="20" /></center>
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Recycle bin image"/>
                                                </td>
                                                <td>
                                                    <asp:HiddenField ID="HiddenField2" runat="server" Value='sdgh' />
                                                    <asp:Literal ID="LtrCBy" runat="server"></asp:Literal></td>
                                                <td>
                                                    <asp:Label ID="CreatedOnLabel" runat="server" Text='sdh' /></td>
                                            </tr>
                                            <%--<asp:Repeater ID="rptCompanyDeactive" runat="server">
                                                <ItemTemplate>
                                                    <tr role="row" class="odd">
                                                        <td class="sorting_1">
                                                            <asp:HiddenField ID="hidCompanyID" runat="server" Value='<%# Eval("ExperiencesID") %>' />
                                                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("DesignationID") %>' /></td>
                                                        <td>
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/" + Eval("IsSelected") + ".png" %>' Width="20" Height="20" />
                                                        </td>
                                                        <td>
                                                            <center><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblCompany" CommandArgument='<%# Eval("CompanyID") %>' /></center>
                                                        </td>
                                                        <td>
                                                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                            <asp:Literal ID="LtrCBy" runat="server"></asp:Literal></td>
                                                        <td>
                                                            <asp:Label ID="CreatedOnLabel" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr role="row" class="even">
                                                        <td class="sorting_1">
                                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("ExperiencesID") %>' />
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DesignationID") %>' /></td>
                                                        <td>
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/" + Eval("IsSelected") + ".png" %>' Width="20" Height="20" />
                                                        </td>
                                                        <td>
                                                            <center><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblCompany" CommandArgument='<%# Eval("CompanyID") %>' /></center>
                                                        </td>
                                                        <td>
                                                            <asp:HiddenField ID="HiddenField3" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal></td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                    </tr>
                                                </AlternatingItemTemplate>
                                            </asp:Repeater>--%>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th rowspan="1" colspan="1">Name</th>
                                                <th rowspan="1" colspan="1">Company Name</th>
                                                <th rowspan="1" colspan="1">Designation</th>
                                                <th rowspan="1" colspan="1">Is Selected</th>
                                                <th rowspan="1" colspan="1">Delete</th>
                                                <th rowspan="1" colspan="1">Record Added By</th>
                                                <th rowspan="1" colspan="1">Added Date</th>
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

    </section>
    <!-- /.content -->
    <div class="modal fade" id="modal-default" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">Default Modal</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group" style="width: 50%; float: left;">
                        <div>
                            <label style="width: 50%;">Name</label>
                            <asp:Label ID="lblUserName" runat="server" Text="Parth"></asp:Label>
                        </div>
                        <div>
                            <label style="width: 50%;">Company Name</label>
                            <asp:Label ID="lblCompanyName" runat="server" Text="Parth"></asp:Label>
                        </div>
                        <div>
                            <label style="width: 50%;">Designation</label>
                            <asp:Label ID="lblDesignation" runat="server" Text="Parth"></asp:Label>
                        </div>
                        <div>
                            <label style="width: 50%;">Year</label>
                            <asp:Label ID="Label1" runat="server" Text="Parth"></asp:Label>
                        </div>
                        <div>
                            <label style="width: 50%;">In campus</label>
                            <asp:Label ID="lblcampus" runat="server" Text="Parth"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group" style="width: 50%; float: left;">

                        <div>
                            <label style="width: 50%;">Job Type</label>
                            <asp:Label ID="Label7" runat="server" Text="Parth"></asp:Label>
                        </div>
                        <div>
                            <label style="width: 50%;">Is Selected</label>
                            <asp:Label ID="Label8" runat="server" Text="Parth"></asp:Label>
                        </div>
                        <div>
                            <label style="width: 50%;">CTC</label>
                            <asp:Label ID="Label9" runat="server" Text="Parth"></asp:Label>
                        </div>
                        <div>
                            <label style="width: 50%;">City</label>
                            <asp:Label ID="Label10" runat="server" Text="Parth"></asp:Label>
                        </div>
                    </div>
                    <div>

                        <ul class="timeline timeline-inverse" style="margin-left: 0px">
                            <li class="time-label"></li>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <li>

                                        <div class="timeline-item">
                                            <h2 class="timeline-header"><a>Round 1</a></h2>

                                            <div class="timeline-body">
                                                <asp:Repeater ID="Repeater2" runat="server">
                                                    <ItemTemplate>
                                                        <div>
                                                            <h4 class="timeline-header">Question</h4>
                                                            <span>Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
                        weebly ning heekya handango imeem plugg dopplr jibjab, movity
                        jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
                        quora plaxo ideeli hulu weebly balihoo...</span>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                <div>
                                                    <label>Level Of Difficulty: </label>
                                                    <asp:Image ID="Image2" runat="server" AlternateText="Easy" /><asp:Image ID="Image3" runat="server" AlternateText="Easy" />
                                                </div>
                                            </div>

                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <!-- END timeline item -->
                            <!-- timeline item -->


                        </ul>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
        })
        $(function () {
            $('#example3').DataTable()
            $('#example4').DataTable({
                'paging': true,
                'lengthChange': false,
                'searching': false,
                'ordering': true,
                'info': true,
                'autoWidth': false
            })
        })
    </script>
</asp:Content>