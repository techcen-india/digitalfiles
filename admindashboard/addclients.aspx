<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="addclients.aspx.cs" Inherits="addclients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container">
        <div class="row">
            <div class="col-lg-12">


                <div class="card">
                    <div class="card-header border-bottom-dashed">

                        <div class="d-sm-flex align-items-center justify-content-between">
                            <h2 class="hdr-clr">Add Client</h2>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="/admin/">Dashboard</a></li>
                                    <li>/ </li>
                                    <li class=" active">Add Client</li>
                                </ol>


                            </div>

                        </div>
                        <hr />

                        <div class="card-body">

                            <form runat="server">



                                <div class="ltn__login-area pb-65">
                                    <div class="container">

                                        <div class="row">
                                            <div class="col-lg-12">
                                                <asp:Label ID="lblMessage" runat="server"></asp:Label>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <h1>
                                                <asp:Label runat="server" ID="lblTitle"></asp:Label>
                                            </h1>
                                            <div class="col-lg-6">
                                                <div class="account-login-inner">
                                                    <div class="ltn__form-box contact-form-box">

                                                        <div class="row">
                                                        

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Client Name*" ID="txtCompany" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Client Location*" ID="txtLeadloc" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>



                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="txtclientsource" runat="server" CssClass="form-control" AutoPostBack="true">

                                                                        <asp:ListItem Text="Select Lead Source" />
                                                                        <asp:ListItem Value="new" Text="New" />
                                                                        <asp:ListItem Value="Self" Text="Self" />
                                                                        <asp:ListItem Value="Referral" Text="Referral" />
                                                                        <asp:ListItem Value="Social Media" Text="Social Media" />
                                                                        <asp:ListItem Value="Walkin" Text="Walkin" />

                                                                        <asp:ListItem Value="Website" Text="Website" />

                                                                    </asp:DropDownList>



                                                                </div>
                                                            </div>

                                                            <br />
                                                            <br />
                                                            <br />

                               

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Enter Name*" ID="txtFullName" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Enter email*" ID="txtEmail" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Enter Mobile*" ID="txtMobile" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>

                                                 <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Client Added Date*" ID="txtfollowdate" CssClass="form-control" type="date" required></asp:TextBox><br />
                                                                </div>
                                                            </div>



                                                                   <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="txtduration" runat="server" CssClass="form-control" AutoPostBack="true">

                                                                        <asp:ListItem Text="Select duration" />
                                                                         <asp:ListItem Value="3" Text="3 Months" />
                                                                        <asp:ListItem Value="6" Text="6 Months" />
                                                                         <asp:ListItem Value="12" Text="12 Months" />

                                                                    </asp:DropDownList>

                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />
                                                            <br />


  <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Client End Date*" ID="txtenddate" CssClass="form-control" type="date" required></asp:TextBox><br />
                                                                </div>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="txtclientstatus" runat="server" CssClass="form-control" AutoPostBack="true">

                                                                        <asp:ListItem Text="Select Client Status" />
                                                                         <asp:ListItem Value="active" Text="Active" />
                                                                        <asp:ListItem Value="inactive" Text="Inactive" />
                                                                         <asp:ListItem Value="cancelled" Text="Cancelled" />

                                                                    </asp:DropDownList>

                                                                </div>
                                                            </div>
                                                            <br />
                                                            <br />
                                                            <br />
                                                          
  
                                                             
                                                     
                                                               <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Approved Amount " ID="txtapprovedamount" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>


                                                                <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Paid Amount " ID="txtpaidamount" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>


                                                              <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Pending Amount " ID="txtpendingamount" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Enter Comments* " ID="txtNotes" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox runat="server" placeholder="Lead Owner*" ID="txtLeadowner" CssClass="form-control" required></asp:TextBox><br />
                                                                </div>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <asp:HiddenField ID="hdnItemId" runat="server" Value="0" />
                                                                <asp:Button runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                                                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-primary" Text="Back to list" UseSubmitBehavior="false" CausesValidation="false" OnClick="btnCancel_Click" />


                                                            </div>
                                                        </div>



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

