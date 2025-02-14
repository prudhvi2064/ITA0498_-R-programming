# Extract first 10 lowercase letters
#sink(file=NULL)
sink("output8.txt")
first_10_lower <- letters[1:10]

# Extract last 10 uppercase letters
last_10_upper <- toupper(letters[17:26])

# Extract letters from 22nd to 24th in uppercase
letters_22_24_upper <- toupper(letters[22:24])

cat("First 10 lowercase letters:\n")
print(first_10_lower)

cat("\nLast 10 uppercase letters:\n")
print(last_10_upper)

cat("\nLetters 22nd to 24th in uppercase:\n")
print(letters_22_24_upper)
sink(file=NULL)
#sink("output2.txt")