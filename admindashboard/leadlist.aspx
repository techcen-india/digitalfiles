<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="LeadList.aspx.cs" Inherits="LeadList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <form runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <h5>Leads </h5>
                <hr />
                <div class="widget">
                    <div class="form-group">
                    </div>
                    <div class="form-group" style="overflow-x:scroll">
                        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" OnRowCommand="gv_RowCommand" CssClass="table table-bordered">
                            <Columns>
                                <asp:BoundField HeaderText="SNo" DataField="SNo" ItemStyle-Width="30px" />
                                <asp:BoundField HeaderText="Lead Date" DataField="LeadDate" DataFormatString="{0:dd-MM-yyyy}" ItemStyle-Width="100px" />
                                <asp:BoundField HeaderText="Lead Type" DataField="LeadType" />
                                <asp:BoundField HeaderText="Status" DataField="Lead" />
                                <asp:BoundField HeaderText="Full Name" DataField="FullName" />
                                <asp:BoundField HeaderText="Mobile" DataField="Mobile" />
                                <asp:BoundField HeaderText="Email" DataField="Email" />
                                <asp:BoundField HeaderText="Details" DataField="Notes" />
                                <asp:TemplateField HeaderText="View" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkView" runat="server" CommandName="cmdView" Text="View" CommandArgument='<%#Eval("LeadId")%>' CssClass="btn btn-primary"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="cmdDelete" Text="Delete" CssClass="btn btn-primary"
                                            CommandArgument='<%#Eval("LeadId")%>' OnClientClick="return confirm('Are you sure you want to delete this Record?');"></asp:LinkButton>
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

</form>

</asp:Content>

