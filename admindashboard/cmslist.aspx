<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="cmslist.aspx.cs" Inherits="cmslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <h5>Web Pages </h5>
                <hr />
                <div class="widget">
                    <div class="form-group">
                        <asp:Button ID="btnAdd" runat="server" Text="Add New" OnClick="btnAdd_Click" CssClass="btn btn-primary" />

                    </div>
                    <div class="form-group">
                        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" OnRowCommand="gv_RowCommand" CssClass="table table-bordered">
                            <Columns>
                                <asp:BoundField HeaderText="SNo" DataField="SNo" ItemStyle-Width="30px" />
                                <asp:BoundField HeaderText="PageName" DataField="CMSName" />
                                <asp:BoundField HeaderText="CMS Key" DataField="CMSKey" />
                                <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="cmdEdit" Text="Edit" CommandArgument='<%#Eval("CMSId")%>' CssClass="btn btn-primary"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <center>
                                    No Records Found
                                </center>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
