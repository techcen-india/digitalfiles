﻿<%@ Page Title="" Language="C#" MasterPageFile="~/webMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <!-- ***** Welcome Area Start ***** -->
        <section id="home" class="section welcome-area bg-overlay overflow-hidden d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-md-6 order-2 order-md-1">
                        <!-- Welcome Thumb -->
                        <div class="welcome-thumb mx-auto">
                            <img src="webassets/img/welcome/welcome-mockup-2.png" alt="">
                        </div>
                    </div>
                    <!-- Welcome Intro Start -->
                    <div class="col-12 col-md-6 order-1 order-md-2">
                        <div class="welcome-intro px-0 px-lg-4">
                            <h1 class="text-white font-italic mb-2 mb-md-3">sApp</h1>
                            <h3 class="text-white text-capitalize">Premium App Landing page</h3>
                            <p class="text-white mt-3 mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit nihil tenetur minus quidem est deserunt molestias accusamus harum ullam tempore debitis et, expedita, repellat delectus aspernatur neque itaque qui quod.</p>
                            <!-- Store Buttons -->
                            <div class="button-group store-buttons d-flex">
                                <a href="#">
                                    <img src="webassets/img/icon/google-play.png" alt="">
                                </a>
                                <a href="#">
                                    <img src="webassets/img/icon/app-store.png" alt="">
                                </a>
                            </div>
                            <span class="d-inline-block text-white fw-3 font-italic mt-3">* Available on iPhone, iPad and all Android devices</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Welcome Area End ***** -->

        <!-- ***** Service Area Start ***** -->
        <section class="section service-area overflow-hidden ptb_100">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-12 col-lg-6 order-2 order-lg-1">
                        <!-- Service Text -->
                        <div class="service-text pt-5 pt-lg-0 px-0 px-lg-4">
                            <h2 class="text-capitalize mb-4">Organize all your media content easily</h2>
                            <!-- Service List -->
                            <ul class="service-list style-two">
                                <!-- Single Service -->
                                <li class="single-service py-2">
                                    <div class="service-text">
                                        <p>Fully layered dolor sit amet, consectetur adipisicing elit. Facere, nobis, id expedita dolores officiis laboriosam.</p>
                                    </div>
                                </li>
                                <!-- Single Service -->
                                <li class="single-service py-2">
                                    <div class="service-text">
                                        <p>Customizable design dolor sit amet, consectetur adipisicing elit. Facere, nobis, id expedita dolores officiis laboriosam.</p>
                                    </div>
                                </li>
                                <!-- Single Service -->
                                <li class="single-service py-2">
                                    <div class="service-text">
                                        <p>Drop ipsum dolor sit amet, consectetur adipisicing elit. Facere, nobis, id expedita dolores officiis laboriosam.</p>
                                    </div>
                                </li>
                                <!-- Single Service -->
                                <li class="single-service py-2">
                                    <div class="service-text">
                                        <p>Marketing chart dolor sit amet, consectetur adipisicing elit. Facere, nobis, id expedita dolores officiis laboriosam.</p>
                                    </div>
                                </li>
                            </ul>
                            <a href="#" class="btn sApp-btn mt-4">Learn More</a>
                        </div>
                    </div>
                    <div class="col-12 col-md-8 col-lg-6 order-1 order-lg-2">
                        <!-- Service Thumb -->
                        <div class="service-thumb mx-auto">
                            <img src="webassets/img/services/thumb-1.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Service Area End ***** -->

        <!-- ***** Discover Area Start ***** -->
        <section class="section discover-area bg-gray overflow-hidden ptb_100">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-12 col-md-8 col-lg-6 order-2 order-lg-1">
                        <!-- Discover Thumb -->
                        <div class="service-thumb discover-thumb mx-auto text-center pt-5 pt-lg-0">
                            <img src="webassets/img/discover/thumb-3.png" alt="">
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 order-1 order-lg-2">
                        <!-- Discover Text -->
                        <div class="discover-text pt-4 pt-lg-0 px-0 px-lg-4">
                            <h2 class="pb-4">Work faster with powerful filters</h2>
                            <!-- Service List -->
                            <ul class="service-list style-two">
                                <!-- Single Service -->
                                <li class="single-service py-2">
                                    <div class="service-text">
                                        <p>Fully layered dolor sit amet, consectetur adipisicing elit. Facere, nobis, id expedita dolores officiis laboriosam.</p>
                                    </div>
                                </li>
                                <!-- Single Service -->
                                <li class="single-service py-2">
                                    <div class="service-text">
                                        <p>Customizable design dolor sit amet, consectetur adipisicing elit. Facere, nobis, id expedita dolores officiis laboriosam.</p>
                                    </div>
                                </li>
                                <!-- Single Service -->
                                <li class="single-service py-2">
                                    <div class="service-text">
                                        <p>Drop ipsum dolor sit amet, consectetur adipisicing elit. Facere, nobis, id expedita dolores officiis laboriosam.</p>
                                    </div>
                                </li>
                                <!-- Single Service -->
                                <li class="single-service py-2">
                                    <div class="service-text">
                                        <p>Marketing chart dolor sit amet, consectetur adipisicing elit. Facere, nobis, id expedita dolores officiis laboriosam.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Discover Area End ***** -->

        <!-- ***** Features Area Start ***** -->
        <section id="features" class="section features-area overflow-hidden mt-5 ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <!-- Section Heading -->
                        <div class="section-heading text-center">
                            <h2>Why Small Business Owner's Loves sApp</h2>
                            <p class="d-none d-sm-block mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.</p>
                            <p class="d-block d-sm-none mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6">
                        <div class="features-slider-wrapper overflow-hidden">
                            <!-- Work Slider -->
                            <ul class="features-slider owl-carousel">
                                <li class="slide-item">
                                    <img src="webassets/img/screenshots/1.jpg" alt="">
                                </li>
                                <li class="slide-item">
                                    <img src="webassets/img/screenshots/2.jpg" alt="">
                                </li>
                                <li class="slide-item">
                                    <img src="webassets/img/screenshots/3.jpg" alt="">
                                </li>
                                <li class="slide-item">
                                    <img src="webassets/img/screenshots/4.jpg" alt="">
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 pt-4 pt-md-0">
                        <ul class="features-item">
                            <li>
                                <!-- Image Box -->
                                <div class="image-box media icon-1 px-1 py-3 py-md-4 wow fadeInRight" data-aos-duration="2s" data-wow-delay="0.2s">
                                    <!-- Featured Image -->
                                    <div class="featured-img mr-3">
                                        <img class="avatar-sm" src="webassets/img/icon/featured-img/layers.png" alt="">
                                    </div>
                                    <!-- Icon Text -->
                                    <div class="icon-text media-body align-self-center align-self-md-start">
                                        <h3 class="mb-2">Fully functional</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis culpa expedita dignissimos.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <!-- Image Box -->
                                <div class="image-box media icon-2 px-1 py-3 py-md-4 wow fadeInRight" data-aos-duration="2s" data-wow-delay="0.4s">
                                    <!-- Featured Image -->
                                    <div class="featured-img mr-3">
                                        <img class="avatar-sm" src="webassets/img/icon/featured-img/speak.png" alt="">
                                    </div>
                                    <!-- Icon Text -->
                                    <div class="icon-text media-body align-self-center align-self-md-start">
                                        <h3 class="mb-2">Live Chat</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis culpa expedita dignissimos.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <!-- Image Box -->
                                <div class="image-box media icon-3 px-1 py-3 py-md-4 wow fadeInRight" data-aos-duration="2s" data-wow-delay="0.6s">
                                    <!-- Featured Image -->
                                    <div class="featured-img mr-3">
                                        <img class="avatar-sm" src="webassets/img/icon/featured-img/lock.png" alt="">
                                    </div>
                                    <!-- Icon Text -->
                                    <div class="icon-text media-body align-self-center align-self-md-start">
                                        <h3 class="mb-2">Secure Data</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis culpa expedita dignissimos.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <!-- Image Box -->
                                <div class="image-box media icon-4 px-1 py-3 py-md-4 wow fadeInRight" data-aos-duration="2s" data-wow-delay="0.8s">
                                    <!-- Featured Image -->
                                    <div class="featured-img mr-3">
                                        <img class="avatar-sm" src="webassets/img/icon/featured-img/support.png" alt="">
                                    </div>
                                    <!-- Icon Text -->
                                    <div class="icon-text media-body align-self-center align-self-md-start">
                                        <h3 class="mb-2">Easy to Customize</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis culpa expedita dignissimos.</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Features Area End ***** -->

        <!-- ***** Work Area Start ***** -->
        <section class="section work-area bg-overlay overflow-hidden ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <!-- Work Content -->
                        <div class="work-content text-center">
                            <h2 class="text-white">How sApp works?</h2>
                            <p class="d-none d-sm-block text-white my-3 mt-sm-4 mb-sm-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.</p>
                            <p class="d-block d-sm-none text-white my-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-4">
                        <!-- Single Work -->
                        <div class="single-work text-center p-3">
                            <!-- Work Icon -->
                            <div class="work-icon">
                                <img class="avatar-md" src="webassets/img/icon/work/download.png" alt="">
                            </div>
                            <h3 class="text-white py-3">Install the App</h3>
                            <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius saepe, voluptates quis enim incidunt obcaecati?</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <!-- Single Work -->
                        <div class="single-work text-center p-3">
                            <!-- Work Icon -->
                            <div class="work-icon">
                                <img class="avatar-md" src="webassets/img/icon/work/settings.png" alt="">
                            </div>
                            <h3 class="text-white py-3">Setup your profile</h3>
                            <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius saepe, voluptates quis enim incidunt obcaecati?</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <!-- Single Work -->
                        <div class="single-work text-center p-3">
                            <!-- Work Icon -->
                            <div class="work-icon">
                                <img class="avatar-md" src="webassets/img/icon/work/app.png" alt="">
                            </div>
                            <h3 class="text-white py-3">Enjoy the features!</h3>
                            <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius saepe, voluptates quis enim incidunt obcaecati?</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Work Area End ***** -->

        <!-- ***** Screenshots Area Start ***** -->
        <section id="screenshots" class="section screenshots-area ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <!-- Section Heading -->
                        <div class="section-heading text-center">
                            <h2 class="text-capitalize">Simple &amp; Beautiful Interface</h2>
                            <p class="d-none d-sm-block mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.</p>
                            <p class="d-block d-sm-none mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <!-- App Screenshot Slider Area -->
                        <div class="app-screenshots">
                            <!-- Single Screenshot Item -->
                            <div class="single-screenshot">
                                <img src="webassets/img/screenshots/1.jpg" alt="">
                            </div>
                            <!-- Single Screenshot Item -->
                            <div class="single-screenshot">
                                <img src="webassets/img/screenshots/2.jpg" alt="">
                            </div>
                            <!-- Single Screenshot Item -->
                            <div class="single-screenshot">
                                <img src="webassets/img/screenshots/3.jpg" alt="">
                            </div>
                            <!-- Single Screenshot Item -->
                            <div class="single-screenshot">
                                <img src="webassets/img/screenshots/4.jpg" alt="">
                            </div>
                            <!-- Single Screenshot Item -->
                            <div class="single-screenshot">
                                <img src="webassets/img/screenshots/5.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Screenshots Area End ***** -->

        <!-- ***** Testimonial Area Start ***** -->
        <section class="section testimonial-area ptb_100">
            <div class="container text-center">
                <div class="row justify-content-center align-items-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <div class="testimonials owl-carousel">
                            <!-- Single Testimonial -->
                            <div class="single-testimonial p-3 p-md-5">
                                <img src="webassets/img/avatar/avatar-1.png" class="mx-auto d-block" alt="">
                                <!-- Client Name -->
                                <h4 class="client-name mt-4 mb-2">John Doe</h4>
                                <!-- Client Address -->
                                <h6 class="client-address fw-4">Los Angeles, California</h6>
                                <!-- Client Rating -->
                                <div class="client-rating mt-2 mb-3">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <!-- Client Description -->
                                <div class="client-description">
                                    <!-- Client Text -->
                                    <div class="client-text">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ullam rem sunt nulla ducimus expedita, incidunt laborum assumenda. Deleniti iste placeat nostrum incidunt rem laudantium, sapiente, cum, molestias unde, quidem labore.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Testimonial -->
                            <div class="single-testimonial p-3 p-md-5">
                                <img src="webassets/img/avatar/avatar-2.png" class="mx-auto d-block" alt="">
                                <!-- Client Name -->
                                <h4 class="client-name mt-4 mb-2">Jassica William</h4>
                                <!-- Client Address -->
                                <h6 class="client-address fw-4">Los Angeles, California</h6>
                                <!-- Client Rating -->
                                <div class="client-rating mt-2 mb-3">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <!-- Client Description -->
                                <div class="client-description">
                                    <!-- Client Text -->
                                    <div class="client-text">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ullam rem sunt nulla ducimus expedita, incidunt laborum assumenda. Deleniti iste placeat nostrum incidunt rem laudantium, sapiente, cum, molestias unde, quidem labore.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Testimonial -->
                            <div class="single-testimonial p-3 p-md-5">
                                <img src="webassets/img/avatar/avatar-3.png" class="mx-auto d-block" alt="">
                                <!-- Client Name -->
                                <h4 class="client-name mt-4 mb-2">Johnson Smith</h4>
                                <!-- Client Address -->
                                <h6 class="client-address fw-4">Los Angeles, California</h6>
                                <!-- Client Rating -->
                                <div class="client-rating mt-2 mb-3">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <!-- Client Description -->
                                <div class="client-description">
                                    <!-- Client Text -->
                                    <div class="client-text">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ullam rem sunt nulla ducimus expedita, incidunt laborum assumenda. Deleniti iste placeat nostrum incidunt rem laudantium, sapiente, cum, molestias unde, quidem labore.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Testimonial Area End ***** -->

        <!-- ***** Price Plan Area Start ***** -->
        <section id="pricing" class="section price-plan-area bg-gray overflow-hidden ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <!-- Section Heading -->
                        <div class="section-heading text-center">
                            <h2>Unlock Full Power Of sApp</h2>
                            <p class="d-none d-sm-block mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.</p>
                            <p class="d-block d-sm-none mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati.</p>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12 col-sm-10 col-lg-8">
                        <div class="row price-plan-wrapper">
                            <div class="col-12 col-md-6">
                                <!-- Single Price Plan -->
                                <div class="single-price-plan text-center p-5 wow fadeInLeft" data-aos-duration="2s" data-wow-delay="0.4s">
                                    <!-- Plan Thumb -->
                                    <div class="plan-thumb">
                                        <img class="avatar-lg" src="webassets/img/pricing/basic.png" alt="">
                                    </div>
                                    <!-- Plan Title -->
                                    <div class="plan-title my-2 my-sm-3">
                                        <h4 class="text-uppercase">Basic</h4>
                                    </div>
                                    <!-- Plan Price -->
                                    <div class="plan-price pb-2 pb-sm-3">
                                        <h2 class="fw-7"><small class="fw-6">$</small>49</h2>
                                    </div>
                                    <!-- Plan Description -->
                                    <div class="plan-description">
                                        <ul class="plan-features">
                                            <li class="border-top py-3">5GB Linux Web Space</li>
                                            <li class="border-top py-3">5 MySQL Databases</li>
                                            <li class="border-top py-3">24/7 Tech Support</li>
                                            <li class="border-top border-bottom py-3">Daily Backups</li>
                                        </ul>
                                    </div>
                                    <!-- Plan Button -->
                                    <div class="plan-button">
                                        <a href="#" class="btn mt-4">Sign Up</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 mt-4 mt-md-0">
                                <!-- Single Price Plan -->
                                <div class="single-price-plan text-center p-5 wow fadeInRight" data-aos-duration="2s" data-wow-delay="0.4s">
                                    <!-- Plan Thumb -->
                                    <div class="plan-thumb">
                                        <img class="avatar-lg" src="webassets/img/pricing/premium.png" alt="">
                                    </div>
                                    <!-- Plan Title -->
                                    <div class="plan-title my-2 my-sm-3">
                                        <h4 class="text-uppercase">Pro</h4>
                                    </div>
                                    <!-- Plan Price -->
                                    <div class="plan-price pb-2 pb-sm-3">
                                        <h2 class="fw-7"><small class="fw-6">$</small>129</h2>
                                    </div>
                                    <!-- Plan Description -->
                                    <div class="plan-description">
                                        <ul class="plan-features">
                                            <li class="border-top py-3">10GB Linux Web Space</li>
                                            <li class="border-top py-3">50 MySQL Databases</li>
                                            <li class="border-top py-3">Unlimited Email</li>
                                            <li class="border-top border-bottom py-3">Daily Backups</li>
                                        </ul>
                                    </div>
                                    <!-- Plan Button -->
                                    <div class="plan-button">
                                        <a href="#" class="btn mt-4">Sign Up</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center pt-5">
                    <p class="text-body pt-4 fw-5">Not sure what to choose? <a href="#">Contact Us</a></p>
                </div>
            </div>
        </section>
        <!-- ***** Price Plan Area End ***** -->

        <!-- ***** FAQ Area Start ***** -->
        <section class="section faq-area style-two ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <!-- Section Heading -->
                        <div class="section-heading text-center">
                            <h2 class="text-capitalize">Frequently asked questions</h2>
                            <p class="d-none d-sm-block mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.</p>
                            <p class="d-block d-sm-none mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati.</p>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12">
                        <!-- FAQ Content -->
                        <div class="faq-content">
                            <!-- sApp Accordion -->
                            <div class="accordion" id="sApp-accordion">
                                <div class="row justify-content-center">
                                    <div class="col-12 col-md-6">
                                        <!-- Single Card -->
                                        <div class="card border-0">
                                            <!-- Card Header -->
                                            <div class="card-header bg-inherit border-0 p-0">
                                                <h2 class="mb-0">
                                                    <button class="btn px-0 py-3" type="button">
                                                        How to install sApp?
                                                    </button>
                                                </h2>
                                            </div>
                                            <!-- Card Body -->
                                            <div class="card-body px-0 py-3">
                                                The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.
                                            </div>
                                        </div>
                                        <!-- Single Card -->
                                        <div class="card border-0">
                                            <!-- Card Header -->
                                            <div class="card-header bg-inherit border-0 p-0">
                                                <h2 class="mb-0">
                                                    <button class="btn px-0 py-3" type="button">
                                                        Can I get support from the Author?
                                                    </button>
                                                </h2>
                                            </div>
                                            <!-- Card Body -->
                                            <div class="card-body px-0 py-3">
                                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.
                                            </div>
                                        </div>
                                        <!-- Single Card -->
                                        <div class="card border-0">
                                            <!-- Card Header -->
                                            <div class="card-header bg-inherit border-0 p-0">
                                                <h2 class="mb-0">
                                                    <button class="btn px-0 py-3" type="button">
                                                        Do you have a free trail?
                                                    </button>
                                                </h2>
                                            </div>
                                            <!-- Card Body -->
                                            <div class="card-body px-0 py-3">
                                                It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <!-- Single Card -->
                                        <div class="card border-0">
                                            <!-- Card Header -->
                                            <div class="card-header bg-inherit border-0 p-0">
                                                <h2 class="mb-0">
                                                    <button class="btn px-0 py-3" type="button">
                                                        How can I edit my personal information?
                                                    </button>
                                                </h2>
                                            </div>
                                            <!-- Card Body -->
                                            <div class="card-body px-0 py-3">
                                                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                                            </div>
                                        </div>
                                        <!-- Single Card -->
                                        <div class="card border-0">
                                            <!-- Card Header -->
                                            <div class="card-header bg-inherit border-0 p-0">
                                                <h2 class="mb-0">
                                                    <button class="btn px-0 py-3" type="button">
                                                        Contact form isn't working?
                                                    </button>
                                                </h2>
                                            </div>
                                            <!-- Card Body -->
                                            <div class="card-body px-0 py-3">
                                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.
                                            </div>
                                        </div>
                                        <!-- Single Card -->
                                        <div class="card border-0">
                                            <!-- Card Header -->
                                            <div class="card-header bg-inherit border-0 p-0">
                                                <h2 class="mb-0">
                                                    <button class="btn px-0 py-3" type="button">
                                                        Contact form isn't working?
                                                    </button>
                                                </h2>
                                            </div>
                                            <!-- Card Body -->
                                            <div class="card-body px-0 py-3">
                                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <p class="text-body text-center pt-4 px-3 fw-5">Haven't find suitable answer? <a href="#">Tell us what you need.</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** FAQ Area End ***** -->

        <!-- ***** Download Area Start ***** -->
        <section class="section download-area overlay-dark ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-9">
                        <!-- Download Text -->
                        <div class="download-text text-center">
                            <h2 class="text-white">sApp is available for all devices</h2>
                            <p class="text-white my-3 d-none d-sm-block">sApp is available for all devices, consectetur adipisicing elit. Itaque at harum quam explicabo. Aliquam optio, delectus, dolorem quod neque eos totam. Delectus quae animi tenetur voluptates doloribus commodi dicta modi aliquid deserunt, quis maiores nesciunt autem, aperiam natus.</p>
                            <p class="text-white my-3 d-block d-sm-none">sApp is available for all devices, consectetur adipisicing elit. Vel neque, cumque. Temporibus eligendi veniam, necessitatibus aut id labore nisi quisquam.</p>
                            <!-- Store Buttons -->
                            <div class="button-group store-buttons d-flex justify-content-center">
                                <a href="#">
                                    <img src="webassets/img/icon/google-play.png" alt="">
                                </a>
                                <a href="#">
                                    <img src="webassets/img/icon/app-store.png" alt="">
                                </a>
                            </div>
                            <span class="d-inline-block text-white fw-3 font-italic mt-3">* Available on iPhone, iPad and all Android devices</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Download Area End ***** -->

        <!-- ***** Subscribe Area Start ***** -->
        <section class="section subscribe-area ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <div class="subscribe-content text-center">
                            <h2>Subscribe to get updates</h2>
                            <p class="my-4">By subscribing you will get newsleter, promotions adipisicing elit. Architecto beatae, asperiores tempore repudiandae saepe aspernatur unde voluptate sapiente quia ex.</p>
                            <!-- Subscribe Form -->
                            <form class="subscribe-form">
                                <div class="form-group">
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your email">
                                </div>
                                <button type="submit" class="btn btn-lg btn-block">Subscribe</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Subscribe Area End ***** -->

        <!--====== Contact Area Start ======-->
        <section id="contact" class="contact-area bg-gray ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <!-- Section Heading -->
                        <div class="section-heading text-center">
                            <h2 class="text-capitalize">Stay Tuned</h2>
                            <p class="d-none d-sm-block mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.</p>
                            <p class="d-block d-sm-none mt-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati.</p>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-between">
                    <div class="col-12 col-md-5">
                        <!-- Contact Us -->
                        <div class="contact-us">
                             <ul>
                                <li class="py-2">
                                    <a class="media" href="#">
                                        <div class="social-icon mr-3">
                                            <i class="fas fa-home"></i>
                                        </div>
                                        <span class="media-body align-self-center">Hyderabad, TS, India</span>
                                    </a>
                                </li>
                                <li class="py-2">
                                    <a class="media" href="#">
                                        <div class="social-icon mr-3">
                                            <i class="fas fa-phone-alt"></i>
                                        </div>
                                        <span class="media-body align-self-center">+91 7702267671</span>
                                    </a>
                                </li>
                                <li class="py-2">
                                    <a class="media" href="#">
                                        <div class="social-icon mr-3">
                                            <i class="fas fa-envelope"></i>
                                        </div>
                                        <span class="media-body align-self-center">techcen.in@gmail.com</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 pt-4 pt-md-0">
                        <!-- Contact Box -->
                        <div class="contact-box text-center">
                            <!-- Contact Form -->
                            <form id="contact-form" method="POST" action="https://theme-land.com/sapp/demo/assets/php/mail.php">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" placeholder="Name" required="required">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Email" required="required">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="phone" placeholder="Phone Number" required="required">
                                        </div>

                                          <div class="form-group">
                                            <input type="text" class="form-control" name="company" placeholder="Company Name" required="required">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <textarea class="form-control" name="message" placeholder="Message" required="required"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button type="submit" class="btn btn-lg btn-block mt-3"><span class="text-white pr-3"><i class="fas fa-paper-plane"></i></span>Send Message</button>
                                    </div>
                                </div>
                            </form>
                            <p class="form-message"></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--====== Contact Area End ======-->

        <!--====== Height Emulator Area Start ======-->
        <div class="height-emulator d-none d-lg-block"></div>
        <!--====== Height Emulator Area End ======-->
</asp:Content>

