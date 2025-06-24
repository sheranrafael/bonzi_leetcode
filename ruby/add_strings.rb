# LeetCode #415: Add Strings (Ruby)

def add_strings(num1, num2)
  i = num1.length - 1
  j = num2.length - 1
  carry = 0
  resultado = ""

  while i >= 0 || j >= 0 || carry > 0
    # Pega o dígito atual de num1 (ou 0 se já tiver terminado)
    digito1 = i >= 0 ? num1[i].ord - '0'.ord : 0
    digito2 = j >= 0 ? num2[j].ord - '0'.ord : 0

    # Soma os dígitos + carry
    soma = digito1 + digito2 + carry
    carry = soma / 10  # Novo carry
    digito_atual = soma % 10  # Dígito a ser adicionado ao resultado

    # Adiciona o dígito ao início da string resultado
    resultado.prepend(digito_atual.to_s)

    # Move os ponteiros para a esquerda
    i -= 1
    j -= 1
  end

  resultado
end

# Valeu