<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication5.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="bg-image">
        <h1 class="text-light">Contact Us</h1>
    </div>
    <h6 class="text-center">Home/Contact Us</h6>
    <div style="background-image: url('Content/greypattern-bg.jpg'); padding: 30px">


        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-12">
                    <div class="d-flex align-items-center ">
                        <div>
                            <i class="fa fa-phone fs-3 me-3"></i>

                        </div>
                        <div>

                            <h4>Phone</h4>
                            <p>08068976999</p>
                        </div>
                        </div>

                        <hr />
                     <div class="d-flex align-items-center ">
                         <div>
                        <i class="fa-solid fa-location-dot fs-3 me-3"></i>
                         </div>
                         <div>                        <h4>Address</h4>
                        <p>Puraniks City, Neral, Near Pimploli Village, Old Market, Neral, Maharashtra 410101</p>
                             </div>
                         </div>
                        <hr />
                    </div>
                
                <div class="col-lg-6 col-12 bg-info">
                    <h4>ENQUIRY NOW</h4>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Full Name</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Mobile Number</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Email Id</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Message</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="">
                        <br />
                        <button class="text-light text center" type="Submit" id="Submit">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="map-wrapper">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d30174.177077263026!2d73.349708!3d19.029760000000003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa6624046467486ca!2sPuraniks%20City%2C%20Neral!5e0!3m2!1sen!2sin!4v1669104007552!5m2!1sen!2sin" width="100%" height="510" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>
   
</asp:Content>
