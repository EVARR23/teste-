import AdminJS from "adminjs";

import Produto_Localizacao from "../models/produto_localizacao";

import { hasAdminPermission } from "../services/auth";

export default {
    resource: Produto_Localizacao,
    options: {
        parent: {
            icon: "Produto_Localizacao",
        },
        properties: {
            id: {
                position: 1,
            },
            id_localizacao: {
                position: 2,
                isRequired: true,
            },
            id_produto: {
                position: 3,
                isRequired: true,
            },
            quantidade: {
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