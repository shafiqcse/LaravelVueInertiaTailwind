<script setup>

const props = defineProps({
    user: String
})

</script>


<template>
    <Head>
        <title> | About</title>
        <meta head-key="description" name="description" content="This is the about description">
    </Head>

    <!-- Hero Section -->
    <section class="bg-cover bg-no-repeat bg-center h-80" style="background-image: url('https://images.unsplash.com/photo-1531973576160-7125cd663d86?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');">
        <div class="bg-gray-900 bg-opacity-75 h-full flex items-center justify-center ">
            <div class="container mx-auto text-center text-white">
                <h1 class="text-5xl font-bold">About Us</h1>
                <p class="text-xl mt-4">Discover Our Mission and the Team Behind Tech Company</p>
            </div>
        </div>
    </section>

    <!-- Mission Section -->
    <section class="py-16">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-6">Our Mission</h2>
            <p class="text-xl text-gray-600 max-w-3xl mx-auto">At Tech Company, our mission is to drive innovation and empower businesses with cutting-edge technology solutions. We believe in creating products that make a real difference and pave the way for a more connected and intelligent world.</p>
        </div>
    </section>

    <!-- Team Section -->
    <section class="py-16 bg-gray-50">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12">Meet Our Team</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Team Member 1 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?person" alt="Team Member" class="rounded-full mx-auto mb-4">
                    <h3 class="text-2xl font-bold">Alex Johnson</h3>
                    <p class="text-gray-600">CEO & Founder</p>
                </div>
                <!-- Team Member 2 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?person" alt="Team Member" class="rounded-full mx-auto mb-4">
                    <h3 class="text-2xl font-bold">Samantha Lee</h3>
                    <p class="text-gray-600">CTO</p>
                </div>
                <!-- Team Member 3 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?person" alt="Team Member" class="rounded-full mx-auto mb-4">
                    <h3 class="text-2xl font-bold">Michael Smith</h3>
                    <p class="text-gray-600">Head of Engineering</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Core Values Section -->
    <section class="py-16">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12">Our Core Values</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">Innovation</h3>
                    <p>We believe in challenging the status quo and pushing boundaries to create impactful solutions.</p>
                </div>
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">Integrity</h3>
                    <p>Our team is dedicated to upholding the highest standards of integrity in everything we do.</p>
                </div>
                <div class="p-6 bg-white rounded shadow">
                    <h3 class="text-2xl font-bold mb-4">Customer Commitment</h3>
                    <p>We are committed to delivering value and building lasting relationships with our clients.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-blue-500 text-white text-center">
        <div class="container mx-auto">
            <h2 class="text-4xl font-bold mb-6">Join Us on Our Journey</h2>
            <p class="text-xl mb-8">We’re always looking for talented individuals and partners who share our vision. Connect with us to learn more.</p>
            <a href="contact.html" class="bg-white text-blue-500 px-8 py-4 rounded font-bold hover:bg-gray-200">Contact Us</a>
        </div>
    </section>
</template>

