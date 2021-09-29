const mongoose = require('mongoose');
const mongoosePaginate = require('mongoose-paginate');

const PessoaSchema = new mongoose.Schema({
    nome : String,
    cpf  : String,
    email :String,
    estadoCivil : String,
});

PessoaSchema.plugin(mongoosePaginate)

module.exports = mongoose.model('Pessoa', PessoaSchema)


