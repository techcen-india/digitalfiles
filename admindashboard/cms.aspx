<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="cms.aspx.cs" Inherits="cms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <h1>
                    <asp:Label runat="server" ID="lblTitle"></asp:Label></h1>
                <hr />
                <div class="widget">
                    <div class="form-group">
                        <label>CMS Key</label>
                        <asp:TextBox runat="server" ID="txtCMSKey" CssClass="form-control" required=""></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="">Meta Title</label>
                        <asp:TextBox runat="server" placeholder="Meta Title" ID="txtMetaTitle" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="">Meta DeScription</label>
                        <asp:TextBox runat="server" placeholder="Meta DeScription" ID="txtMetaDescription" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="">Meta Keywords</label>
                        <asp:TextBox runat="server" placeholder="Meta Keywords" ID="txtMetaKeywords" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Page Title</label><asp:TextBox runat="server" ID="txtCMSName" CssClass="form-control" required=""></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Page Content</label><asp:TextBox runat="server" ID="txtCMSContent" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:HiddenField ID="hdnItemId" runat="server" Value="0" />
                            <asp:HiddenField ID="hdnCMSKey" runat="server" Value="" />
                            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnSubmit_Click" />&nbsp;&nbsp;&nbsp;
                              <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-primary" Text="Back to list" UseSubmitBehavior="false" CausesValidation="false" OnClick="btnCancel_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

