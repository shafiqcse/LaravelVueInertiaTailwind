import { createRouter, createWebHistory } from "vue-router";
import Home from "../DashBoardComponents/Home.vue";
import About from "../DashBoardComponents/About.vue";
import Service from "../DashBoardComponents/Service.vue";
import Team from "../DashBoardComponents/Team.vue";
import Contact from "../DashBoardComponents/Contact.vue";
import Dashboard from "../DashBoardComponents/Dashboard.vue";

const routes = [
    {
        path: "/home",
        component: Home, // Correctly reference the imported component
        name: "home",
    },
    {
        path: "/about",
        component: About, // Correctly reference the imported component
        name: "about",
    },
    {
        path: "/service",
        component: Service, // Correctly reference the imported component
        name: "service",
    },
    {
        path: "/team",
        component: Team, // Correctly reference the imported component
        name: "team",
    },
    {
        path: "/contact",
        component: Contact, // Correctly reference the imported component
        name: "contact",
    },
    {
        path: "/dashboard",
        component: Dashboard, // Correctly reference the imported component
        name: "dashboard",
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes: routes,
});

export default router;
