import './bootstrap';
import '../css/app.css';

import { createApp, h } from 'vue'
import { createInertiaApp, Head, Link } from '@inertiajs/vue3' // Import the Link and Head component
import {ZiggyVue} from '../../vendor/tightenco/ziggy'
import Layout from "@/Layout/Layout.vue";
import router from "@/Router/router.js";


createInertiaApp({
    title: title => `My App ${title}`, // Set the global title of the page
    resolve: name => {
        const pages = import.meta.glob('./Pages/**/*.vue', { eager: true })
        // return pages[`./Pages/${name}.vue`]

        // Register the default Layout component
        let page = pages[`./Pages/${name}.vue`]
        page.default.layout = page.default.layout || Layout
        return page
    },
    setup({ el, App, props, plugin }) {
        createApp({ render: () => h(App, props) })
            .component('Link', Link) // Register the Link component
            .component('Head', Head) // Register the Head component
            .use(ZiggyVue)
            .use(router)
            .use(plugin)
            .mount(el)

    },
    // progress: false
})

