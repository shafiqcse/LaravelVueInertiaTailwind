<script setup>
import { useForm } from "@inertiajs/vue3";

const form = useForm({
    email: '',
    password: ''
});

function login() {
    form.post(route("login"), {
        onError: () => form.reset("password"), // Reset password field on error
    });
}


</script>

<template>
    <Head>
        <title> | Login</title>
        <meta head-key="description" name="description" content="This is the Login description">
    </Head>
    <div class="flex items-center justify-center min-h-screen bg-gray-100">
        <div class="bg-white p-8 rounded-lg shadow-md w-full max-w-md">
            <h1 class="text-2xl font-semibold mb-6 text-center">Login Page</h1>

            <!-- Form -->
            <form @submit.prevent="login">
                <!-- Email Input -->
                <div class="mb-4">
                    <label for="email" class="block text-gray-600 text-sm font-medium mb-2">Email:</label>
                    <input
                        type="email"
                        id="email"
                        v-model="form.email"
                        class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:border-blue-500"
                        required
                    />
                    <small v-if="form.errors.email" class="text-red-500">{{ form.errors.email }}</small>
                </div>

                <!-- Password Input -->
                <div class="mb-6">
                    <label for="password" class="block text-gray-600 text-sm font-medium mb-2">Password:</label>
                    <input
                        type="password"
                        id="password"
                        v-model="form.password"
                        class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:border-blue-500"
                        required
                    />
                    <small v-if="form.errors.password" class="text-red-500">{{ form.errors.password }}</small>
                </div>

                <!-- Submit Button -->
                <button
                    :disabled="form.processing"
                    type="submit"
                    class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600 focus:outline-none focus:shadow-outline-blue"
                >
                    Login
                </button>
            </form>
        </div>
    </div>
</template>


