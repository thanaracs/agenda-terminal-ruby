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
    puts "---------------------------------"
    puts ""
end

def adicionar_contatos
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp

    @agenda << {nome: nome, telefone: telefone}
end
def buscar_contato
    print "Informe um nome: "
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            puts "#{contato[:nome]} - #{contato[:telefone]}"
        end
        
    end
    puts "---------------------------------"
    puts ""
end

def editar_contato
    print "Informe o nome a ser editado: "
    nome = gets.chomp

    @agenda.each do |contato|
        
        if contato[:nome].downcase == (nome.downcase)
            puts "Dados do contato: #{contato[:nome]} - #{contato[:telefone]}"
            print "Informe o novo nome (Caso queira manter o mesmo nome, aperte 'Enter'): "
            nome_salvo = contato[:nome]

            contato[:nome] = gets.chomp
            contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome]

            print "Informe o novo telefone(Caso queira manter o mesmo nome, aperte 'Enter'): "
            telefone_salvo = contato[:telefone]

            contato[:telefone] = gets.chomp
            contato[:telefone] = contato[:telefone].empty? ? telefone_salvo : contato[:telefone]
            puts ""
            puts "O contato foi atualizado com êxito:"
            puts "#{contato[:nome]} - #{contato[:telefone]}"
            puts "---------------------------------"
        end
    end
end

def remover_conta
    print "Informe o nome a ser removido: "
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase == (nome.downcase)
            indice = @agenda.index(contato)
            @agenda.delete_at(indice)
            puts ""
            puts "O contato foi excluído com êxito!"
            puts "---------------------------------"
            break
        else 
            puts ""
            puts "contato não encontrado!"
            puts "---------------------------------"
            break
        end
        
    end
    
    
end

loop do
    puts "Menu:\n1. Contatos\n2. Adicionar COntato\n3. Buscar Contato\n4. Editar COntato\n5. Remover Contato\n0. Sair"
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
    when codigo == 3
        buscar_contato
    when codigo == 4
        editar_contato
    when codigo == 5
        remover_conta
    else
        puts "Função selecionada não existe, por favot use uma função válida!"
        puts ""
    end 
    

end