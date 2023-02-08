import Sequelize, {Model} from "sequelize";
import {createPasswordHash, checkPassword1} from '../services/auth'

class Produto_Localizacao extends Model {
  static init (sequelize) {
    super.init(
          {
          
          id_produto: Sequelize.STRING,
          id_localizacao: Sequelize.STRING,
          quantidade: Sequelize.INTEGER,
          id_localizacao: {
            type:  Sequelize.INTEGER,
            references: { model : "localizacao", key: "id"}, 
            allowNull: false,
            },
            id_produto: {
              type:  Sequelize.INTEGER,
              references: { model : "produto", key: "id"}, 
              allowNull: false,
              }                                                                   
          }, 
          {
            sequelize,
            modelName: 'produto_localizacao',
            freezeTableName: true
          },        
    );
  }

  static associations(models) {
    this.belongsTo(models.localizacao,  {
      foreignKey: "id_localizacao",
    });    
    this.hasMany(models.localizacao); 
    this.belongsTo(models.produto,  {
      foreignKey: "id_produto",
    });    
    this.hasMany(models.produto);         
  }
}
  


export default  Produto_Localizacao;
  