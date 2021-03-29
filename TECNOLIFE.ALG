algoritmo "TECNOLIFE"
//
//
// Descrição   : PROGRAMA TECNO LIFE
// Autor(a)    : JOÃO PRÍSCIO/EMILLY MAIA
// Data atual  : 20/03/2021
tipo
   usuarios = registro
      peso: real
      nome: caractere
      altura: real
      imc: real

   fimregistro


var
   escolhaMenu, qtdUsuariosCadastrados : inteiro
   user: vetor [1..4] de usuarios
   imc_dieta: real



   //CADASTRO DE USUARIOS
PROCEDIMENTO cadastrarDisc ()
var
inicio
   se qtdUsuariosCadastrados+1 > 4 entao
      escrevaL ("Desculpe, o limite de cadastros foi atingido.")
   senao
      qtdUsuariosCadastrados <- qtdUsuariosCadastrados + 1
      escreva (" Digite o nome do usuário: ")
      leia (user[qtdUsuariosCadastrados].nome)
      escreva (" Insira a altura do usuário: ")
      leia (user[qtdUsuariosCadastrados].altura)
      escreva (" digite o peso do usuário: ")
      leia (user[qtdUsuariosCadastrados].peso)
      user[qtdUsuariosCadastrados].imc <- user[qtdUsuariosCadastrados].peso/ (user[qtdUsuariosCadastrados].altura^2)
      escreval ("Seu IMC É: ", user[qtdUsuariosCadastrados].imc:5:2)
      escreval ("")
   fimse
   se (user[qtdUsuariosCadastrados].imc < 17) entao
      escreval ("Seu IMC está abaixo do ideal, indicando magreza excessiva. Os riscos de um peso tão baixo são:")
      escreval (" anemia, hipovitaminose, unhas quebradiças, fraqueza e alteração no humor.")
      escreval ("")
      escreval ("RECOMENDAÇÕES TECNO LIFE: exercícios ANAERÓBICOS são o recomendado, respeitando suas limitações.")
      escreval ("Deve ser feita uma dieta com carboidratos simples e proteínas. Beba 2,5L de água por dia no mínimo.")
      escreval("")
      escreval ("CARDÁRPIO SUGERIDO:")
      escreval ("CAFÉ DA MANHÃ ")
      escreval("Opção 1")
      escreval("1 copo (250 ml) de leite com chocolate em pó")
      escreval("2 fatias de pão integral tostado com 2 col. (chá) de requeijão ou cream cheese")
      escreval("1 ovo mexido")
      escreval("1 copo grande (300 ml) de suco de laranja batido com 1 banana e 1 col. (sopa) de aveia  ")
      escreval("Opção 2 ")
      escreval("1 pote (200 g) de iogurte integral batido com ½ papaia + 1 col. (chá) de mel + 1 col. (sopa) de granola (se ficar muito espesso, acrescente leite")
      escreval("2 torradas com 2 col. (chá) de requeijão e  2 fatias de presunto ")
      escreval("1 xíc. (chá) de chá preto adoçado com mel ou café")
      escreval("")
      escreval("ALMOÇO")
      escreval("Opção 1")
      escreval("1 prato pequeno de salada de folhas verdes com tomate ")
      escreval("2 conchas de espaguete com molho de tomate")
      escreval("4 col. (sopa) de carne moída")
      escreval("1 col. (sopa) de queijo parmesão para polvilhar ")
      escreval("1 pedaço de goiabada com queijo")
      escreval("Opção 2")
      escreval("1 prato pequeno de salada mista com 1 ovo fatiado")
      escreval("3 col. (sopa) de arroz integral")
      escreval("1 concha de feijão")
      escreval("2 col. (sopa) de couve refogada ")
      escreval("1 filé grande de carne grelhado")
      escreval("1 porção de doce de leite cremoso")
      escreval("")
      escreval("LANCHE DA MANHÃ/TARDE")
      escreval("Opção 1")
      escreval("1 copo (250 ml) de vitamina de abacate, preparada com leite desnatado (com leite integral fica muito pesado)")
      escreval(" e adoçada com mel à vontade")
      escreval("Opção 2")
      escreval("1 copo (250ml) de suco de manga")
      escreval("2 pães de queijo")
      escreval("Opção 3 ")
      escreval("1 tigela de açaí com granola")
      escreval ("")
      escreval("JANTAR")
      escreval("Opção 1")
      escreval("2 xic. (chá) de macarrão com molho branco (ou de tomate)")
      escreval("½ lata de atum ")
      escreval("3 col. (sopa) de couve-flor no vapor ")
      escreval("2 folhas de alface crespa com 4 tomates")
      escreval("1 barrinha (30 g) de chocolate ")
      escreval("Opção 2")
      escreval("2 fatias médias de peito de peru ou 1 filé de frango assado")
      escreval("3 col. (sopa) de purê de mandioquinha ")
      escreval("2 col. (sopa) de salada de beterraba e cenoura raladas")
      escreval("1 fatia de bolo com 1 bola de sorvete")

   senao
      se (user[qtdUsuariosCadastrados].imc >= 17) e (user[qtdUsuariosCadastrados].imc < 18.5) entao
         escrevaL("Seu peso está abaixo do ideal, indicando magreza. Entretanto, falta pouco para você atingir o IMC")
         escrevaL("ideal. Proteínas são aliadas para atingir o peso correto de forma saudável.Faça mais refeições ")
         escrevaL("urante o dia, incluindo frutas. Beba 2,5L de água por dia, no mínimo.")
         escreval("")
         escrevaL("CARDÁPIO SUGERIDO:")
         escreval("")
         escrevaL("CAFÉ DA MANHÃ ")
         escrevaL("OPÇÕES: tapioca de queijo e frango, mexerica, leite com cacau/ ")
         escrevaL("café com leite, pão integral, ovos, alface, tomate, queijo, maçã/")
         escrevaL("omelete de frango, suco de fruta.")
         escreval("")
         escrevaL("LANCHE DA MANHÃ/TARDE")
         escrevaL("OPÇÕES: banana, sanduíche com ovo e abacate./biscoito integral com manteiga de amendoim/")
         escrevaL("torrada com queijo e iogurte com granola./Vitamina de mamão e abacate, semente de chia e aveia/")
         escrevaL("salada de fruta com aveias e frutas secas.")
         escreval("")
         escrevaL("ALMOÇO E JANTAR ")
         escrevaL("OPÇÕES: Strogonoff de frango / carne, arroz, salada de cenoura e repolho com molho de iogurte, laranja./")
         escrevaL("Almôndegas e molho de tomate, brócolis gratinado e purê de batata./ macarrão com milho, azeitona, tomate")
         escrevaL("e atum, salada de alface e cenoura temperada com azeite, melão./ Peito de frango grelhado, arroz, salada,")
         escrevaL("feijão de sua preferência e abobrinha refogada.")


      senao
         se (user[qtdUsuariosCadastrados].imc >= 18.5) e (user[qtdUsuariosCadastrados].imc < 25) entao
            escrevaL("Parabéns. Você está no peso ideal.")
            escrevaL ("")
            escrevaL("RECOMENDAÇÕES TECNO LIFE: para manter o peso, invista em atividades físicas de sua preferência.")
            escrevaL("Evite gorduras saturadas/trans, inclua proteínas magras e fontes de gorduras saudáveis.")
            escrevaL("Não será necessária uma dieta específica, mas aqui estão importantes comportamentos para manter")
            escrevaL(" o peso")
            escrevaL ("")
            escrevaL("1. Consuma alimentos fontes de proteínas magras;")
            escrevaL("2. Consuma alimentos fontes de carboidratos integrais;")
            escrevaL("3. Evite as gorduras ruins: saturada e trans, inclua alimentos fontes de gorduras saudáveis:")
            escrevaL("abacate, extra virgem oleaginosa (castanha, amêndoa, noz), peixe;")
            escrevaL("4. Consuma açúcar e sal com moderação;")
            escrevaL("5. Aumente a ingestão de água nos intervalos das refeições;")
            escrevaL("6. Evite consumo de alimentos industrializados ricos em calorias, gorduras,")
            escrevaL(" açúcares, sal, cafeína, realçadores de sabor e conservantes;")
            escrevaL("7. Faça sua lista de compras saudáveis e tente ser fiel a ela;")
            escrevaL("8. Planeje suas refeições. Se no trabalho não há opções saudáveis de almoço ou lanche,")
            escrevaL(" prepare em casa com todo carinho as suas marmitas e leve com você;")
            escrevaL("9. Nenhum alimento é proibido, mas evite os excessos;")
            escrevaL("10. Respeite os sinais de fome e saciedade.")

         senao
            se (user[qtdUsuariosCadastrados].imc >= 25) e (user[qtdUsuariosCadastrados].imc < 30) entao
               escrevaL("Você está acima do peso ideal. Entretanto, uma reeducação alimentar apropriada ajudará a viver de")
               escrevaL("forma mais saudável e prevenir doenças.")
               escrevaL("")
               escrevaL("RECOMENDAÇÕES TECNO LIFE: Praticar atividades físicas regularmente, como caminhar, correr ou nadar. ")
               escrevaL("Dieta rica em proteínas e gorduras boas é essencial.")
               escrevaL(" ")
               escrevaL("CARDÁPIO SUGERIDO:")
               escrevaL(" ")

               escrevaL("CAFÉ DA MANHÃ")
               escrevaL("Opções: - Café preto sem açúcar + torrada integral com 2 colheres de sopa de ricota com orégano e 1 ovo mexido")
               escrevaL("- café preto sem açúcar + 30g de granola com 1 copo de leite de coco ou de amêndoa + 1/2 xícara de morango")
               escrevaL("-1 xícara de café com leite desnatado sem açúcar + 1 panqueca média de banana com aveia com 1 colher de sopa")
               escrevaL("de manteiga de cacau.")
               escrevaL("")
               escrevaL("LANCHE DA MANHÃ/TARDE ")
               escrevaL("Opções: -2 fatias de melão + 10 unidades de castanha de caju")
               escrevaL("-1 banana triturada com 1 colher de sopa de manteiga de amendoim e um pouco de canela")
               escrevaL("-2 fatias de mamão com 1 colher de chá de chia")
               escrevaL("-1 iogurte natural com 1 colher de mel + 10 unidades de amendoim.")
               escrevaL("")
               escrevaL("ALMOÇO/JANTA")
               escrevaL("opções: - filé de peito de frango grelhado acompanhado de 3 colheres de sopa de arroz integral com")
               escrevaL("2 colheres de sopa de feijão + 1 xícara de vegetais salteados no azeite de oliva + 1 pêra")
               escrevaL("-1 filé de peixe com tomate e cebola ao forno , salada e 1 pêssego")
               escrevaL("-1 filé de peito de peru cortado em cubos salteados com vegetais e quinoa + 1 maçã")
            senao
               se (user[qtdUsuariosCadastrados].imc >= 30) e (user[qtdUsuariosCadastrados].imc < 35) entao
                  escrevaL ("Você esta acima do peso, podendo desenvolver Obesidade Grau I. Os riscos de um IMC acima da média são: ")
                  escrevaL ("diabetes, enfartes, embolias, alterações menstruais, arteriosclerose, entre outros.")
                  escrevaL (" ")
                  escrevaL ("RECOMENDAÇÕES TECNO LIFE: reduzir o consumo de salgados, doces, refrigerantes, sucos industrializados")
                  escrevaL ("e similares. Praticar atividade física e buscar um especialista para acompanhamento.")
                  escrevaL ("")
                  escrevaL ("CARDÁPIO SUGERIDO: ")
                  escrevaL (" ")
                  escrevaL ("CAFÉ DA MANHÃ ")
                  escrevaL ("opções: - 2 torradas com queijo branco e 1 copo de suco de laranja natural")
                  escrevaL ("- 1 iogurte desnatado com 2 colheres de sopa de granola e 1 kiwi.")
                  escrevaL ("- 1 copo de leite com 2 colheres de sopa de cereais tipo all bran, 3 morangos e canela.")
                  escrevaL (" ")
                  escrevaL ("LANCHE DA MANHÃ/TARDE")
                  escrevaL ("opções: - 1 vitamina de morango")
                  escrevaL ("- 1 pão de cereais com 1 fatia de presunto de peru e chá verde sem açúcar.")
                  escrevaL ("- 1 banana com 5 amêndoas.")
                  escrevaL (" ")
                  escrevaL ("ALMOÇO/JANTA")
                  escrevaL ("opções: - bife de peru grelhado com 2 colheres de sopa de arroz integral e salada de alface, cenoura")
                  escrevaL ("e milho temperada com suco de limão, gengibre e oréganos. 1 maçã de sobremesa.")
                  escrevaL ("- 1 ovo cozido com 1 batata cozida, ervilhas, tomate e cenoura. Meia manga de sobremesa.")
                  escrevaL ("- 1 coxa de frango grelhada com 2 colheres de sopa de macarrão cozido e salada de rúcula, pimentão")
                  escrevaL ("e repolho roxo temperada com suco de limão. 1 fatia de melão de 100 g de sobremesa.")

               senao
                  se (user[qtdUsuariosCadastrados].imc >=35) e (user[qtdUsuariosCadastrados].imc < 40) entao
                     escrevaL("Você está acima do peso, indicando Obesidade Grau II segundo o seu IMC. Os riscos desse quadro incluem:")
                     escrevaL("falta de ar, apneia, trombose, úlceras, refluxo esofágico, cancro no cólon, entre outros.")
                     escrevaL("")
                     escrevaL("RECOMENDAÇÕES TECNO LIFE: para melhor desempenho na sua jornada em busca de uma qualidade de vida melhor,")
                     escrevaL("é altamente recomendado que o processo seja acompanhado em todas as suas etapas por especialistas.")
                     escrevaL("Procure um nutricionista. É importante lembrar que dietas milagrosas e remédios para emagrecimento podem")
                     escrevaL("ser extremamente prejudiciais à saúde. A implementação de uma dieta deve ser feita por um profissional.")
                  senao
                     escrevaL("Você está acima do peso, indicando Obesidade Mórbida segundo o seu IMC. Os riscos desse quadro incluem:")
                     escrevaL("falta de ar, apneia, trombose, úlceras, refluxo esofágico, cancro no cólon, entre outros.")
                     escrevaL("")
                     escrevaL("RECOMENDAÇÕES TECNO LIFE: para melhor desempenho na sua jornada em busca de uma qualidade de vida melhor,")
                     escrevaL("é altamente recomendado que o processo seja acompanhado em todas as suas etapas por especialistas.")
                     escrevaL("Procure um nutricionista. É importante lembrar que dietas milagrosas e remédios para emagrecimento podem")
                     escrevaL("ser extremamente prejudiciais à saúde. A implementação de uma dieta deve ser feita por um profissional.")
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
   escrevaL ("O usuário foi cadastrado com sucesso")

