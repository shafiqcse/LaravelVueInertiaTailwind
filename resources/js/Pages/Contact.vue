<script setup>

</script>


<template>
    <Head>
        <title> | Contact</title>
        <meta head-key="description" name="description" content="This is the contact description">
    </Head>

    <!-- Hero Section -->
    <section class="bg-cover bg-center h-80" style="background-image: url('https://plus.unsplash.com/premium_photo-1678917827802-721b5f5b4bf0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');">
        <div class="bg-gray-900 bg-opacity-75 h-full flex items-center">
            <div class="container mx-auto text-center text-white">
                <h1 class="text-5xl font-bold">Get in Touch</h1>
                <p class="text-xl mt-4">We'd love to hear from you. Let's connect!</p>
            </div>
        </div>
    </section>

    <!-- Contact Form Section -->
    <section class="py-16">
        <div class="container mx-auto">
            <div class="max-w-2xl mx-auto bg-white p-8 rounded shadow">
                <h2 class="text-4xl font-bold text-center mb-8">Contact Us</h2>
                <form action="#" method="POST" class="space-y-6">
                    <!-- Name -->
                    <div>
                        <label for="name" class="block text-gray-700 font-semibold mb-2">Your Name</label>
                        <input type="text" id="name" name="name" class="w-full p-4 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-500" placeholder="John Doe" required>
                    </div>
                    <!-- Email -->
                    <div>
                        <label for="email" class="block text-gray-700 font-semibold mb-2">Your Email</label>
                        <input type="email" id="email" name="email" class="w-full p-4 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-500" placeholder="you@example.com" required>
                    </div>
                    <!-- Message -->
                    <div>
                        <label for="message" class="block text-gray-700 font-semibold mb-2">Your Message</label>
                        <textarea id="message" name="message" rows="5" class="w-full p-4 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-500" placeholder="Write your message here..." required></textarea>
                    </div>
                    <!-- Submit Button -->
                    <button type="submit" class="w-full bg-blue-500 text-white font-bold py-4 rounded hover:bg-blue-600 transition duration-200">Send Message</button>
                </form>
            </div>
        </div>
    </section>

    <!-- Contact Info Section -->
    <section class="py-16 bg-gray-100">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-6">Contact Information</h2>
            <div class="flex flex-wrap justify-center space-x-10">
                <div class="text-center">
                    <h3 class="text-2xl font-semibold text-gray-700 mb-2">Our Office</h3>
                    <p class="text-gray-600">123 Tech Street, Cityville</p>
                </div>
                <div class="text-center">
                    <h3 class="text-2xl font-semibold text-gray-700 mb-2">Phone</h3>
                    <p class="text-gray-600">+123 456 7890</p>
                </div>
                <div class="text-center">
                    <h3 class="text-2xl font-semibold text-gray-700 mb-2">Email</h3>
                    <p class="text-gray-600">contact@techtosoft.com</p>
                </div>
            </div>
        </div>
    </section>

</template>

