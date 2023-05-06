<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
  <meta charset="utf-8" />
    <title>Digital Files</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="userassets/images/favicon.ico">

    <!-- Layout config Js -->
    <script src="userassets/js/layout.js"></script>
    <!-- Bootstrap Css -->
    <link href="userassets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="userassets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="userassets/css/app.min.css" rel="stylesheet" type="text/css" />
    <!-- custom Css-->
    <link href="userassets/css/custom.min.css" rel="stylesheet" type="text/css" />


</head>

<body>

    <div class="auth-page-wrapper pt-5">
        <!-- auth page bg -->
        <div class="auth-one-bg-position auth-one-bg" id="auth-particles">
            <div class="bg-overlay"></div>

            <div class="shape">
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1440 120">
                    <path d="M 0,36 C 144,53.6 432,123.2 720,124 C 1008,124.8 1296,56.8 1440,40L1440 140L0 140z"></path>
                </svg>
            </div>
        </div>

        <!-- auth page content -->
        <div class="auth-page-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center mt-sm-5 mb-4 text-white-50">
                             
                         </div>
                    </div>
                </div>
                <!-- end row -->
  <div class="row">
                <div class="col-lg-12">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>


                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card mt-4">

                            <div class="card-body p-4">
                                <div class="text-center mt-2">
                                    <h2 class="text-primary">Welcome Back !</h2>
                                    <H3 class="text-muted">Sign in to continue</H3>
                                </div>
                                <div class="p-2 mt-4">
                                    <form runat="server">

                             

    <div class="ltn__login-area pb-65">
        <div class="container">
      
            <div class="row">
                <div class="col-lg-12">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </div>
            </div>
            <div class="row">
                 <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <div class="account-login-inner">
                        <div class="ltn__form-box contact-form-box">
                            <asp:TextBox runat="server" ID="txtUserName" Required="" CssClass="form-control" placeholder="UserName"></asp:TextBox><br />
                            <asp:TextBox runat="server" type="password" Required=""  ID="txtPassword" CssClass="form-control" placeholder="Password"></asp:TextBox><br />
                            <div class="btn-wrapper mt-0">
                                <asp:Button   runat="server" Text="Submit" CssClass="btn btn-success w-100" OnClick="btnSave_Click" />
                            </div>
                            <div class="go-to-btn mt-20">
                                <%-- <a href="#"><small>FORGOTTEN YOUR PASSWORD?</small></a>--%>
                            </div>
                        </div>
                    </div>
                </div>
               <div class="col-lg-2"></div>
            </div>
        </div>
    </div>

 </form>
                                    
      
        <!-- end Footer -->
    </div>
    <!-- end auth-page-wrapper -->

    <!-- JAVASCRIPT -->
    <script src="userassets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="userassets/libs/simplebar/simplebar.min.js"></script>
    <script src="userassets/libs/node-waves/waves.min.js"></script>
    <script src="userassets/libs/feather-icons/feather.min.js"></script>
    <script src="userassets/js/pages/plugins/lord-icon-2.1.0.js"></script>
    <script src="userassets/js/plugins.js"></script>

    <!-- particles js -->
    <script src="userassets/libs/particles.js/particles.js"></script>
    <!-- particles app js -->
    <script src="userassets/js/pages/particles.app.js"></script>
    <!-- password-addon init -->
    <script src="userassets/js/pages/password-addon.init.js"></script>

   <script type="text/javascript">
       document.addEventListener("contextmenu", function (event) {
           event.preventDefault();
           alert('Right Click is Disabled');
       }, false);
   </script>


    <script type="text/javascript">
        document.addEventListener("keydown", function (event) {
            if (event.ctrlKey && (event.keyCode === 67 || event.keyCode === 86 || event.keyCode === 85 || event.keyCode === 117)) {
                event.preventDefault();
            }
        });

    </script>


</body>

 
</html>
