<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="Lead.aspx.cs" Inherits="Flat" %>

<%--<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <h5>Lead Details
                </h5>
                <hr />


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
                                    <asp:TextBox runat="server" placeholder="Lead Location*" ID="txtLeadloc" CssClass="form-control" required></asp:TextBox><br />
                                        </div>
                                    </div>

                                   <div class="col-md-12">
                                        <div class="form-group">
                                    <asp:TextBox runat="server" placeholder="Company Name*" ID="txtCompany" CssClass="form-control" required></asp:TextBox><br />
                                        </div>
                                    </div>

                                  <div class="col-md-12">
                                        <div class="form-group">
                                    <asp:TextBox runat="server" placeholder="Lead Owner*" ID="txtLeadowner" CssClass="form-control" required></asp:TextBox><br />
                                        </div>
                                    </div>

                                      <div class="col-md-12">
                                        <div class="form-group">
                                              <asp:DropDownList ID="txtLeadsource" runat="server" CssClass="form-control" AutoPostBack="true">
          
                     <asp:ListItem Text="Select Lead Source" />                            
                                                 <asp:ListItem Value="new" Text="New" />
            <asp:ListItem Value="Self" Text="Self" />
            <asp:ListItem Value="Referral" Text="Referral" />
                                                             <asp:ListItem Value="Social Media" Text="Social Media" />
            <asp:ListItem Value="Walkin" Text="Walkin" />

                                                  <asp:ListItem Value="Website" Text="Website" />

        </asp:DropDownList>


                                        <%--  <asp:TextBox runat="server" placeholder="Lead Status Name" ID="txtLeadstatus1" CssClass="form-control" required></asp:TextBox><br />--%>

                                        </div>
                                    </div>

                                  <br   />    <br />      <br />

<%--
                                  <div class="col-md-12">
                                        <div class="form-group">
                                    <asp:TextBox runat="server" placeholder="Lead Source*" ID="txtLeadsource" CssClass="form-control" required></asp:TextBox><br />
                                        </div>
                                    </div>--%>

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
                                              <asp:DropDownList ID="txtLeadstatus" runat="server" CssClass="form-control" AutoPostBack="true">
          
                     <asp:ListItem Text="Select Lead Status" />                            
                                                 <asp:ListItem Value="new" Text="New" />
            <asp:ListItem Value="active" Text="Active" />
            <asp:ListItem Value="pending" Text="Pening" />
                                                             <asp:ListItem Value="converted" Text="Converted" />
            <asp:ListItem Value="cancelled" Text="Cancelled" />

        </asp:DropDownList>


                                        <%--  <asp:TextBox runat="server" placeholder="Lead Status Name" ID="txtLeadstatus1" CssClass="form-control" required></asp:TextBox><br />--%>

                                        </div>
                                    </div>
                                 <br />
  <br   />    <br />    
                                    <div class="col-md-12">
                                        <div class="form-group">
                                    <asp:TextBox runat="server" placeholder="Enter Comments* " ID="txtNotes" CssClass="form-control" required></asp:TextBox><br />
                                        </div>
                                    </div>

                                   <div class="col-md-12">
                                        <div class="form-group">
                                    <asp:TextBox runat="server" placeholder="Select Followup Date*" ID="txtfollowdate" CssClass="form-control" type="date" required></asp:TextBox><br />
                                        </div>
                                    </div>


                                    <div class="col-md-12">
                                            <asp:HiddenField ID="hdnItemId" runat="server" Value="0" />
                                   <asp:Button   runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSave_Click" />
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

</asp:Content>

