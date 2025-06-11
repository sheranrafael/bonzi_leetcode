# LeetCode #1: Two Sum (Ruby Solution)

def two_sum(nums, target)

  seen = {}  # Hash vazio para armazenar { valor: índice }

  nums.each_with_index do |num, i| # Itera sobre cada número e seu índice

    complement = target - num # Calcula o complemento necessário para atingir o target

    return [seen[complement], i] if seen.key?(complement) # Se o complemento já foi visto, retorna os índices

    seen[num] = i # Armazena o número atual e seu índice no hash
  end
end

# Testando
puts two_sum([2, 7, 11, 15], 9).inspect # Saída: [0, 1]

#Valeu
