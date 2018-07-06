<%@ Page Title="" Language="C#" MasterPageFile="~/MainClientMasterPage.master" AutoEventWireup="true" CodeFile="addQuestion.aspx.cs" Inherits="addQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <contenttemplate>
                <div class="portlet-title">
                                <div class="caption">
                                    <div class="container">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control-focus col-md-12 input-group form-control " placeholder="Start your question with What , How , Why , etc. "></asp:TextBox>
                                    
                          <br> <br><div class="container">   <asp:CheckBox ID="CheckBox1" runat="server" Text="Add Anonymously"></asp:CheckBox>            <asp:Button ID="Button1" runat="server" Text="Add Question" class="btn green button-submit form-control fa fa-check">
                   </asp:Button>
                                    
                              
                           </div>
                                              
                                        </div>

                                    
                                </div>
                                </div>
                        
                    
            </contenttemplate>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

