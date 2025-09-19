programa {

funcao real desconto (real a, real b){
  real desc
  desc= a - (a*b)
  retorne desc}

  funcao inicio() {

    real prod, soma, desconto,desconto_final
    inteiro quantidade

    prod=0
    soma=0
    quantidade=0

    escreva("DIGITE O VALOR DO ITEM [ZERO P/ENCERRAR]:R$")
    leia(prod)

    enquanto (prod > 0) {
        soma = soma + prod
        quantidade = quantidade + 1
        escreva("DIGITE OUTRO VALOR DE ITEM [ZERO P/ENCERRAR]:R$")
        leia(prod)
    }

    escreva("===============================================================\n")
    escreva("QUAL O VALOR DO DESCONTO APLICADO NA COMPRA [0.10 a 0.50]: ")
    leia(desconto)

    se(quantidade>2){
    desconto_final= desconto(soma,desconto)
    escreva("===============================================================\n")
    escreva("🛒 O VALOR TOTAL DA COMPRA FOI DE [R$",soma,"]\n")
    escreva("📦 O CLIENTE LEVOU [",quantidade,"] ITENS\n")
    escreva("💸 SENDO VÁLIDO UM TOTAL DE [",desconto*100,"%] DE DESCONTO\n")
    escreva("✅ O VALOR FINAL DA COMPRA FICA EM [ R$",desconto_final," ]")}

    senao{
      escreva("NÃO FORAM COMPRADOS ITENS SUFICIENTES PARA OBTER O DESCONTO, O VALOR TOTAL FICA EM [R$",soma,"]")
    }
  }
}
