1. b. Develop a Python program to check whether a given number is palindrome or not and also count the number of occurrences of each digit in the input number

num = int(input("Enter number:"))
temp=num
rev=0
while(num>0):
  dig = num % 10
  rev = rev*10 + dig
  num = num//10
if(temp==rev):
  print(f"The number {temp} is a palindrome!")
else:
  print(f"The number {temp} isn't a palindrome!")
digit_counts = {}
for digit in str(temp):
  if digit in digit_counts:
    digit_counts[digit] += 1
  else:
    digit_counts[digit] = 1
print("Digit counts in", temp, ":")
for digit, count in digit_counts.items():
  print(digit, ":", count)
