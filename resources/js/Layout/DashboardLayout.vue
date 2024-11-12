<script setup>
import {Link} from '@inertiajs/vue3'

</script>

<template>
    <Head>
        <meta head-key="description" name="description" content="This is the default description">
    </Head>
    <div>
        <header class="bg-indigo-600 text-white">

            <!-- Nav bar start-->
            <nav class="bg-white dark:bg-gray-900 fixed w-full z-20 top-0 start-0 border-b border-gray-200 dark:border-gray-600">
                <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto">
                    <div>
                        <h1 class="title text-white">Welcome back {{ $page.props.auth.user.name }}</h1>
                    </div>
                </div>
            </nav>
            <!-- Nav bar end-->
        </header>


        <!-- Main content start-->
        <main class="p-4 pt-20">
            <slot/>
        </main>
        <!-- Main content end-->


    </div>

    <footer class="footer">
        <p>&copy; 2024 Tech to Soft. All rights reserved.</p>
    </footer>
</template>

<style scoped>

.footer {
    background-color: #282c34;
    color: white;
    text-align: center;
    padding: 10px;
    position: fixed;
    width: 100%;
    bottom: 0;
}

</style>
