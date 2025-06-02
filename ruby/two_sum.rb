# LeetCode #1: Two Sum (Ruby Solution)
# Solução usando hash para O(n) time complexity.

def two_sum(nums, target)

  seen = {}  # Hash vazio para armazenar { valor: índice }

  nums.each_with_index do |num, i| # Itera sobre cada número e seu índice

    complement = target - num # Calcula o complemento necessário para atingir o target

    return [seen[complement], i] if seen.key?(complement) # Se o complemento já foi visto, retorna os índices

    seen[num] = i # Armazena o número atual e seu índice no hash
  end
end