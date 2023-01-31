import AdminJS from "adminjs";

import User from "../models/user";

import { hasAdminPermission } from "../services/auth";

export default {
    resource: User,
    options: {
        actions: {
            // list: {
            //     isAccessible: ({ currentAdmin}) => hasAdminPermission(currentAdmin)
            //  },
            // resetPassword: {
            //     actionType: 'record',
            //     icon: "Password",
            //     handler: async(request, response, context) => {
            //         return {
            //             record: context.record.toJSON(),
            //         };
            //     },
            // },
        },
        parent: {
            icon: "User",
        },
        properties: {
            id: {
                position: 1,
            },
            name: {
                position: 3,
                isRequired: true,
            },
            email: {
                position: 4,
                isRequired: true,
            },
            password: {
                position: 5,
                isVisible: false,
                isVisible: { list: false, filter:false, show: false, edit: true},
            },
            role: {
                position: 6,
                isRequired: true,
                availableValues: [
                    {value: 'admin' , label: 'Administrador'},
                    {value: 'manager' , label: 'Gerente'},
                    {value: 'developer' , label: 'Desenvolvedor'}
                ],
            },
            status: {
                position: 7,
                isRequired: true,
                availableValues: [
                    {value: 'active' , label: 'Ativo'},
                    {value: 'archived' , label: 'Arquivado'}
                ],
            },
            createAt:{
                position: 8,
                isVisible: { list: true, filter: true, show: true, edit: false}
            },
            updateAt:{
                position: 9,
                isVisible: { list: true, filter: true, show: true, edit: false}
            },
           
            password_hash: {

            },
            initials: {
                isVisible: false
            },            
        }
    }
}
