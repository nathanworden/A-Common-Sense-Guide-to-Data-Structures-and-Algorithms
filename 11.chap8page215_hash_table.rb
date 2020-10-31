# The Hash Table

# Hash Maps have fast reading.
# A Hash table is a list of paired values.

# Its a list of key-value pairs.

# Looking up a value in a hash table has an efficiency of O(1) since it takes just one step.

# The process of taking characters and converting them to numbers is known as hashing. The code that is used to convert those letters into particular numbers is called a hash function.

# Hash functions need to meet only one criterion to be valid: a hash function must convert the same string to the same number every single time its applied. If the hash function can return inconsistent results for a given string, it's not valid.

# Looking up a value in a hash table is typically O(1): it's a process that takes a constant amount of time. 

# Trying to add data to a cell that is already filled is known as a collision.

# On classic approach for handling collisions is known as separate chaining. When a collision occurs, instead of placing a single value in the cell, it places in it a reference to an array.

# Ultimately, a hash table's efficiency depends on three factors:
#  - How much data we're storing in the hash table
# - How many cells are available in the hash table
# - Which hash function we're using

