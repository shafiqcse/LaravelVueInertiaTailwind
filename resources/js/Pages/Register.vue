<script setup>
import {useForm} from "@inertiajs/vue3";

const form = useForm({
    name: '',
    email: '',
    password: '',
    password_confirmation: ''
})

function submit() {
    form.post(route("register"), {
        onError: () => form.reset("password", "password_confirmation"), // Reset password fields on error
    });
}
</script>


<template>
    <Head>
        <title> | Register</title>
        <meta head-key="description" name="description" content="This is the Register description">
    </Head>

    <section class="flex items-center justify-center min-h-screen bg-gray-100">
        <div class="bg-white p-8 rounded-lg shadow-md w-full max-w-md">
            <h2 class="text-2xl font-bold text-center mb-6">Register a new account</h2>
            <form @submit.prevent="submit">
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2" for="name">Name</label>
                    <input v-model="form.name"
                           class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
                           type="text" id="name" name="name">
                    <small v-if="form.errors.name" class="text-red-500">{{ form.errors.name }}</small>
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2" for="email">Email</label>
                    <input v-model="form.email"
                           class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
                           type="email" id="email" name="email">
                    <small v-if="form.errors.email" class="text-red-500">{{ form.errors.email }}</small>
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2" for="password">Password</label>
                    <input v-model="form.password"
                           class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
                           type="password" id="password" name="password">
                    <small v-if="form.errors.password" class="text-red-500">{{ form.errors.password }}</small>
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2" for="confirm-password">Confirm Password</label>
                    <input v-model="form.password_confirmation"
                           class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
                           type="password" id="confirm-password" name="confirm-password">
                    <small v-if="form.errors.password_confirmation"
                           class="text-red-500">{{ form.errors.password_confirmation }}</small>
                </div>
                <div class="mb-4">
                    <p class="text-gray-600">Already a user? <a href="#" class="text-blue-500">Login</a></p>
                </div>
                <div>
                    <button :disabled="form.processing" type="submit"
                            class="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 focus:outline-none focus:bg-blue-700">
                        Register
                    </button>
                </div>
            </form>
        </div>
    </section>

</template>








