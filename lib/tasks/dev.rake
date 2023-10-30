namespace :dev do
  desc "Cofigura o ambiente de desenvolvimento"
  task setup: :environment do
    puts"Cadastrando os contatos..."
    100.times do |i|
      Contact.create!(
        name:Faker::Name.name,
        email:Faker::Internet.email,
        birthdate:Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
      )
    end
    puts"Cadastrados com sucesso!"
  end

end
