@extends('layouts.app')

@section('content')


    <section class="hero">
        <h1>Welcome to Our Company</h1>
        <p>We deliver <strong>innovative IT solutions</strong> to help your business thrive in a digital world.
            From web development to cloud infrastructure — we’ve got you covered.
        </p>
        <a href="{{ route('contact') }}">Contact Us</a>
    </section>

    <section class="mission-banner">
        <img src={{asset("theme/photos/banner.jpg")}} alt="Our mission banner">
    </section>

    <section class="about">
        <h2>Our Mission</h2>
        <p>Our goal is to provide businesses with cutting-edge software solutions that are scalable, secure, and
            user-friendly. We believe in the power of technology to transform workflows and accelerate growth.
        </p>
    </section>

    <section class="features">
        <h2>Our Services</h2>
        <div class="features-container">
            <div class="feature-item">
                <img src="{{ asset('theme/photos/database.webp') }}" alt="Database Management">
                <h3>Database Management</h3>
                <p>Efficient and secure database design, optimization, and backup solutions for all scales.</p>
            </div>
            <div class="feature-item">
                <img src="{{ asset('theme/photos/webdevelopment.jpg') }}" alt="Web Development">
                <h3>Web Development</h3>
                <p>Responsive and modern websites built with Laravel and today’s best practices.</p>
            </div>
            <div class="feature-item">
                <img src="{{ asset('theme/photos/cloudintegration.webp') }}" alt="Cloud Integration">
                <h3>Cloud Integration</h3>
                <p>Cloud deployment and service integration that scales with your business needs.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <h2>Let’s Build Something Great Together</h2>
        <p>Contact our team today and start your digital transformation journey.</p>
        <a href="{{ route('contact') }}">Get in Touch</a>
    </section>
@endsection