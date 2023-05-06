<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="certificates.aspx.cs" Inherits="dashboard_certificates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  
    <div ng-app="">

        <div class="app-menu navbar-menu" style="overflow-y: scroll; overflow-x: clip; padding: 1%;">
            <!-- LOGO -->





            <div>
                <div class="navbar-brand-box">
                    <!-- Dark Logo-->
                    <a href="../" class="logo-dark">
                        <span class="logo-sm">
                            <img src="../userassets/images/logos/Techcen-digitalfiles-logo.png" alt="" style="width:100%">
                        </span>

                    </a>
                    <hr />

                </div>
                <div style="text-align: center; padding: 3%;">
                    <h5>Generate Certificate</h5>
                    <hr />
                </div>




                <ul class="navbar-nav" id="navbar-nav">
                




                    <li class="nav-item">
                        <a class="nav-link menu-link" href="#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                            <i data-feather="home" class="icon-dual"></i><span data-key="t-dashboards">Choose Design</span>
                        </a>
                        <div class="collapse menu-dropdown" id="sidebarDashboards">
                            <div class="row" style="overflow-y: scroll; height: 200px; width: 115%;">
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-1.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-2.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-3.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-4.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-5.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                 <div class="column">
                                    <img src="../userassets/images/certificates/certificate-6.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-7.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-8.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-9.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>
                                <div class="column">
                                    <img src="../userassets/images/certificates/certificate-10.jpg" style="width: 100%" onclick="myFunction(this);">
                                </div>


                            </div>

                        </div>


                    </li>



 


                    <li class="nav-item">
                        <a class="nav-link menu-link" href="#sidebarDashboards2" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                            <i data-feather="home" class="icon-dual"></i><span data-key="t-dashboards">Content</span>
                        </a>
                        <div class="collapse menu-dropdown" id="sidebarDashboards2">


                            <div class="row" style="padding-top: 3%;">

                                <div style="text-align: center; padding: 3%;">
                                    <h5>Content & Alignment </h5>
                                </div>
                                <div class="col-xxl-12 col-md-12" style="padding-bottom: 4%">
                                    <div>
                                        <label for="labelInput" class="form-label">Name</label>
                                      <%--  <input type='button' value="&#8595;" onclick='move(10)' class="arrowbtn">
                                        <input type='button' value="&#8593;" onclick='moveup(10)' class="arrowbtn">

                                        <input type='button' value="&#8592;" onclick='moveright(10)' class="arrowbtn">
                                        <input type='button' value="&#8594;" onclick='moveleft(10)' class="arrowbtn">--%>
                                        <input type="text" ng-model="name" class="form-control" id="labelInput">
                                    </div>
                                </div>
                                <hr />
                                <div class="col-xxl-12 col-md-12" style="padding-bottom: 4%">
                                    <div>
                                        <label for="basiInput" class="form-label">Subject</label>
                                      <%--  <input type='button' value="&#8595;" onclick='subjectdown(10)' class="arrowbtn">
                                        <input type='button' value="&#8593;" onclick='subjectup(10)' class="arrowbtn">

                                        <input type='button' value="&#8592;" onclick='subjectright(10)' class="arrowbtn">
                                        <input type='button' value="&#8594;" onclick='subjectleft(10)' class="arrowbtn">--%>
                                        <input type="text" ng-model="subject" class="form-control" id="basiInput">
                                    </div>
                                </div>



                                <hr />

                                <div class="col-xxl-12 col-md-12" style="padding-bottom: 4%">
                                    <div>
                                        <label for="basiInput" class="form-label">Sub Content</label>
                                      <%--  <input type='button' value="&#8595;" onclick='contentdown(10)' class="arrowbtn">
                                        <input type='button' value="&#8593;" onclick='contentup(10)' class="arrowbtn">

                                        <input type='button' value="&#8592;" onclick='contentright(10)' class="arrowbtn">
                                        <input type='button' value="&#8594;" onclick='contentleft(10)' class="arrowbtn">--%>
                                        <asp:DropDownList ID="certcoursename" ng-model="subcontent" runat="server" CssClass="form-control" DataTextField="Text" DataValueField="Value" EnableIncrementalSearch="true" CaseSensitiveSearch="true">
                                            <asp:ListItem Value="">Select Course</asp:ListItem>
                                            <asp:ListItem Value="ok ">Course Completion</asp:ListItem>
                                            <asp:ListItem Value=" okkkk">Recognization  </asp:ListItem>
                                            <asp:ListItem Value="for her valuable contribution toward the successful implementation of our company’s excellent quality assurance programs.">Appriication</asp:ListItem>
                                        </asp:DropDownList>
                                        <%-- <input type="text" ng-model="subcontent" class="form-control" id="basiInput1">--%>
                                    </div>
                                </div>
                                <!--end col-->

                                <hr />
                                <div class="col-xxl-12 col-md-12" style="padding-bottom: 4%">
                                    <div>
                                        <label for="labelInput" class="form-label">Date</label>
                                      <%--  <input type='button' value="&#8595;" onclick='datedown(10)' class="arrowbtn">
                                        <input type='button' value="&#8593;" onclick='dateup(10)' class="arrowbtn">

                                        <input type='button' value="&#8592;" onclick='dateright(10)' class="arrowbtn">
                                        <input type='button' value="&#8594;" onclick='dateleft(10)' class="arrowbtn">--%>
                                        <input type="date" ng-model="date1" class="form-control" id="certifydate1" >
                                    </div>
                                </div>
                                <hr />

                                <div class="col-xxl-12 col-md-12" style="padding-bottom: 4%">
                                    <div>
                                        <label for="labelInput" class="form-label">Logo</label>


                                                <input type='button' value="O" onclick='logobig(10)' class="arrowbtn">
                                        <input type='button' value="o" onclick='logosmall(10)' class="arrowbtn">

                                       <%-- <input type='button' value="&#8595;" onclick='logodown(10)' class="arrowbtn">
                                        <input type='button' value="&#8593;" onclick='logoup(10)' class="arrowbtn">

                                        <input type='button' value="&#8592;" onclick='logoright(10)' class="arrowbtn">
                                        <input type='button' value="&#8594;" onclick='logoleft(10)' class="arrowbtn">--%>
                                        <%-- <input type="text" ng-model="authorized" class="form-control" id="certifydate">--%>
                                    </div>
                                </div>


                                <div class="col-xxl-12 col-md-12" style="padding: 4%">
                                    <div>
                                        <label for="labelInput" class="form-label">Sign</label>

                                           <input type='button' value="O" onclick='signbig(10)' class="arrowbtn">
                                        <input type='button' value="o" onclick='signsmall(10)' class="arrowbtn">

                                         <%--   <input type='button' value="&#8595;" onclick='signdown(10)' class="arrowbtn">
                                            <input type='button' value="&#8593;" onclick='signup(10)' class="arrowbtn">

                                            <input type='button' value="&#8592;" onclick='signright(10)' class="arrowbtn">
                                            <input type='button' value="&#8594;" onclick='signleft(10)' class="arrowbtn">--%>
                                        <%--  <input type="text"   class="form-control" id="certifydate">--%>
                                    </div>
                                </div>


                            </div>
                        </div>


                    </li>






            <%--        <li class="nav-item">
                        <a class="nav-link menu-link" href="#sidebarDashboards4" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                            <i data-feather="home" class="icon-dual"></i><span data-key="t-dashboards">My Dashboard</span>
                        </a>
                        <div class="collapse menu-dropdown" id="sidebarDashboards4">
                        </div>


                    </li>--%>




                </ul>


                 





            </div>




        </div>


    


        <div class="main-content">


            <div class="page-content">
                <div class="container-fluid">


                    <div class="card-body" id="pdf">
                     
                        <div  id="photo" >
                               <h3 style="text-align:center;">Pick  Design from Templates</h3>
                            <img  id="defaultImg" style="width: 91%; height: 510px; padding-left: 85px;" />

                            <div class="container">
                                <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>

                                <img id="expandedImg" style="width: 85%; height: 510px;">
                                <div id="imgtext"></div>



                                <%--  <div class="name" ng-bind="name" ></div>  --%>
                               <div class="name" ng-bind="name" id='h1' style='position: absolute; top: 270px; left: 440px;'></div> 

                          


                                <div class="subject" ng-bind="subject" id='h2' style='position: absolute; top: 370px; left: 440px;'></div>

                                <div class="subcontent" ng-bind="subcontent" id='h3' style='position: absolute; top: 490px; '></div>

