require 'mongo'

class DAO

  Mongo::Logger.logger = Logger.new('log/mongo.log')

  def deleta_tarefa(nome)
    srt_conn = 'mongodb://aluno:qaninja@ds225078.mlab.com:25078/heroku_4m3km28x'
    client = Mongo::Client.new(srt_conn)

    tasks = client [:tasks]
    tasks.delete_many(title: nome)
  end
end