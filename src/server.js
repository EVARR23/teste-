import "dotenv/config";

import "./database";

import AdminJS from 'adminjs';
import AdminJExpress from '@adminjs/express';
import AdminJSSequelize from "@adminjs/sequelize";
import express from "express";

import UsuarioResource from "./resources/UsuarioResource";


AdminJS.registerAdapter(AdminJSSequelize);

const app = express();

const adminJS = new AdminJS({
    databases: [],
    rootPath: '/admin',
    resources: [UsuarioResource,],
    branding: {
        companyName: 'TESTE',
        logo: false,
        softwareBrothers: false
    },
});

const router = AdminJExpress.buildRouter(adminJS);

app.use(adminJS.options.rootPath,router);
app.listen(5000, () => {
    console.log("AdminJS is unp:der htt//localhost:5000/admin");
});