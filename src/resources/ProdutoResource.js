import AdminJS from "adminjs";

import Produto from "../models/produto";

import { hasAdminPermission } from "../services/auth";

export default {
    resource: Produto,
    options: {
        parent: {
            icon: "Produto",
        },
        properties: {
            id: {
                position: 1,
            },
            name: {
                position: 2,
                isRequired: true,
            },
            codigo: {
                position: 3,
                isRequired: true,
            },
           codigo_barras: {
                position: 4,
                isRequired: true,
            },
            createAt:{
                position: 5,
                isVisible: { list: true, filter: true, show: true, edit: false}
            },
            updateAt:{
                position: 6,
                isVisible: { list: true, filter: true, show: true, edit: false}
            }           
        }
    }
}
