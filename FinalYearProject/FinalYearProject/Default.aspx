<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalYearProject._Default" %>

<%@ Register Src="busadd.ascx" TagName="busadd" TagPrefix="uc1" %>

<%@ Register Src="busedit.ascx" TagName="busedit" TagPrefix="uc2" %>
<%@ Register Src="~/gpsedit.ascx" TagPrefix="uc1" TagName="gpsedit" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script>
        var y, z;
        var myCenter;
        getval();
        function getval() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition, showError);
            }
            else {
                x.innerHTML = "Geolocation is not supported by this browser.";
            }

        }

        function showPosition(position) {
            y = position.coords.latitude;
            z = position.coords.longitude;
            // alert(y + "sdf" + z);
            myCenter = new google.maps.LatLng(y, z);
        }


        function showError(error) {
            switch (error.code) {
                case error.PERMISSION_DENIED:
                    x.innerHTML = "User denied the request for Geolocation."
                    break;
                case error.POSITION_UNAVAILABLE:
                    x.innerHTML = "Location information is unavailable."
                    break;
                case error.TIMEOUT:
                    x.innerHTML = "The request to get user location timed out."
                    break;
                case error.UNKNOWN_ERROR:
                    x.innerHTML = "An unknown error occurred."
                    break;
            }
        }



        // var lat = Position.coods.LatLng;
        // document.getElementById("txtforstateless").innerHTML = lat;

        function initialize() {
            var mapProp = {
                center: myCenter,
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

            var marker = new google.maps.Marker({
                position: myCenter,
                //added
                animation: google.maps.Animation.DROP
                //added
                //  icon:'pinkball.png'

            });

            marker.setMap(map);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>


    <div class="jumbotron">

        <span class="sidemenu">

            <ul>
                <li><a href="#">BUS &#9662;</a>
                    <ul class="dropdown">
                        <li><a href="Default.aspx?taskid=11">ADD </a></li>
                        <li><a href="Default.aspx?taskid=12">EDIT</a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
                <li><a href="#">GPS &#9662;</a>
                    <ul class="dropdown">
                        <li><a href="Default.aspx?taskid=21">ADD</a></li>
                        <li><a href="Default.aspx?taskid=22">EDIT</a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">USERS &#9662;</a>
                    <ul class="dropdown">
                        <li><a href="Default.aspx?taskid=31">ADD</a></li>
                        <li><a href="Default.aspx?taskid=32">EDIT</a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
                <li>
                    <a href="Default.aspx?taskid=viewmap">View Map</a>
                </li>
            </ul>
        </span>
        <span class="content">

            <%
                string tsst = Request.QueryString["taskid"];
                switch (tsst)
                {
                    case "11":
                    
            %>
            <b style="text-align: center;"></b>

            <br />
            <uc1:busadd ID="busadd1" runat="server" />




            <%          break;
                    case "12":
            
            %>
            a
           <b style="vertical-align: middle;">
               <uc2:busedit ID="busedit1" runat="server" />
           </b>
            <%   
                        break;

                    case "21":
            %>

            <%
                        break;

                        case "22":
            %>
            <uc1:gpsedit runat="server" ID="gpsedit" />
            <%
                        break;


                        case "viewmap":
            %>
            <div id="googleMap" style="width: 350px; height: 256px; padding-top: 18px; align-self: center;"></div>
            <%
                            break;
                    case "about":
                        
            
            %>This is the final year project on the vehicle tracking system<br />
            XXXXXXXXXXXXX
                          <%   
                        break;
                    case "contact":
            
                          %>you can contact us in the following details:
                            <br />
            XXXXXXXXXXXX
                          <%   
                        break;
                }
                          %>
        </span>

    </div>


</asp:Content>
