<script setup>


</script>

<template>
    <Head>
        <title> | Home</title>
        <meta head-key="description" name="description" content="This is the home description">
    </Head>

    <!-- Hero Section -->
    <section class="bg-cover bg-center h-screen"
             style="background-image: url('https://images.unsplash.com/photo-1519389950473-47ba0277781c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');">
        <div class="bg-gray-400 bg-opacity-50 h-full flex items-center">
            <div class="container mx-auto text-center text-white">
                <h1 class="text-5xl font-bold mb-4">Empowering the Future of Technology</h1>
                <p class="text-xl mb-8">Innovative solutions for a digital world.</p>
                <div class="space-x-4">
                    <a href="#" class="bg-blue-500 text-white px-6 py-3 rounded hover:bg-blue-600">Learn More</a>
                    <a href="#" class="bg-gray-800 text-white px-6 py-3 rounded hover:bg-gray-700">Get Started</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-16">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12">Our Key Features</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">Scalable Solutions</h3>
                    <p>Designed to grow with your business, no matter the scale.</p>
                </div>
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">Reliable Security</h3>
                    <p>Top-notch security protocols to protect your data and assets.</p>
                </div>
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">Seamless Integration</h3>
                    <p>Easily integrates with your existing systems and workflows.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Products/Services Section -->
    <section class="py-16 bg-gray-50">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12">Our Products</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">Cloud Solutions</h3>
                    <p>Reliable, scalable, and secure cloud storage.</p>
                </div>
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">AI & ML Services</h3>
                    <p>Leverage artificial intelligence to drive innovation.</p>
                </div>
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">Data Analytics</h3>
                    <p>In-depth insights and analytics to grow your business.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="py-16 bg-gray-100">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12">What Our Clients Say</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="p-6 bg-white rounded shadow">
                    <p class="italic">"The best tech solutions we've ever used!"</p>
                    <p class="mt-4 text-gray-600">- Client 1</p>
                </div>
                <div class="p-6 bg-white rounded shadow">
                    <p class="italic">"Highly recommended for anyone in need of scalable tech!"</p>
                    <p class="mt-4 text-gray-600">- Client 2</p>
                </div>
                <div class="p-6 bg-white rounded shadow">
                    <p class="italic">"Their customer support and reliability are unmatched."</p>
                    <p class="mt-4 text-gray-600">- Client 3</p>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-blue-500 text-white">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-4">Ready to Transform Your Business?</h2>
            <a href="#" class="bg-white text-blue-500 px-8 py-4 rounded font-bold hover:bg-gray-200">Contact Us</a>
        </div>
    </section>


</template>

<style scoped>
.header {
    background-color: #282c34;
    color: white;
    padding: 20px;
    text-align: center;
}

nav ul {
    list-style-type: none;
    padding: 0;
}

nav ul li {
    display: inline;
    margin: 0 15px;
}

.about, .services, .contact {
    padding: 20px;
    text-align: center;
}

</style>
