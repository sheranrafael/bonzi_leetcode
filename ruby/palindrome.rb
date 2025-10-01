# LeetCode #9: Palindrome Number (Ruby)

def is_palindrome(x)
  return false if x < 0  # Números negativos não são palíndromos

  original = x
  invertido = 0

  while x > 0
    digito = x % 10          # Pega o último dígito
    invertido = invertido * 10 + digito  # Constrói o número invertido
    x /= 10                  # Remove o último dígito
  end
  original == invertido
end

# Valeu

