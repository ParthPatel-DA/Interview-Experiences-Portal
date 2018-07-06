<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainMaster.master" AutoEventWireup="true" CodeFile="AddCompany.aspx.cs" Inherits="Admin_AddCompany" ValidateRequest="false" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Company
       
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
                <asp:Panel ID="errormailer" runat="server" class="alert alert-error alert-dismissable fade in" Visible="false">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Opps!</strong> User Email or Password Invalied.
                </asp:Panel>
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Company Form</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group col-md-6">
                            <label>Company Name:</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-industry"></i>
                                </div>
                                <asp:TextBox ID="txtCompanyName" runat="server" class="form-control pull-right"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Web Site:</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-globe"></i>
                                </div>
                                <asp:TextBox ID="txtCompanyWebsite" runat="server" class="form-control pull-right"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Profile Image:</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-image"></i>
                                </div>

                                <div class="form-control text-center" style="margin-bottom: -34px;"><span class="fa fa-upload"></span>&nbsp;Choose File</div>
                                <asp:FileUpload ID="fileProfileImage" runat="server" class="form-control pull-right" Style="opacity: 0;" />
                            </div>
                        </div>

                        <div class="form-group col-md-12">
                            <label>Description</label>
                            <div class="box-body pad">
                                <asp:TextBox ID="txtCompanyDescription" class="form-control textarea" runat="server" placeholder="Enter Description ..." TextMode="MultiLine" Style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group col-md-12" style="margin-top: 20px;">
                            <div class="input-group pull-right">
                                <asp:Button ID="btnAddCompany" runat="server" Text="Add Admin" class="btn btn-flat btn-primary" OnClick="btnAddCompany_Click" />
                            </div>
                        </div>

                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
    <!-- /.content -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <!-- DataTables -->
    <script src="Client Assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="Client Assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <!-- CK Editor -->
    <script src="Client Assets/bower_components/ckeditor/ckeditor.js"></script>
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
        $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('editor1')
            //bootstrap WYSIHTML5 - text editor
            $('.textarea').wysihtml5()
        })
    </script>
</asp:Content>

