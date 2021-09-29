const { Router } = require('express');
const auth = require('./middleware/auth');

const PessoaController = require('./Controller/PessoaController');
const LoginController = require('./Controller/LoginController');

const routes = Router();

//---------------------ROTAS--------------------

routes.post('/token', LoginController.geraToken);

routes.get('/pessoa', PessoaController.index);
routes.get('/pessoa/:cpf', auth, PessoaController.getPessoa);
routes.post('/pessoa', PessoaController.create);
routes.put('/pessoa', PessoaController.edit);
routes.put('/pessoa/addHobie/:cpf', PessoaController.addHobie);
routes.delete('/pessoa', PessoaController.delete);


module.exports = routes