<%--                                <div class="date" ng-bind="date1" id='h4' style='position: absolute; top: 420px; left: 200px;'></div>--%>
                                                                <div class="date"   id='h4' style='position: absolute; top: 420px; left: 200px;'>{{date1 | date: "dd-MM-yyyy"}}</div>

                                <div class="logo">
                                    <img src="../userassets/images/logos/techcen.png" name="myImage1" id='h5' style='position: absolute; top: -500px; left: 660px;' />
                                </div>


                                <div class="authorized">

                                    <img src="../userassets/images/signs/signature.png" name="myImage1" id='h6' style='position: absolute; top: -40px; left: -20px; width: 106px;' />


                                </div>



                            </div>





                        </div>
                         
                    <%--    <input type="button" onclick="printDiv('printableArea')" value="print a div!" />--%>

                       
                    </div>
    
                </div>


            </div>






        </div>


    </div>



    <script type="text/javascript">



        // deal 1
        var imageList1 = Array();
        for (var i = 1; i <= 31; i++) {
            imageList1[i] = new Image(70, 70);
            imageList1[i].src = "assets/images/certificates/certificate-" + i + ".jpg";
        }

        function switchImage1() {
            var selectedImage1 = document.myForm1.switch1.options[document.myForm1.switch1.selectedIndex].value;
            document.myImage1.src = imageList1[selectedImage1].src;
        }

        // deal 2
        var imageList2 = Array();
        for (var i = 1; i <= 31; i++) {
            imageList2[i] = new Image(70, 70);
            imageList2[i].src = "https://falconsfm.com/assets/fid-files/fid-deals-list/fid-logos-" + i + ".jpg";
        }

        function switchImage2() {
            var selectedImage2 = document.myForm2.switch2.options[document.myForm2.switch2.selectedIndex].value;
            document.myImage2.src = imageList2[selectedImage2].src;
        }
        // deal 3
        var imageList3 = Array();
        for (var i = 1; i <= 31; i++) {
            imageList3[i] = new Image(70, 70);
            imageList3[i].src = "https://falconsfm.com/assets/fid-files/fid-deals-list/fid-logos-" + i + ".jpg";
        }

        function switchImage3() {
            var selectedImage3 = document.myForm3.switch3.options[document.myForm3.switch3.selectedIndex].value;
            document.myImage3.src = imageList3[selectedImage3].src;
        }

        // deal 4
        var imageList4 = Array();
        for (var i = 1; i <= 31; i++) {
            imageList4[i] = new Image(70, 70);
            imageList4[i].src = "https://falconsfm.com/assets/fid-files/fid-deals-list/fid-logos-" + i + ".jpg";
        }

        function switchImage4() {
            var selectedImage4 = document.myForm4.switch4.options[document.myForm4.switch4.selectedIndex].value;
            document.myImage4.src = imageList4[selectedImage4].src;
        }

        // deal 5
        var imageList5 = Array();
        for (var i = 1; i <= 31; i++) {
            imageList5[i] = new Image(70, 70);
            imageList5[i].src = "https://falconsfm.com/assets/fid-files/fid-deals-list/fid-logos-" + i + ".jpg";
        }

        function switchImage5() {
            var selectedImage5 = document.myForm5.switch5.options[document.myForm5.switch5.selectedIndex].value;
            document.myImage5.src = imageList5[selectedImage5].src;
        }

        // deal 6
        var imageList6 = Array();
        for (var i = 1; i <= 31; i++) {
            imageList6[i] = new Image(70, 70);
            imageList6[i].src = "https://falconsfm.com/assets/fid-files/fid-deals-list/fid-logos-" + i + ".jpg";
        }

        function switchImage6() {
            var selectedImage6 = document.myForm6.switch6.options[document.myForm6.switch6.selectedIndex].value;
            document.myImage6.src = imageList6[selectedImage6].src;
        }


        // deal 7
        var imageList7 = Array();
        for (var i = 1; i <= 31; i++) {
            imageList7[i] = new Image(70, 70);
            imageList7[i].src = "https://falconsfm.com/assets/fid-files/fid-deals-list/fid-logos-" + i + ".jpg";
        }

        function switchImage7() {
            var selectedImage7 = document.myForm7.switch7.options[document.myForm7.switch7.selectedIndex].value;
            document.myImage7.src = imageList7[selectedImage7].src;
        }





    </script>



    <style type="text/css">
        .arrowbtn {
            color: #fff;
            float: right;
            margin: 0% 1%;
            width: 30px;
            height: 30px;
            background-color: #0098da;
            border: 1px solid transparent;
            font-weight: 600;
            border-radius: 4px;
        }


        /* The grid: Four equal columns that floats next to each other */
        .column {
            float: left;
            width: 50%;
            padding: 15px;
        }

            /* Style the images inside the grid */
            .column img {
                opacity: 0.8;
                cursor: pointer;
            }

                .column img:hover {
                    opacity: 1;
                }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* The expanding image container */
        .container {
            position: relative;
            display: none;
        }

        /* Expanding image text */
        #imgtext {
            position: absolute;
            bottom: 15px;
            left: 15px;
            color: white;
            font-size: 20px;
        }

        /* Closable button inside the expanded image */
        .closebtn {
            position: absolute;
            top: -15px;
            right: 30px;
            color: #f06548;
            line-height: 0.65;
            font-size: 35px;
            cursor: pointer;
        }

        .page-content {
            padding: 6% 0% !important;
        }
    </style>



    <script>
        function myFunction(imgs) {

            var defaultImg = document.getElementById("defaultImg");
            defaultImg.style.display = "none";
            var expandImg = document.getElementById("expandedImg");
            var imgText = document.getElementById("imgtext");
            expandImg.src = imgs.src;
            imgText.innerHTML = imgs.alt;
            expandImg.parentElement.style.display = "block";
        }
    </script>


    <style>
        .container {
            position: relative;
            text-align: center;
            color: white;
        }

        .name {
            position: absolute;
            /*top: 355px;*/
            font-size: 40px;
            color: #000000;
            /* left: 365px;*/
            font-family: 'Secular One', sans-serif;
            transform: translate(-50%, -50%);
        }


        .subject {
            position: absolute;
            /* top: 70%;*/
            color: #000000;
            font-size: 26px;
            /*left: 50%;*/
            transform: translate(-50%, -50%);
        }

        .date {
            position: absolute;
            /* bottom: 80px;*/
            font-size: 20px;
            /*left: 130px;*/
            color: #000000;
        }

        .logo {
            position: absolute;
            /*top: 228px;*/
            /* font-size: 16px;*/
            /* left: 416px;*/
            /* color: #000000;*/
        }

        .authorized {
            position: absolute;
            bottom: 80px;
            font-size: 20px;
            left: 365px;
            color: #000000;
        }

        .subcontent {
            position: absolute;
            top: 80%;
            color: #000000;
            font-size: 16px;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>



    <%-- Name Movement code--%>

    <script type='text/javascript'>

        var texttop = 270;
        var h1 = document.getElementById('h1');

        function move(amount) {
            texttop += amount;
            h1.style.top = texttop + 'px';
        }

    </script>
    <script type='text/javascript'>

        var texttop = 270;
        var h1 = document.getElementById('h1');

        function moveup(amount) {
            texttop -= amount;
            h1.style.top = texttop + 'px';
        }

    </script>

    <script type='text/javascript'>

        var textleft = 440;
        var h1 = document.getElementById('h1');

        function moveleft(amount) {
            textleft += amount;
            h1.style.left = textleft + 'px';
        }

    </script>
    <script type='text/javascript'>

        var textleft = 440;
        var h1 = document.getElementById('h1');

        function moveright(amount) {
            textleft -= amount;
            h1.style.left = textleft + 'px';
        }



    </script>


    <%-- Subject Movement code--%>

    <script type='text/javascript'>

        var stexttop = 370;
        var h2 = document.getElementById('h2');

        function subjectdown(amount) {
            stexttop += amount;
            h2.style.top = stexttop + 'px';
        }

    </script>
    <script type='text/javascript'>

        var stexttop = 370;
        var h2 = document.getElementById('h2');

        function subjectup(amount) {
            stexttop -= amount;
            h2.style.top = stexttop + 'px';
        }

    </script>

    <script type='text/javascript'>

        var stextleft = 440;
        var h2 = document.getElementById('h2');

        function subjectleft(amount) {
            stextleft += amount;
            h2.style.left = stextleft + 'px';
        }

    </script>
    <script type='text/javascript'>

        var stextleft = 440;
        var h2 = document.getElementById('h2');

        function subjectright(amount) {
            stextleft -= amount;
            h2.style.left = stextleft + 'px';
        }





    </script>


    <%-- content Movement code--%>

    <script type='text/javascript'>

        var ctexttop = 490;
        var h3 = document.getElementById('h3');

        function contentdown(amount) {
            ctexttop += amount;
            h3.style.top = ctexttop + 'px';
        }

    </script>
    <script type='text/javascript'>

        var ctexttop = 490;
        var h3 = document.getElementById('h3');

        function contentup(amount) {
            ctexttop -= amount;
            h3.style.top = ctexttop + 'px';
        }

    </script>

    <script type='text/javascript'>

        var ctextleft = 460;
        var h3 = document.getElementById('h3');

        function contentleft(amount) {
            ctextleft += amount;
            h3.style.left = ctextleft + 'px';
        }

    </script>
    <script type='text/javascript'>

        var ctextleft = 460;
        var h3 = document.getElementById('h3');

        function contentright(amount) {
            ctextleft -= amount;
            h3.style.left = ctextleft + 'px';
        }


    </script>



    <%-- date Movement code--%>

    <script type='text/javascript'>

        var dtexttop = 420;
        var h4 = document.getElementById('h4');

        function datedown(amount) {
            dtexttop += amount;
            h4.style.top = dtexttop + 'px';
        }

    </script>
    <script type='text/javascript'>

        var dtexttop = 420;
        var h4 = document.getElementById('h4');

        function dateup(amount) {
            dtexttop -= amount;
            h4.style.top = dtexttop + 'px';
        }

    </script>

    <script type='text/javascript'>

        var dtextleft = 200;
        var h4 = document.getElementById('h4');

        function dateleft(amount) {
            dtextleft += amount;
            h4.style.left = dtextleft + 'px';
        }

    </script>
    <script type='text/javascript'>

        var dtextleft = 200;
        var h4 = document.getElementById('h4');

        function dateright(amount) {
            dtextleft -= amount;
            h4.style.left = dtextleft + 'px';
        }


    </script>



    <%-- logo Movement code--%>

    <script type='text/javascript'>

        var ltexttop = -500;
        var h5 = document.getElementById('h5');

        function logodown(amount) {
            ltexttop += amount;
            h5.style.top = ltexttop + 'px';
        }

    </script>
    <script type='text/javascript'>

        var ltexttop = -500;
        var h5 = document.getElementById('h5');

        function logoup(amount) {
            ltexttop -= amount;
            h5.style.top = ltexttop + 'px';
        }

    </script>

    <script type='text/javascript'>

        var ltextleft = 660;
        var h5 = document.getElementById('h5');

        function logoleft(amount) {
            ltextleft += amount;
            h5.style.left = ltextleft + 'px';
        }

    </script>
    <script type='text/javascript'>

        var ltextleft = 660;
        var h5 = document.getElementById('h5');

        function logoright(amount) {
            ltextleft -= amount;
            h5.style.left = ltextleft + 'px';
        }


    </script>



    <%-- sign Movement code--%>

    <script type='text/javascript'>

        var sgntexttop = -40;
        var h6 = document.getElementById('h6');

        function signdown(amount) {
            sgntexttop += amount;
            h6.style.top = sgntexttop + 'px';
        }

    </script>
    <script type='text/javascript'>

        var sgntexttop = -40;
        var h6 = document.getElementById('h6');

        function signup(amount) {
            sgntexttop -= amount;
            h6.style.top = sgntexttop + 'px';
        }

    </script>

    <script type='text/javascript'>

        var sgntextleft = -20;
        var h6 = document.getElementById('h6');

        function signleft(amount) {
            sgntextleft += amount;
            h6.style.left = sgntextleft + 'px';
        }

    </script>
    <script type='text/javascript'>
        {
            var sgntextleft = -20;
            var h6 = document.getElementById('h6');

            function signright(amount) {
                sgntextleft -= amount;
                h6.style.left = sgntextleft + 'px';
            }
    </script>






    
    
    <%-- sign resize code--%>

    <script type='text/javascript'>

            var sgntextsize = 106;
            var h7 = document.getElementById('h6');

            function signbig(amount) {
                sgntextsize += amount;
                h6.style.width = sgntextsize + 'px';
            }

    </script>
    <script type='text/javascript'>

            var sgntextsize = 106;
            var h7 = document.getElementById('h6');

            function signsmall(amount) {
                sgntextsize -= amount;
                h6.style.width = sgntextsize + 'px';
            }

    </script>
     



    

 

    
          <%-- logo resize code--%>

    <script type='text/javascript'>

            var ltextsize = 200;
            var h7 = document.getElementById('h5');

            function logobig(amount) {
                ltextsize += amount;
                h5.style.width = ltextsize + 'px';
            }

    </script>
    <script type='text/javascript'>

            var ltextsize = 200;
            var h7 = document.getElementById('h5');

            function logosmall(amount) {
                ltextsize -= amount;
                h5.style.width = ltextsize + 'px';
            }

    </script>
     












    
<script>
        //Make the DIV element draggagle:
        dragElement(document.getElementById("h1"));

        function dragElement(elmnt) {
            var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
            if (document.getElementById(elmnt.id + "header")) {
                /* if present, the header is where you move the DIV from:*/
                document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
            } else {
                /* otherwise, move the DIV from anywhere inside the DIV:*/
                elmnt.onmousedown = dragMouseDown;
            }

            function dragMouseDown(e) {
                e = e || window.event;
                e.preventDefault();
                // get the mouse cursor position at startup:
                pos3 = e.clientX;
                pos4 = e.clientY;
                document.onmouseup = closeDragElement;
                // call a function whenever the cursor moves:
                document.onmousemove = elementDrag;
            }

            function elementDrag(e) {
                e = e || window.event;
                e.preventDefault();
                // calculate the new cursor position:
                pos1 = pos3 - e.clientX;
                pos2 = pos4 - e.clientY;
                pos3 = e.clientX;
                pos4 = e.clientY;
                // set the element's new position:
                elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
            }

            function closeDragElement() {
                /* stop moving when mouse button is released:*/
                document.onmouseup = null;
                document.onmousemove = null;
            }
        }






        //Make the DIV element draggagle:
        dragElement(document.getElementById("h2"));

        function dragElement(elmnt) {
            var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
            if (document.getElementById(elmnt.id + "header")) {
                /* if present, the header is where you move the DIV from:*/
                document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
            } else {
                /* otherwise, move the DIV from anywhere inside the DIV:*/
                elmnt.onmousedown = dragMouseDown;
            }

            function dragMouseDown(e) {
                e = e || window.event;
                e.preventDefault();
                // get the mouse cursor position at startup:
                pos3 = e.clientX;
                pos4 = e.clientY;
                document.onmouseup = closeDragElement;
                // call a function whenever the cursor moves:
                document.onmousemove = elementDrag;
            }

            function elementDrag(e) {
                e = e || window.event;
                e.preventDefault();
                // calculate the new cursor position:
                pos1 = pos3 - e.clientX;
                pos2 = pos4 - e.clientY;
                pos3 = e.clientX;
                pos4 = e.clientY;
                // set the element's new position:
                elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
            }

            function closeDragElement() {
                /* stop moving when mouse button is released:*/
                document.onmouseup = null;
                document.onmousemove = null;
            }
        }


        //Make the DIV element draggagle:
        dragElement(document.getElementById("h3"));

        function dragElement(elmnt) {
            var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
            if (document.getElementById(elmnt.id + "header")) {
                /* if present, the header is where you move the DIV from:*/
                document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
            } else {
                /* otherwise, move the DIV from anywhere inside the DIV:*/
                elmnt.onmousedown = dragMouseDown;
            }

            function dragMouseDown(e) {
                e = e || window.event;
                e.preventDefault();
                // get the mouse cursor position at startup:
                pos3 = e.clientX;
                pos4 = e.clientY;
                document.onmouseup = closeDragElement;
                // call a function whenever the cursor moves:
                document.onmousemove = elementDrag;
            }

            function elementDrag(e) {
                e = e || window.event;
                e.preventDefault();
                // calculate the new cursor position:
                pos1 = pos3 - e.clientX;
                pos2 = pos4 - e.clientY;
                pos3 = e.clientX;
                pos4 = e.clientY;
                // set the element's new position:
                elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
            }

            function closeDragElement() {
                /* stop moving when mouse button is released:*/
                document.onmouseup = null;
                document.onmousemove = null;
            }
        }


        //Make the DIV element draggagle:
        dragElement(document.getElementById("h4"));

        function dragElement(elmnt) {
            var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
            if (document.getElementById(elmnt.id + "header")) {
                /* if present, the header is where you move the DIV from:*/
                document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
            } else {
                /* otherwise, move the DIV from anywhere inside the DIV:*/
                elmnt.onmousedown = dragMouseDown;
            }

            function dragMouseDown(e) {
                e = e || window.event;
                e.preventDefault();
                // get the mouse cursor position at startup:
                pos3 = e.clientX;
                pos4 = e.clientY;
                document.onmouseup = closeDragElement;
                // call a function whenever the cursor moves:
                document.onmousemove = elementDrag;
            }

            function elementDrag(e) {
                e = e || window.event;
                e.preventDefault();
                // calculate the new cursor position:
                pos1 = pos3 - e.clientX;
                pos2 = pos4 - e.clientY;
                pos3 = e.clientX;
                pos4 = e.clientY;
                // set the element's new position:
                elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
            }

            function closeDragElement() {
                /* stop moving when mouse button is released:*/
                document.onmouseup = null;
                document.onmousemove = null;
            }
        }





        //Make the DIV element draggagle:
        dragElement(document.getElementById("h5"));

        function dragElement(elmnt) {
            var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
            if (document.getElementById(elmnt.id + "header")) {
                /* if present, the header is where you move the DIV from:*/
                document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
            } else {
                /* otherwise, move the DIV from anywhere inside the DIV:*/
                elmnt.onmousedown = dragMouseDown;
            }

            function dragMouseDown(e) {
                e = e || window.event;
                e.preventDefault();
                // get the mouse cursor position at startup:
                pos3 = e.clientX;
                pos4 = e.clientY;
                document.onmouseup = closeDragElement;
                // call a function whenever the cursor moves:
                document.onmousemove = elementDrag;
            }

            function elementDrag(e) {
                e = e || window.event;
                e.preventDefault();
                // calculate the new cursor position:
                pos1 = pos3 - e.clientX;
                pos2 = pos4 - e.clientY;
                pos3 = e.clientX;
                pos4 = e.clientY;
                // set the element's new position:
                elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
            }

            function closeDragElement() {
                /* stop moving when mouse button is released:*/
                document.onmouseup = null;
                document.onmousemove = null;
            }
        }







        //Make the DIV element draggagle:
        dragElement(document.getElementById("h6"));

        function dragElement(elmnt) {
            var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
            if (document.getElementById(elmnt.id + "header")) {
                /* if present, the header is where you move the DIV from:*/
                document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
            } else {
                /* otherwise, move the DIV from anywhere inside the DIV:*/
                elmnt.onmousedown = dragMouseDown;
            }

            function dragMouseDown(e) {
                e = e || window.event;
                e.preventDefault();
                // get the mouse cursor position at startup:
                pos3 = e.clientX;
                pos4 = e.clientY;
                document.onmouseup = closeDragElement;
                // call a function whenever the cursor moves:
                document.onmousemove = elementDrag;
            }

            function elementDrag(e) {
                e = e || window.event;
                e.preventDefault();
                // calculate the new cursor position:
                pos1 = pos3 - e.clientX;
                pos2 = pos4 - e.clientY;
                pos3 = e.clientX;
                pos4 = e.clientY;
                // set the element's new position:
                elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
            }

            function closeDragElement() {
                /* stop moving when mouse button is released:*/
                document.onmouseup = null;
                document.onmousemove = null;
            }
        }








</script>



         <script>


                 function printDiv(divName) {
                     var printContents = document.getElementById(divName).innerHTML;
                     var originalContents = document.body.innerHTML;

                     document.body.innerHTML = printContents;

                     window.print();

                     document.body.innerHTML = originalContents;
                 }

         </script>

     <script type="text/javascript">

             // Define the function
             // to screenshot the div
             function takeshot() {
                 let div =
                     document.getElementById('photo');

                 // Use the html2canvas
                 // function to take a screenshot
                 // and append it
                 // to the output div
                 html2canvas(div).then(
                     function (canvas) {
                         document
                             .getElementById('output')
                             .appendChild(canvas);
                     })
             }
     </script>
   
    	<script src=
"https://cdn.jsdelivr.net/npm/html2canvas@1.0.0-rc.5/dist/html2canvas.min.js">
	</script>
     <script type="text/javascript">

             document.querySelector('button').addEventListener('click', function () {
                 html2canvas(document.querySelector('.specific'), {
                     onrendered: function (canvas) {
                         // document.body.appendChild(canvas);
                         return Canvas2Image.saveAsPNG(canvas);
                     }
                 });
             });


     </script>


    	<script type="text/javascript">

                // Define the function
                // to screenshot the div
                function takeshot() {
                    let div =
                        document.getElementById('photo');

                    // Use the html2canvas
                    // function to take a screenshot
                    // and append it
                    // to the output div
                    html2canvas(div).then(
                        function (canvas) {
                            document
                                .getElementById('output')
                                .appendChild(canvas);
                        })
                }
        </script>
 

</asp:Content>


