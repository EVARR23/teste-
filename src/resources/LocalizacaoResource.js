import AdminJS from "adminjs";

import Localizacao from "../models/localizacao";

import { hasAdminPermission } from "../services/auth";

export default {
    resource: Localizacao,
    options: {
        parent: {
            icon: "Localizacao",
        },
        properties: {
            id: {
                position: 1,
            },
            name: {
                position: 2,
                isRequired: true,
            },
            createAt:{
                position: 3,
                isVisible: { list: true, filter: true, show: true, edit: false}
            },
            updateAt:{
                position: 4,
                isVisible: { list: true, filter: true, show: true, edit: false}
            }         
        }
    }
}