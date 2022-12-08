# Adicionar, Editar e Remover Contato;
# Contatos terão as seguintes informações: nome e telefone;
# Poderemos ver todos os contatos registrados ou somente um contato;

@agenda = [ #@agenda é uma instancia de variavel
    {nome: "Thainara", telefone: "63999999999"},
    {nome: "Stephano", telefone: "85999999999"},
]

def todos_contatos
    puts ""
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
        
    end
    puts ""
end

def adicionar_contatos
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp

    @agenda << {nome: nome, telefone: telefone}
end

loop do
    puts "Menu:\n1. Contatos\n2. Adicionar COntato\n3. Ver Contato\n4. Editar COntato\n5. Remover Contato\n0. Sair"
    print "Informe a opção:"
    codigo = gets.chomp.to_i
    puts ""

    case
    when codigo == 0
        puts "Até mais!"
        break
    when codigo == 1
        todos_contatos
    when codigo == 2
        adicionar_contatos
    end 


end