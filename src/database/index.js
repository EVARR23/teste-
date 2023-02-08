import  Sequelize from "sequelize";

import config from '../config/database';

import Usuario from "../models/usuario";
import Produto from "../models/produto";
import Localizacao from "../models/localizacao";
import Produto_Localizacao from "../models/produto_localizacao";

const models = [Usuario,Produto,Localizacao,Produto_Localizacao];

class Database {
  constructor() {
    this.connection = new Sequelize(config);
    this.init();
    this.associate();
  }

  init() {
    models.forEach((model) => model.init(this.connection));
  }

  associate() {
    models.forEach((model) => {
      if (model.associate) {
        model.associate(this.connection.models);
      }
    })

  }
}

export default new Database();