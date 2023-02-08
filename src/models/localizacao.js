import Sequelize, {Model} from "sequelize";
import {createPasswordHash, checkPassword1} from '../services/auth'

class Localizacao extends Model {
  static init (sequelize) {
    super.init(
          {
          
          name: Sequelize.STRING,                  
          }, 
          {
            sequelize,
            modelName: 'localizacao',
            freezeTableName: true
          },        
    );
  }

  static associations(models) {
      
  }
}

export default Localizacao;
  