<script setup>
import { Link } from '@inertiajs/vue3'
</script>

<template>
    <div>
        <header class="bg-pink-800 text-white">
            <nav class="flex justify-between items-center p-4 max-w-screen-lg ">
                <div class="flex gap-4 items-center text-xl">
                    <Link href="/">Home</Link>
                    <Link href="/about">About</Link>
                    <Link href="/contact">Contact</Link>
                </div>
            </nav>
        </header>
        <main class="p-4">
            <slot />
        </main>
    </div>
</template>
