﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="viewleads.aspx.cs" Inherits="admindashboard_viewleads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container">



    <div class="row">
        <div class="col-lg-12">


               <div class="card">
                <div class="card-header border-bottom-dashed">

                     <div class="d-sm-flex align-items-center justify-content-between">
                 <h2 class="hdr-clr"> Leads</h2>

                  <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="/admin/">Dashboard</a></li>
                                             <li > / </li>
                                            <li class="active">View Leads</li>
                                        </ol>

                                 <a href="addleads" type="button" class="btn btn-primary add-btn" style="float:right;" ><i class="ri-add-line align-bottom me-1"></i> Add New Lead</a>

                                     </div>
                        
                     </div>

                      <hr />
                </div>
               
<%--<form runat="server" id="filter">
                            <div class="row">
                         
                                <div class="col-lg-3">
                                               <label  class="hdr-clr">Lead Source</label>

                                    <asp:DropDownList ID="txtleadsource" runat="server" CssClass="form-control">
                                        <asp:ListItem Value=""> --- Select Source ---</asp:ListItem>
                                        <asp:ListItem Value="All">All Sources</asp:ListItem>
                                        <asp:ListItem>Facebook</asp:ListItem>
                                        <asp:ListItem>LinkedIn</asp:ListItem>
                                        <asp:ListItem>Instagram</asp:ListItem>
                                         <asp:ListItem>Instagram</asp:ListItem>
                                         <asp:ListItem>Youtube</asp:ListItem>
                                         <asp:ListItem>Email Marketing</asp:ListItem>
                                        <asp:ListItem>Word of Mouth</asp:ListItem>
                                        <asp:ListItem>Print Media</asp:ListItem>
                                         <asp:ListItem>Employee Referral</asp:ListItem>
                                         <asp:ListItem>Management Referral</asp:ListItem>
                                         <asp:ListItem>Website Trafiic Lead</asp:ListItem>
                                        <asp:ListItem>Cold Calls</asp:ListItem>
                                        <asp:ListItem>Incoming Calls</asp:ListItem>
                                         <asp:ListItem>Referral Program</asp:ListItem>
                                         <asp:ListItem>Events</asp:ListItem>
                                         <asp:ListItem>Paid Promotions</asp:ListItem>
                                          <asp:ListItem>Customer Referrals</asp:ListItem>
                                        <asp:ListItem>Franchiser </asp:ListItem>
                                         <asp:ListItem>Other Sources </asp:ListItem>
                                     
                                    
                                    </asp:DropDownList>
                                            <hr />
                                        </div>
                               
 



                            </div>

     
                        </form>--%>


 
                <div class="card-body">
                    <div>
                        <div class="table-responsive table-card mb-1">
                            <table class="table align-middle" id="customerTable">
                                <thead class="table-light text-muted">
                                    <tr>

                                        <th class="sort" >Lead ID</th>
                                        <th class="sort" >Lead Name</th>
                                        <th class="sort" >Date Of Contact</th>
                                        <th class="sort" >Lead Phone</th>
                                        <th class="sort" >Lead Location</th>
                                         <th class="sort" >Lead Source</th>
                                        <th class="sort" >Course Name</th>
                                         <th class="sort" >Lead Status</th>
                                 
                                        <th class="sort" data-sort="action">Action</th>
                                    </tr>
                                </thead>
                                <tbody class="list form-check-all">
                                    <tr>
                                         <td  >Lead02</td>
                                        <td  >Rakesh</td>
                                        <td  >15/03/2023</td>
                                        <td >9900990099</td>
                                        <td  >Hyderabad</td>
                                        <td  >Facebook</td>
                                         <td >Java</td>
                                      <td  >Open</td>
                                        <td>
                                            <ul class="list-inline hstack gap-2 mb-0">
                                                <li class="list-inline-item edit" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Edit">
                                                    <a href="editleads"   class="text-primary d-inline-block edit-item-btn">
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

