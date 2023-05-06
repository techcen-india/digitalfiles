<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="addleads.aspx.cs" Inherits="admindashboard_addleads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container"  >
       <div class="row">
            <div class="col-lg-12" >


             <div class="card">
                    <div class="card-header border-bottom-dashed">

                        <div class="d-sm-flex align-items-center justify-content-between">
                            <h2 class="hdr-clr">New Leads</h2>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="/admin/">Dashboard</a></li>
                                    <li class="">/ </li>
                                    <li class="active">New Leads</li>
                                </ol>


                            </div>

                        </div>
                        <hr />

                        <div class="card-body">

   <form id="form1" runat="server">
                    <div class="all-wrapper menu-side with-pattern">
                        <div class="auth-box-w" >
                            <div class="logo-w">
                                <img alt="" src="assets/img/logo.png" />
                            </div>
                             <div class="pdng-5">
                              
                                  <div class="row">



                                    <div class="col-lg-4">
                                                <label  class="hdr-clr">Lead Date</label>

                                  <asp:TextBox ID="txtnewleaddate" runat="server" CssClass="form-control" Text='<%# Bind("DateofBirth") %>' type="date"  ></asp:TextBox>
                                          <hr />
                                        </div>



                                      
                             


                                      <div class="col-lg-4">
                                               <label  class="hdr-clr">Lead Source</label>

                                    <asp:DropDownList ID="txtleadsource" runat="server" CssClass="form-control">
                                        <asp:ListItem Value=""> --- Select Source ---</asp:ListItem>
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

                                    <div class="col-lg-4">
                                                    <label  class="hdr-clr">Lead Owner</label>
                                    <asp:TextBox runat="server"   ID="txtleadowner" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>


                                   

                                               <div class="col-lg-4">
                                                    <label  class="hdr-clr">Lead Company Name</label>
                                    <asp:TextBox runat="server"   ID="txtleadname" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>

    
                                      
                                               <div class="col-lg-4">
                                                    <label  class="hdr-clr">Lead POC Name</label>
                                    <asp:TextBox runat="server"   ID="txtpocname" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>
 

                                      <div class="col-lg-4">
                                                  <label  class="hdr-clr">Lead Location</label>
                                    <asp:TextBox runat="server"   ID="txtleadlocation" CssClass="form-control"></asp:TextBox>
                             <hr />
                                        </div>

                              

                                       <div class="col-lg-4">
                                                   <label  class="hdr-clr">Lead Phone Number</label>
                                    <asp:TextBox runat="server"   ID="txtleadphonenumber" CssClass="form-control"></asp:TextBox>
                              <hr />
                                        </div>

                                   

                                       <div class="col-lg-4">
        <label  class="hdr-clr">Lead Email ID</label>
                                    <asp:TextBox runat="server"  ID="txtleademailid" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>

                                   <div class="col-lg-4">
        <label  class="hdr-clr">Lead Business Details</label>
                                    <asp:TextBox runat="server"  ID="txtleaddetails" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>

                                   
                                       <div class="col-lg-4">
        <label  class="hdr-clr">Lead`s Requirements</label>
                                    <asp:TextBox runat="server"  ID="leadrequirements" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>


 


        <div class="col-lg-4">
        <label  class="hdr-clr">Lead Contact Preference</label>
                                    <asp:DropDownList ID="txtleadcontactpreference" runat="server"  CssClass="form-control"  DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                        <asp:ListItem Value=""> --- Select Preference ---</asp:ListItem>
                                      
                                          <asp:ListItem>Phone</asp:ListItem>
                                         
                                               <asp:ListItem>Email</asp:ListItem>
                                               <asp:ListItem >Visit Location</asp:ListItem>
                                               <asp:ListItem >WhatsApp</asp:ListItem>
                                               <asp:ListItem >Social Media</asp:ListItem>
                                           </asp:DropDownList>
    
                                <hr />
                                        </div>



        <div class="col-lg-4">
                                               <div class="form-group pdng-2 " id="empdol" >
                                    <label  class="hdr-clr">Date of Next Contact</label>

                                  <asp:TextBox ID="txtleadnextcontact" runat="server" CssClass="form-control"   type="date"  ></asp:TextBox>

                                </div>

                                             <hr />
                                        </div>



        <div class="col-lg-4">
        <label  class="hdr-clr">Lead Remarks</label>
                                    <asp:TextBox runat="server"  ID="TextBox3" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>


                                      
                                       <div class="col-lg-4">
                                           <label  class="hdr-clr">Lead Status</label>
                                         <asp:DropDownList ID="empstatus" runat="server"  CssClass="form-control"  DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                        <asp:ListItem Value=""> --- Select Lead Status ---</asp:ListItem>
                                      
                                          <asp:ListItem>New</asp:ListItem>
                                         
                                               <asp:ListItem>Contacted</asp:ListItem>
                                               <asp:ListItem >Qualified</asp:ListItem>
                                               <asp:ListItem >Pending</asp:ListItem>
                                             <asp:ListItem >Unqualified</asp:ListItem>
                                        
                                 
                                             </asp:DropDownList>
                                         <hr />
                                           
                                       </div>


                                       <div class="col-lg-12">
                                           
                                <div class="buttons-w" >
                                    <%--                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Log Me In" OnClick="btnLogin_Click" />--%>

                                    <asp:Button ID="btn_Submit" runat="server" CssClass="btn btn-primary" Text="Save" />

 <a href="viewleads"  class="btn btn-primary">Cancel</a>
                                </div>
                                        </div>
                                        



                                        </div>

                                    

                    
                            </div>
                        </div>
                    </div>
















                </form>





                </div>

           </div>

         </div>

   
                </div>

           </div>

         </div>


</asp:Content>

