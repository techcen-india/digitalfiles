<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="addusers.aspx.cs" Inherits="admindashboard_addusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container">



        <div class="row">
            <div class="col-lg-12">


             <div class="card">
                    <div class="card-header border-bottom-dashed">

                        <div class="d-sm-flex align-items-center justify-content-between">
                            <h2 class="hdr-clr">Add Users</h2>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="/admin/">Dashboard</a></li>
                                    <li class="">/ </li>
                                    <li class=" active">Add Users</li>
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
 
                                  


                                      <div class="col-lg-4 pdng-2">
       <label  class="hdr-clr">User Access Type </label>
                                         <asp:DropDownList ID="txtUserlogintype" runat="server"  CssClass="form-control"  DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                        <asp:ListItem Value=""> --- Select User Type ---</asp:ListItem>
                                     
                                            <asp:ListItem Value="superadmin" >Super Admin</asp:ListItem>
                                           <asp:ListItem Value="team" >team</asp:ListItem>
                                        <asp:ListItem Value="client">Client</asp:ListItem>
                                 
                                             </asp:DropDownList>
                            

                                                <hr />
                                        </div>

                        


     <div class="col-lg-4 pdng-2">
                                           <label  class="hdr-clr">Client Name</label>

<%--                                  <asp:TextBox ID="txtClientname" runat="server" CssClass="form-control"  ></asp:TextBox>--%>

       
                                      
                                                 <asp:DropDownList ID="txtClientname" runat="server" CssClass="form-control" AutoPostBack="true">
          
                     <asp:ListItem Text="Select Client Name" />                            
                                                 <asp:ListItem Value="new" Text="New" />
            <asp:ListItem Value="megaonline" Text="Mega Online" />
            <asp:ListItem Value="Sarvagna" Text="Sarvagna" />
                                                             <asp:ListItem Value="GuruLearningHub" Text="GuruLearningHub" />
          

        </asp:DropDownList>
                                            <hr />

                                        </div>


 

                                    <%--  <div class="col-lg-4 pdng-2">

     <label  class="hdr-clr">Date of Create User</label>

                                  <asp:TextBox ID="txtDatecreation" runat="server" CssClass="form-control" Text='<%# Bind("DateofBirth") %>'   type="date"  ></asp:TextBox>

                                            <hr />

                                        </div>--%>

                                  <%--    <div class="col-lg-4 pdng-2">
         <label  class="hdr-clr">User ID</label>
                                    <asp:TextBox runat="server"  ID="txtUserID" CssClass="form-control" ReadOnly></asp:TextBox>
                             

                                            <hr />

                                        </div>--%>

                                       <div class="col-lg-4 pdng-2">
                                                   <label  class="hdr-clr">Usename</label>
                                    <asp:TextBox runat="server"  ID="txtusername" CssClass="form-control" MaxLength="20"></asp:TextBox>
                           


                                        </div>


                                          <div class="col-lg-4 pdng-2">

         <label  class="hdr-clr">Enter Password</label>
                                    <asp:TextBox runat="server"  ID="txtpassword" CssClass="form-control" TextMode="Password" MaxLength="30"></asp:TextBox>
                               
  <hr />
                                        </div>

                                           <div class="col-lg-4 pdng-2">
       <label  class="hdr-clr">Active Status </label>
                                         <asp:DropDownList ID="txtactivestatus" runat="server"  CssClass="form-control"  DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                        <asp:ListItem Value=""> --- Select Active Status ---</asp:ListItem>
                                     
                                            <asp:ListItem Value="active" >Active</asp:ListItem>
                                           <asp:ListItem Value="Inactive" >InActive</asp:ListItem>
                                        <asp:ListItem Value="pause">pause</asp:ListItem>
                                 
                                             </asp:DropDownList>
                            

                                                <hr />
                                        </div>

                                      <div class="col-lg-12">
                                            <div class="buttons-w">
                                    <%--                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Log Me In" OnClick="btnLogin_Click" />--%>

                                                                                            <asp:HiddenField ID="hdnItemId" runat="server" Value="0" />

   <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnSubmit_Click" />
                            &nbsp;&nbsp;&nbsp;
                              <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-primary" Text="Back to list" UseSubmitBehavior="false" CausesValidation="false" OnClick="btnCancel_Click" />
                        
                        



<%--




                                    <asp:Button ID="btn_Submit" runat="server" CssClass="btn btn-primary" Text="Save" />

 <a href="viewusers"  class="btn btn-primary">Cancel</a>--%>
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

