<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainMaster.master" AutoEventWireup="true" CodeFile="AddCompanyCity.aspx.cs" Inherits="AddCompanyCity" ValidateRequest="false" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Company City Details
       
            <small>Preview</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Forms</a></li>
            <li class="active">Advanced Elements</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- SELECT2 EXAMPLE -->
        <div class="row" style="margin: 20px 0px 0px 0px;">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header">    
                        <h3 class="box-title">Company City Form</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group col-md-6">
                            <label>Company Name:</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-industry"></i>
                                </div>
                                <asp:DropDownList ID="ddCompanyName" runat="server" class="form-control select2-dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddCompanyName_SelectedIndexChanged"></asp:DropDownList>
                                
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Country Name:</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-location-arrow"></i>
                                </div>
                                <asp:DropDownList ID="ddCompanyCountry" runat="server" class="form-control select2-dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddCompanyCountry_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label>State Name:</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-industry"></i>
                                </div>
                                <asp:DropDownList ID="ddCompanyState" runat="server" class="form-control select2-dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddCompanyState_SelectedIndexChanged"></asp:DropDownList>
                                
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label>City Name:</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-location-arrow"></i>
                                </div>
                                <asp:DropDownList ID="ddCompanyCity" runat="server" class="form-control select2-dropdown"></asp:DropDownList>
                            </div>
                        </div>



                        <div class="form-group col-lg-12" style="margin-top: 20px;">
                            <div class="input-group pull-right">
                                <button class="btn btn-flat btn-primary">Add</button>
                            </div>
                        </div>

                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.row -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">


                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Company City(Location) Details</h3>
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
                                                    <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 182px;">Comapny Name</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 224px;">City Name</th>
    
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
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("CompanyID") %>' />
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>' /></td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Website") %>' /></td>
                                                            <td>
                                                                <center><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblCompany" CommandArgument='<%# Eval("CompanyID") %>' /></center>
                                                            </td>
                                                            <td>
                                                                <asp:HiddenField ID="HiddenField3" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                                <asp:Literal ID="Literal1" runat="server"></asp:Literal></td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                        </tr>
                                                    </AlternatingItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th rowspan="1" colspan="1"> Comapny Name</th>
                                                    <th rowspan="1" colspan="1">City Name</th>
                                        
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


                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

        </section>



    </section>
    <!-- /.content -->
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

