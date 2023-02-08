import Sequelize, {Model} from "sequelize";
import {createPasswordHash, checkPassword1} from '../services/auth'

class Produto extends Model {
  static init (sequelize) {
    super.init(
          {
          name: Sequelize.STRING,
          codigo: Sequelize.STRING,
          codigo_barras: Sequelize.STRING,
          }, 
          {
            sequelize,
            modelName: 'produto',
            freezeTableName: true
          },    
    );
  }

  static associations(models) {
      
  }
}

export default Produto;
  