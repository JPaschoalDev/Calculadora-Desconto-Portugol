programa {
    funcao real calcular_desconto(real valor_total, real percentual_desconto) {
        real valor_com_desconto
        valor_com_desconto = valor_total - (valor_total * percentual_desconto)
        retorne valor_com_desconto
    }
    
    funcao vazio exibir_cabecalho() {
        escreva("╔══════════════════════════════════════════════════════════════╗\n")
        escreva("║                 🛍️  SISTEMA DE VENDAS  🛍️                   ║\n")
        escreva("║                     Version 1.1 - 2025                       ║\n")
        escreva("╚══════════════════════════════════════════════════════════════╝\n")
        escreva("\n")
    }
    
    funcao vazio exibir_separador() {
        escreva("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n")
    }
    
    funcao vazio exibir_resumo_compra(real total, inteiro qtd_itens, real desconto_pct, real valor_final) {
        escreva("\n")
        exibir_separador()
        escreva("                    📋 RESUMO DA COMPRA 📋\n")
        exibir_separador()
        escreva("🛒 Valor bruto da compra............: R$ ", total, "\n")
        escreva("📦 Quantidade de itens..............: ", qtd_itens, " itens\n")
        escreva("💰 Percentual de desconto...........: ", desconto_pct*100, "%\n")
        escreva("💸 Valor do desconto................: R$ ", total - valor_final, "\n")
        escreva("✅ VALOR FINAL A PAGAR..............: R$ ", valor_final, "\n")
        exibir_separador()
        escreva("              🎉 Obrigado pela preferência! 🎉\n")
        exibir_separador()
    }
    
    funcao vazio exibir_sem_desconto(real total, inteiro qtd_itens) {
        escreva("\n")
        exibir_separador()
        escreva("                    📋 RESUMO DA COMPRA 📋\n")
        exibir_separador()
        escreva("🛒 Valor total da compra............: R$ ", total, "\n")
        escreva("📦 Quantidade de itens..............: ", qtd_itens, " itens\n")
        escreva("⚠️  DESCONTO NÃO APLICADO...........: Mínimo 3 itens\n")
        escreva("💳 VALOR FINAL A PAGAR..............: R$ ", total, "\n")
        exibir_separador()
        escreva("     💡 Dica: Compre mais 1 item e ganhe desconto!\n")
        exibir_separador()
    }
    
    funcao inicio() {
        real valor_produto, soma_total, percentual_desconto, valor_final
        inteiro quantidade_itens, contador_item
        
        // INICIALIZAÇÃO DAS VARIÁVEIS
        valor_produto = 0.0
        soma_total = 0.0
        quantidade_itens = 0
        contador_item = 1
        
        // EXIBE CABEÇALHO DO SISTEMA
        exibir_cabecalho()
        
        // COLETA DOS PRODUTOS
        escreva("💡 Digite o valor de cada item (Digite 0 para finalizar)\n\n")
        
        enquanto (verdadeiro) {
            escreva("🏷️  Item ", contador_item, " - Valor: R$ ")
            leia(valor_produto)
            
            se (valor_produto <= 0) {
                pare
            }
            
            soma_total = soma_total + valor_produto
            quantidade_itens = quantidade_itens + 1
            contador_item = contador_item + 1
            
            escreva("   ✅ Item adicionado! Total parcial: R$ ", soma_total, "\n\n")
        }
        
        // VERIFICA SE FORAM INSERIDOS ITENS
        se (quantidade_itens == 0) {
            escreva("\n❌ Nenhum item foi adicionado. Encerrando o programa...\n")
            retorne
        }
        
        // VERIFICA DESCONTO
        se (quantidade_itens >= 3) {
            escreva("\n🎯 Parabéns! Você tem direito a desconto!\n")
            enquanto (verdadeiro) {
                escreva("💸 Digite o percentual de desconto (0.10 a 0.50): ")
                leia(percentual_desconto)
                
                se (percentual_desconto >= 0.10 e percentual_desconto <= 0.50) {
                    pare
                } senao {
                    escreva("❌ Valor inválido! Digite entre 0.10 (10%) e 0.50 (50%)\n")
                }
            }
            
            valor_final = calcular_desconto(soma_total, percentual_desconto)
            exibir_resumo_compra(soma_total, quantidade_itens, percentual_desconto, valor_final)
            
        } senao {
            exibir_sem_desconto(soma_total, quantidade_itens)
        }
    }
}
