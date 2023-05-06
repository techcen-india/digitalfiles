<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="addpayments.aspx.cs" Inherits="admindashboard_addpayments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container"  >
       <div class="row">
            <div class="col-lg-12" >


             <div class="card">
                    <div class="card-header border-bottom-dashed">

                        <div class="d-sm-flex align-items-center justify-content-between">
                            <h2 class="hdr-clr">Add Payments</h2>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="/admin/">Dashboard</a></li>
                                    <li class="">/ </li>
                                    <li class=" active">Add Payments</li>
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
                                                <label  class="hdr-clr">Date of Payment</label>

                                  <asp:TextBox ID="TxtDoJ" runat="server" CssClass="form-control" Text='<%# Bind("DateofBirth") %>' type="date"  ></asp:TextBox>
                                          <hr />
                                        </div>

                                      <div class="col-lg-4">
                                               <label  class="hdr-clr">Branch Name</label>

                                    <asp:DropDownList ID="txtBranchname" runat="server" CssClass="form-control">
                                        <asp:ListItem Value=""> --- Select Branch ---</asp:ListItem>
                                        <asp:ListItem>Hyderabad</asp:ListItem>
                                        <asp:ListItem>Vizag</asp:ListItem>
                                        <asp:ListItem>Mumbai</asp:ListItem>
                                     
                                    
                                    </asp:DropDownList>
                                            <hr />
                                        </div>

                                      <div class="col-lg-4">
                                             <label  class="hdr-clr">Client Name</label>

                                    <asp:DropDownList ID="txtDepartmentName" runat="server" CssClass="form-control">
                                        <asp:ListItem Value=""> --- Select Client ---</asp:ListItem>
                                            <asp:ListItem>Mega Online</asp:ListItem>
                                        <asp:ListItem>Sarvagna</asp:ListItem>
                                       
                       
                                    </asp:DropDownList>
                                            <hr />
                                        </div>


       <div class="col-lg-4">
                                                    <label  class="hdr-clr">Referrer Name</label>
                                    <asp:TextBox runat="server"   ID="TextBox1" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>


      

                                         <div class="col-lg-4">
                                                    <label  class="hdr-clr"> Amount Approved</label>
                                    <asp:TextBox runat="server"   ID="txtcoursetotalfee" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>



                                        <div class="col-lg-4">
                                                    <label  class="hdr-clr"> Amount Paid</label>
                                    <asp:TextBox runat="server"   ID="txtpaidamount" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>


                                        <div class="col-lg-4">
                                                    <label  class="hdr-clr">Amounnt Pending</label>
                                    <asp:TextBox runat="server"   ID="txtpfeepending" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>

                                           <div class="col-lg-4">
                                                    <label  class="hdr-clr"> Amount to Pay</label>
                                    <asp:TextBox runat="server"   ID="txtpaymentamount" CssClass="form-control"></asp:TextBox>
                                <hr />
                                        </div>

                                       

                                       

                                       <div class="col-lg-4">
                                            <label  class="hdr-clr">Payment Mode</label>
                                         <asp:DropDownList ID="txtEmpExp" runat="server" CssClass="form-control"  DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                        <asp:ListItem Value=""> --- Select Payment Mode ---</asp:ListItem>
                                          <asp:ListItem>Cash</asp:ListItem>
                                            <asp:ListItem>Cheque</asp:ListItem>
                                            <asp:ListItem>NEFT Transfer</asp:ListItem>
                                            <asp:ListItem>Card Swipe</asp:ListItem>
                                            <asp:ListItem>PayTM</asp:ListItem>
                                            <asp:ListItem>Google pay</asp:ListItem>
                                            <asp:ListItem>PhonePe</asp:ListItem>
                                            <asp:ListItem>BharatPe</asp:ListItem>
                                            <asp:ListItem>Free</asp:ListItem>
                                            <asp:ListItem>PayPal</asp:ListItem>
                                             </asp:DropDownList>
                                   
                                      <hr />       
                                       </div>


                                       
                                        <div class="col-lg-4">
                                                  <label  class="hdr-clr">Referance Number</label>
                                    <asp:TextBox runat="server"   ID="paymentrefnumber" CssClass="form-control" ></asp:TextBox>
                             <hr />
                                        </div>

                                        

                                       

                                      <div class="col-lg-4">
                                                  <label  class="hdr-clr">Payment to</label>
                                    <asp:TextBox runat="server"   ID="txtempcity" CssClass="form-control" value="Accountant" ReadOnly></asp:TextBox>
                             <hr />
                                        </div>

                                     
                                      

                                        <div class="col-lg-4">
                                            <label  class="hdr-clr">Full Payment Status</label>
                                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"  DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                        <asp:ListItem Value=""> --- Select Payment Status ---</asp:ListItem>
                                          <asp:ListItem>Paid</asp:ListItem>
                                            <asp:ListItem>Pending</asp:ListItem>
                                            <asp:ListItem>No Payments</asp:ListItem>
                                            
                                             </asp:DropDownList>
                                   
                                      <hr />       
                                       </div>
                                    

                                 
                                       


                                       <div class="col-lg-12">
                                           
                                <div class="buttons-w" >
                                    <%--                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Log Me In" OnClick="btnLogin_Click" />--%>

                                    <asp:Button ID="btn_Submit" runat="server" CssClass="btn btn-primary" Text="Save" />

 <a href="viewpayments"  class="btn btn-primary">Cancel</a>
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

