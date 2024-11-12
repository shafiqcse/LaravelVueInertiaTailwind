<script setup>

//
const props = defineProps({
    users: { // Receive the 'users' prop from the parent component
        type: Object, // Specify the type of the prop
        required: true, // Make it required
    }
})
</script>

<template>

    <Head>
        <title> | Users</title>
        <meta head-key="description" name="description" content="This is the home description">
    </Head>

    <h1 class="text-pink-800 text-6xl">User</h1>

    <div class="container mx-auto p-4 max-w-screen-lg text-center">
        <h1 class="text-pink-800 text-2xl">ALL User List</h1>
        <table>
            <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="user in users" :key="user.id">
                <td>{{ user.name }}</td>
                <td>{{ user.email }}</td>
            </tr>
            </tbody>
        </table>
    </div>

</template>
