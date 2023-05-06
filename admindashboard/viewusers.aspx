<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="viewusers.aspx.cs" Inherits="admindashboard_viewusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    
    <div class="container">



    <div class="row">
        <div class="col-lg-12">
              <div class="card">
                    <div class="card-header border-bottom-dashed">

                        <div class="d-sm-flex align-items-center justify-content-between">
                            <h2 class="hdr-clr"> Users</h2>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="/admin/">Dashboard</a></li>
                                    <li class="">/ </li>
                                    <li class=" active">View Users</li>
                                </ol>

                                <a href="addusers" type="button" class="btn btn-primary add-btn" style="float: right;"><i class="ri-add-line align-bottom me-1"></i>Add Users</a>

                            </div>

                        </div>

                        <hr />

                    </div>


                  <%--<form runat="server" id="filter">
                            <div class="row">
                                <div class="col-lg-3" >
                                    <div>

                                        <label  class="hdr-clr">Select Branch</label>
                                        <asp:DropDownList ID="searchbybranch" runat="server" CssClass="form-control" DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                             <asp:ListItem>All Branches</asp:ListItem>
                                            <asp:ListItem value="hyderabad" Selected>Hyderabad</asp:ListItem>
                                            <asp:ListItem>Vizag</asp:ListItem>
                                            <asp:ListItem>Mumbai</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>

                                    <div class="col-lg-3">
                                    <div>

                                        <label  class="hdr-clr">Select User Type</label>
                                        <asp:DropDownList ID="searchbydepartment" runat="server" CssClass="form-control" DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                            <asp:ListItem Value="superadmin" >Super Admin</asp:ListItem>
                                           <asp:ListItem Value="team" >team</asp:ListItem>
                                        <asp:ListItem Value="client">Client</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>


                                    <div class="col-lg-3">
                                    <div>

                                        <label  class="hdr-clr">Select Name</label>
                                        <asp:DropDownList ID="searchbymanagementlevel" runat="server" CssClass="form-control" DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                            <asp:ListItem>Naveen</asp:ListItem>
                                         <asp:ListItem>Kumar</asp:ListItem>
                                        <asp:ListItem>Mahesh</asp:ListItem>
                                             
                                        </asp:DropDownList>

                                    </div>
                                </div>

                                  <div class="col-lg-3">
                                    <div>

                                        <label  class="hdr-clr">Select Active Status</label>
                                        <asp:DropDownList ID="searchbyempstatus" runat="server" CssClass="form-control" DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                             <asp:ListItem Value="active" >Active</asp:ListItem>
                                           <asp:ListItem Value="Inactive" >InActive</asp:ListItem>
                                        <asp:ListItem Value="pause">pause</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>



                            </div>


                              <div class="col-sm-auto" style="padding-top:2%; float:right;">
                            <div class="d-flex flex-wrap align-items-start gap-2">
                                <button  type="button" class="btn btn-primary add-btn"><i class="ri-add-line align-bottom me-1"></i> Search</button>

                            </div>
                        </div>
                        </form>--%>


                <div class="card-body">
                    <div>
                        <div class="table-responsive table-card mb-1">

                            <form runat="server" id="filter">

                            <div class="form-group" style="overflow-x:scroll">
                        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" OnRowCommand="gv_RowCommand" CssClass="table table-bordered">
                            <Columns>
                                <asp:BoundField HeaderText="SNo" DataField="SNo" ItemStyle-Width="30px" />
                                <asp:BoundField HeaderText="Lead Date" DataField="CreatedOn" DataFormatString="{0:dd-MM-yyyy}" ItemStyle-Width="100px" />
                                <asp:BoundField HeaderText="User Id" DataField="UserId" />
                                <asp:BoundField HeaderText="Company Name" DataField="Fullname" />
                                <asp:BoundField HeaderText="User Name" DataField="Username" />
                                <asp:BoundField HeaderText="Login Type" DataField="Userlogintype" />
                                <asp:BoundField HeaderText="Active Status" DataField="Activestatus" />
                             
                                <asp:TemplateField HeaderText="View" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkView" runat="server" CommandName="cmdView" Text="View" CommandArgument='<%#Eval("UserId")%>' CssClass="btn text-primary"> <span data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Edit"><i class="fa fa-eye"></i></span> </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="cmdDelete" Text="Delete" CssClass="btn text-danger" 
                                            CommandArgument='<%#Eval("UserId")%>' OnClientClick="return confirm('Are you sure you want to delete this Record?');"><span data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Remove"> <i class="fa fa-trash" aria-hidden="true"></i></span> </asp:LinkButton>
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

</form>



 
                    </div>
                     

                    <!-- Modal -->
                    <div class="modal fade zoomIn" id="deleteRecordModal" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="btn-close" id="deleteRecord-close" data-bs-dismiss="modal" aria-label="Close" id="btn-close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="mt-2 text-center">
                                        <lord-icon src="https://cdn.lordicon.com/gsqxdxog.json" trigger="loop" colors="primary:#25a0e2,secondary:#00bd9d" style="width:100px;height:100px"></lord-icon>
                                        <div class="mt-4 pt-2 fs-15 mx-4 mx-sm-5">
                                            <h4>Are you sure ?</h4>
                                            <p class="text-muted mx-4 mb-0">
                                                Are you sure you want to
                                                remove this record ?
                                            </p>
                                        </div>
                                    </div>
                                    <div class="d-flex gap-2 justify-content-center mt-4 mb-2">
                                        <button type="button" class="btn w-sm btn-light" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn w-sm btn-primary " id="delete-record">Yes, Delete It!</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end modal -->
                </div>
            </div>

        </div>
        <!--end col-->
    </div>

</div>




</asp:Content>

