<script setup>


</script>

<template>
    <Head :title="` | ${$page.component}`">
        <meta head-key="description" name="description" content="This is the home description">
    </Head>

    <!-- Hero Section -->
    <section class="bg-cover bg-center h-80" style="background-image: url('https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');">
        <div class="bg-gray-900 bg-opacity-75 h-full flex items-center">
            <div class="container mx-auto text-center text-white">
                <h1 class="text-5xl font-bold">Our Services</h1>
                <p class="text-xl mt-4">Solutions Tailored to Drive Your Business Forward</p>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section class="py-16">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12">What We Offer</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Service 1 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?cloud,service" alt="Cloud Solutions" class="mx-auto mb-4">
                    <h3 class="text-2xl font-bold mb-2">Cloud Solutions</h3>
                    <p class="text-gray-600">Secure and scalable cloud services that grow with your business needs.</p>
                </div>
                <!-- Service 2 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?ai,service" alt="AI & Machine Learning" class="mx-auto mb-4">
                    <h3 class="text-2xl font-bold mb-2">AI & Machine Learning</h3>
                    <p class="text-gray-600">Harness the power of AI to drive insights, automation, and decision-making.</p>
                </div>
                <!-- Service 3 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?data,service" alt="Data Analytics" class="mx-auto mb-4">
                    <h3 class="text-2xl font-bold mb-2">Data Analytics</h3>
                    <p class="text-gray-600">Data-driven solutions for more informed and strategic decision-making.</p>
                </div>
                <!-- Service 4 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?security,service" alt="Cybersecurity" class="mx-auto mb-4">
                    <h3 class="text-2xl font-bold mb-2">Cybersecurity</h3>
                    <p class="text-gray-600">Protect your business with industry-leading cybersecurity solutions.</p>
                </div>
                <!-- Service 5 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?development,service" alt="Custom Software Development" class="mx-auto mb-4">
                    <h3 class="text-2xl font-bold mb-2">Custom Software Development</h3>
                    <p class="text-gray-600">Tailored software solutions that meet your unique business requirements.</p>
                </div>
                <!-- Service 6 -->
                <div class="p-6 bg-white rounded shadow text-center">
                    <img src="https://source.unsplash.com/100x100/?iot,service" alt="IoT Solutions" class="mx-auto mb-4">
                    <h3 class="text-2xl font-bold mb-2">IoT Solutions</h3>
                    <p class="text-gray-600">Connect and manage devices with our robust IoT platform.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-blue-500 text-white text-center">
        <div class="container mx-auto">
            <h2 class="text-4xl font-bold mb-6">Ready to Transform Your Business?</h2>
            <p class="text-xl mb-8">Let’s discuss how we can help achieve your goals with our range of innovative services.</p>
            <a href="contact.html" class="bg-white text-blue-500 px-8 py-4 rounded font-bold hover:bg-gray-200">Contact Us</a>
        </div>
    </section>


</template>
