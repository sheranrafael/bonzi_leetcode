# LeetCode #509: Fibonacci Number (Ruby)
def fib(n)
  return n if n <= 1
  
  a, b = 0, 1
  n.times do
    a, b = b, a + b
  end
  
  a
end