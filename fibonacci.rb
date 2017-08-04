def shane_fibonacci(n)
  return n if n == 0 || n == 1
  (shane_fibonacci(n - 1) + shane_fibonacci(n - 2))
end
