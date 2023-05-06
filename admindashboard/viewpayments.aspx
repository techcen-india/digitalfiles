<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="viewpayments.aspx.cs" Inherits="admindashboard_viewpayments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container">



    <div class="row">
        <div class="col-lg-12">

             
          
                     <div class="card">
                <div class="card-header border-bottom-dashed">

                     <div class="d-sm-flex align-items-center justify-content-between">
                 <h2 class="hdr-clr"> Fee Payments</h2>

                  <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="/admin/">Dashboard</a></li>
                                             <li > / </li>
                                            <li class="active">View Payments</li>
                                        </ol>

                                                       <a href="addpayments" type="button" class="btn btn-primary add-btn" style="float:right;" ><i class="ri-add-line align-bottom me-1"></i> Add Payments</a>

                                     </div>
                        
                     </div>

                      <hr />
                </div>
               



 <%--<form runat="server" id="filter">
                            <div class="row">
                             
                                    <div class="col-lg-3">
                                    <div>

                                        <label  class="hdr-clr">Branch</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
<asp:ListItem>All Locaions</asp:ListItem>
                                       <asp:ListItem>Hyderabad</asp:ListItem>
                                     
                                        
                                               
                                        </asp:DropDownList>

                                    </div>
                                </div>


                                    <div class="col-lg-3">
                                    <div>

                                        <label  class="hdr-clr">Client Name</label>
                                        <asp:DropDownList ID="searchbydepartment" runat="server" CssClass="form-control" DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
<asp:ListItem>All Courses</asp:ListItem>
                                       <asp:ListItem>MegaOnline</asp:ListItem>
                                        <asp:ListItem>Sarvagna</asp:ListItem>
                                        
                                               
                                        </asp:DropDownList>

                                    </div>
                                </div>


                                    <div class="col-lg-3">
                                    <div>

                                        <label  class="hdr-clr">Payment Status</label>
                                        <asp:DropDownList ID="searchbymanagementlevel" runat="server" CssClass="form-control" DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                      <asp:ListItem>Paid</asp:ListItem>
                                            <asp:ListItem>Pending</asp:ListItem>
                                            <asp:ListItem>No Payments</asp:ListItem>
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
                            <table class="table align-middle" id="customerTable">
                                <thead class="table-light text-muted">
                                    <tr>

                                                                                 <th class="sort" >Payment Date</th>
 
                                        
                                         <th class="sort" >Course Name</th>

                                        <th class="sort" >Batch Name</th>
                                        <th class="sort" >Payment Mode</th>

                                         <th class="sort" >Student Name</th>
                                          <th class="sort" >Payment Amount</th>
                                         <th class="sort" >Paid to</th>
                                     

                                        <th class="sort" data-sort="action">Action</th>
                                    </tr>
                                </thead>
                                <tbody class="list form-check-all">
                                    <tr>
                                        <td  >27/03/2023</td>
                                     
                                         <td  >.Net</td>
                                         <td  >Batch002</td>
                                        <td  >Cash</td>
                                        <td >Kumar</td>
                                        <td  >25000</td>
                                         <td  >Accountant</td>
                                     
                                        <td>
                                            <ul class="list-inline hstack gap-2 mb-0">
                                                <li class="list-inline-item edit" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Edit">
                                                    <a href="editfeepayments"   class="text-primary d-inline-block edit-item-btn">
                                                        <i class="fa fa-user-edit"></i>


                                                    </a>
                                                </li>
                                                <li class="list-inline-item" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Remove">
                                                    <a class="text-danger d-inline-block remove-item-btn" data-bs-toggle="modal" href="#deleteRecordModal">
                                                        <i class="fa fa-trash" aria-hidden="true"></i>

                                                    </a>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="noresult" style="display: none">
                                <div class="text-center">
                                    <lord-icon src="https://cdn.lordicon.com/msoeawqm.json" trigger="loop" colors="primary:#25a0e2,secondary:#00bd9d" style="width:75px;height:75px">
                                    </lord-icon>
                                    <h5 class="mt-2">Sorry! No Result Found</h5>
                                    <p class="text-muted mb-0">
                                        We've searched more than 150+ customers
                                        We did not find any
                                        customers for you search.
                                    </p>
                                </div>
                            </div>
                        </div>
                   
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