fimprocedimento

PROCEDIMENTO listarDisc()
var
   i: inteiro
inicio
   para i de 1 ate qtdUsuariosCadastrados faca
      escrevaL ("Nome: ", user[i].nome)
      escrevaL ("Altura:", user[i].altura)
      escrevaL ("Peso:", user[i].peso)
      escreval ("O seu IMC é ", user[i].imc:5:2)
      escrevaL ("------------------------------------")
   fimpara
   escrevaL ("Este(s) ", qtdUsuariosCadastrados, " usuário(s) foram cadastrado(s)")
fimprocedimento

PROCEDIMENTO SobreTecnolife ()
var
inicio
   escreval("TECNO LIFE foi desenvolvido para auxiliar você a controlar sua dieta. ")
   escreval("A partir do cálculo do seu IMC nós oferecemos uma consultoria voltada ")
   escreval("para criação de novos hábitos alimentares, sugerindo dietas e exercícios")
   escrevaL(" e alertando os possíveis riscos de um peso desregulado. Para outras  ")
   escrevaL("informações, consulte o manual de uso.")
fimprocedimento



Procedimento Dieta()
var
inicio

   escreval("Qual seu imc? ")
   leia(imc_dieta)

   se(imc_dieta < 17) entao
      escreval ("Seu IMC está abaixo do ideal, indicando magreza excessiva. Os riscos de um peso tão baixo são:")
      escreval (" anemia, hipovitaminose, unhas quebradiças, fraqueza e alteração no humor.")
      escreval ("")
      escreval ("RECOMENDAÇÕES TECNO LIFE: exercícios ANAERÓBICOS são o recomendado, respeitando suas limitações.")
      escreval ("Deve ser feita uma dieta com carboidratos simples e proteínas. Beba 2,5L de água por dia no mínimo.")
      escreval("")
      escreval ("CARDÁRPIO SUGERIDO:")
      escreval ("CAFÉ DA MANHÃ ")
      escreval("Opção 1")
      escreval("1 copo (250 ml) de leite com chocolate em pó")
      escreval("2 fatias de pão integral tostado com 2 col. (chá) de requeijão ou cream cheese")
      escreval("1 ovo mexido")
      escreval("1 copo grande (300 ml) de suco de laranja batido com 1 banana e 1 col. (sopa) de aveia  ")
      escreval("Opção 2 ")
      escreval("1 pote (200 g) de iogurte integral batido com ½ papaia + 1 col. (chá) de mel + 1 col. (sopa) de granola (se ficar muito espesso, acrescente leite")
      escreval("2 torradas com 2 col. (chá) de requeijão e  2 fatias de presunto ")
      escreval("1 xíc. (chá) de chá preto adoçado com mel ou café")
      escreval("")
      escreval("ALMOÇO")
      escreval("Opção 1")
      escreval("1 prato pequeno de salada de folhas verdes com tomate ")
      escreval("2 conchas de espaguete com molho de tomate")
      escreval("4 col. (sopa) de carne moída")
      escreval("1 col. (sopa) de queijo parmesão para polvilhar ")
      escreval("1 pedaço de goiabada com queijo")
      escreval("Opção 2")
      escreval("1 prato pequeno de salada mista com 1 ovo fatiado")
      escreval("3 col. (sopa) de arroz integral")
      escreval("1 concha de feijão")
      escreval("2 col. (sopa) de couve refogada ")
      escreval("1 filé grande de carne grelhado")
      escreval("1 porção de doce de leite cremoso")
      escreval("")
      escreval("LANCHE DA MANHÃ/TARDE")
      escreval("Opção 1")
      escreval("1 copo (250 ml) de vitamina de abacate, preparada com leite desnatado (com leite integral fica muito pesado)")
      escreval(" e adoçada com mel à vontade")
      escreval("Opção 2")
      escreval("1 copo (250ml) de suco de manga")
      escreval("2 pães de queijo")
      escreval("Opção 3 ")
      escreval("1 tigela de açaí com granola")
      escreval ("")
      escreval("JANTAR")
      escreval("Opção 1")
      escreval("2 xic. (chá) de macarrão com molho branco (ou de tomate)")
      escreval("½ lata de atum ")
      escreval("3 col. (sopa) de couve-flor no vapor ")
      escreval("2 folhas de alface crespa com 4 tomates")
      escreval("1 barrinha (30 g) de chocolate ")
      escreval("Opção 2")
      escreval("2 fatias médias de peito de peru ou 1 filé de frango assado")
      escreval("3 col. (sopa) de purê de mandioquinha ")
      escreval("2 col. (sopa) de salada de beterraba e cenoura raladas")
      escreval("1 fatia de bolo com 1 bola de sorvete")
   senao
      se(imc_dieta >= 17) e (imc_dieta < 18.5) entao
         escrevaL("Seu peso está abaixo do ideal, indicando magreza. Entretanto, falta pouco para você atingir o IMC")
         escrevaL("ideal. Proteínas são aliadas para atingir o peso correto de forma saudável.Faça mais refeições ")
         escrevaL("urante o dia, incluindo frutas. Beba 2,5L de água por dia, no mínimo.")
         escreval("")
         escrevaL("CARDÁPIO SUGERIDO:")
         escreval("")
         escrevaL("CAFÉ DA MANHÃ ")
         escrevaL("OPÇÕES: tapioca de queijo e frango, mexerica, leite com cacau/ ")
         escrevaL("café com leite, pão integral, ovos, alface, tomate, queijo, maçã/")
         escrevaL("omelete de frango, suco de fruta.")
         escreval("")
         escrevaL("LANCHE DA MANHÃ/TARDE")
         escrevaL("OPÇÕES: banana, sanduíche com ovo e abacate./biscoito integral com manteiga de amendoim/")
         escrevaL("torrada com queijo e iogurte com granola./Vitamina de mamão e abacate, semente de chia e aveia/")
         escrevaL("salada de fruta com aveias e frutas secas.")
         escreval("")
         escrevaL("ALMOÇO E JANTAR ")
         escrevaL("OPÇÕES: Strogonoff de frango / carne, arroz, salada de cenoura e repolho com molho de iogurte, laranja./")
         escrevaL("Almôndegas e molho de tomate, brócolis gratinado e purê de batata./ macarrão com milho, azeitona, tomate")
         escrevaL("e atum, salada de alface e cenoura temperada com azeite, melão./ Peito de frango grelhado, arroz, salada,")
         escrevaL("feijão de sua preferência e abobrinha refogada.")
      senao


         se(imc_dieta >= 18.5) e (imc_dieta < 25) entao
            escrevaL("Você está com o peso ideal! Aí vão algumas dicas para manter a forma:")
            escreval(" 1. Consuma alimentos fontes de proteínas magras")
            escreval("2. Consuma alimentos fontes de carboidratos integrais;")
            escreval("3. Evite as gorduras ruins: saturada e trans, inclua alimentos fontes de gorduras")
            escreval("saudáveis: abacate, extra virgem oleaginosa (castanha, amêndoa, noz), peixe;")
            escreval("4. Consuma açúcar e sal com moderação;")
            escreval("5. Aumente a ingestão de água nos intervalos das refeições;")
            escreval("6. Evite consumo de alimentos industrializados ricos em calorias, gorduras, açúcares, sal, cafeína, realçadores de sabor e conservantes;")
            escreval("7. Faça sua lista de compras saudáveis e tente ser fiel a ela;")
            escreval("8. Planeje suas refeições. Se no trabalho não há opções saudáveis de almoço ou")
            escreval("lanche, prepare em casa com todo carinho as suas marmitas e leve com você;")
            escreval("9. Nenhum alimento é proibido, mas evite os excessos;")
            escreval("10. Respeite os sinais de fome e saciedade;")

         senao
            se(imc_dieta >=25) e (imc_dieta < 30) entao
               escrevaL("Você está acima do peso ideal. Entretanto, uma reeducação alimentar apropriada ajudará a viver de")
               escrevaL("forma mais saudável e prevenir doenças.")
               escrevaL("")
               escrevaL("RECOMENDAÇÕES TECNO LIFE: Praticar atividades físicas regularmente, como caminhar, correr ou nadar. ")
               escrevaL("Dieta rica em proteínas e gorduras boas é essencial.")
               escrevaL(" ")
               escrevaL("CARDÁPIO SUGERIDO:")
               escrevaL(" ")

               escrevaL("CAFÉ DA MANHÃ")
               escrevaL("Opções: - Café preto sem açúcar + torrada integral com 2 colheres de sopa de ricota com orégano e 1 ovo mexido")
               escrevaL("- café preto sem açúcar + 30g de granola com 1 copo de leite de coco ou de amêndoa + 1/2 xícara de morango")
               escrevaL("-1 xícara de café com leite desnatado sem açúcar + 1 panqueca média de banana com aveia com 1 colher de sopa")
               escrevaL("de manteiga de cacau.")
               escrevaL("")
               escrevaL("LANCHE DA MANHÃ/TARDE ")
               escrevaL("Opções: -2 fatias de melão + 10 unidades de castanha de caju")
               escrevaL("-1 banana triturada com 1 colher de sopa de manteiga de amendoim e um pouco de canela")
               escrevaL("-2 fatias de mamão com 1 colher de chá de chia")
               escrevaL("-1 iogurte natural com 1 colher de mel + 10 unidades de amendoim.")
               escrevaL("")
               escrevaL("ALMOÇO/JANTA")
               escrevaL("opções: - filé de peito de frango grelhado acompanhado de 3 colheres de sopa de arroz integral com")
               escrevaL("2 colheres de sopa de feijão + 1 xícara de vegetais salteados no azeite de oliva + 1 pêra")
               escrevaL("-1 filé de peixe com tomate e cebola ao forno , salada e 1 pêssego")
               escrevaL("-1 filé de peito de peru cortado em cubos salteados com vegetais e quinoa + 1 maçã")
            senao

               se(imc_dieta >=30) e (imc_dieta < 35) entao
                  escrevaL ("Você esta acima do peso, podendo desenvolver Obesidade Grau I. Os riscos de um IMC acima da média são: ")
                  escrevaL ("diabetes, enfartes, embolias, alterações menstruais, arteriosclerose, entre outros.")
                  escrevaL (" ")
                  escrevaL ("RECOMENDAÇÕES TECNO LIFE: reduzir o consumo de salgados, doces, refrigerantes, sucos industrializados")
                  escrevaL ("e similares. Praticar atividade física e buscar um especialista para acompanhamento.")
                  escrevaL ("")
                  escrevaL ("CARDÁPIO SUGERIDO: ")
                  escrevaL (" ")
                  escrevaL ("CAFÉ DA MANHÃ ")
                  escrevaL ("opções: - 2 torradas com queijo branco e 1 copo de suco de laranja natural")
                  escrevaL ("- 1 iogurte desnatado com 2 colheres de sopa de granola e 1 kiwi.")
                  escrevaL ("- 1 copo de leite com 2 colheres de sopa de cereais tipo all bran, 3 morangos e canela.")
                  escrevaL (" ")
                  escrevaL ("LANCHE DA MANHÃ/TARDE")
                  escrevaL ("opções: - 1 vitamina de morango")
                  escrevaL ("- 1 pão de cereais com 1 fatia de presunto de peru e chá verde sem açúcar.")
                  escrevaL ("- 1 banana com 5 amêndoas.")
                  escrevaL (" ")
                  escrevaL ("ALMOÇO/JANTA")
                  escrevaL ("opções: - bife de peru grelhado com 2 colheres de sopa de arroz integral e salada de alface, cenoura")
                  escrevaL ("e milho temperada com suco de limão, gengibre e oréganos. 1 maçã de sobremesa.")
                  escrevaL ("- 1 ovo cozido com 1 batata cozida, ervilhas, tomate e cenoura. Meia manga de sobremesa.")
                  escrevaL ("- 1 coxa de frango grelhada com 2 colheres de sopa de macarrão cozido e salada de rúcula, pimentão")
                  escrevaL ("e repolho roxo temperada com suco de limão. 1 fatia de melão de 100 g de sobremesa.")

               senao


                  se(imc_dieta >=35) e (imc_dieta < 40) entao
                     escrevaL("Você está acima do peso, indicando Obesidade Grau II segundo o seu IMC. Os riscos desse quadro incluem:")
                     escrevaL("falta de ar, apneia, trombose, úlceras, refluxo esofágico, cancro no cólon, entre outros.")
                     escrevaL("")
                     escrevaL("RECOMENDAÇÕES TECNO LIFE: para melhor desempenho na sua jornada em busca de uma qualidade de vida melhor,")
                     escrevaL("é altamente recomendado que o processo seja acompanhado em todas as suas etapas por especialistas.")
                     escrevaL("Procure um nutricionista. É importante lembrar que dietas milagrosas e remédios para emagrecimento podem")
                     escrevaL("ser extremamente prejudiciais à saúde. A implementação de uma dieta deve ser feita por um profissional.")

                  senao
                     se(imc_dieta >=40) entao
                        escrevaL("Você está acima do peso, indicando Obesidade Mórbida segundo o seu IMC. Os riscos desse quadro incluem:")
                        escrevaL("falta de ar, apneia, trombose, úlceras, refluxo esofágico, cancro no cólon, entre outros.")
                        escrevaL("")
                        escrevaL("RECOMENDAÇÕES TECNO LIFE: para melhor desempenho na sua jornada em busca de uma qualidade de vida melhor,")
                        escrevaL("é altamente recomendado que o processo seja acompanhado em todas as suas etapas por especialistas.")
                        escrevaL("Procure um nutricionista. É importante lembrar que dietas milagrosas e remédios para emagrecimento podem")
                        escrevaL("ser extremamente prejudiciais à saúde. A implementação de uma dieta deve ser feita por um profissional.")

                     fimse
                  fimse


               fimse

            fimse
         fimse
      fimse

   fimse

fimprocedimento



INICIO

   qtdUsuariosCadastrados <-0

   //MENU
   repita
      escrevaL ("------------------------------------ ")
      escrevaL ("           TECNO LIFE                ")
      escrevaL ("-------------------------------------")
      escreval (" INSIRA A OPÇÃO QUE DESEJA EXECUTAR ")
      escreval ("")
      escreval ("MENU")
      escreval ("[1] CADASTRAR USUÁRIO")
      escreval ("[2] LISTAR USUÁRIOS CADASTRADOS")
      escreval ("[3] SOBRE O TECNO LIFE")
      escreval ("[4] PESQUISAR DIETA POR IMC")
      escreval ("[0] SAIR DO PROGRAMA")
      leia (escolhaMenu)

      escolha escolhaMenu
      caso 1
         cadastrarDisc()
      caso 2
         listarDisc()
      caso 3
         SobreTecnolife ()

      caso 4
         dieta()
      caso 0

      fimescolha

   ate escolhaMenu = 0


Fimalgoritmo