**Hashing** is a technique on process of mapping keys, values into the hash table by using a hash function. It is done for faster access to elements. The efficiency of mapping depends on the efficiency of the hash function used.

**Hash Function**: A function that converts a given big phone number to a small practical integer value. The mapped integer value is used as an index in hash table. **A hash function maps a big number or string to a small integer that can be used as index in hash table.**

**Hash Table**: An array that stores pointers to records corresponding to a given phone number.

**Collision Handling**: The situation where a newly inserted key maps to an already occupied slot in hash table is called collision and must be handles using some collision handling technique.
* Chaining: Each cell of hash table points to a linked list of records that have same hash function value. Simple but requires additional memory outside the table.
  ![[Pasted image 20220421193049.png]]
* Open Addressing: In open addressing, all elements are stored in the hash table itself. Each table entry contains either a record or NIL.

##### [[Index Mapping]]
**Load Factor**: In chaining, if there n entries for a single hash index(hash code) on average, and the size of the hash array is b, $Load\ Factor=n/b$. This needs to be low for $\Theta(1)$.

**Rehashing**: It means to hash again. If Load Factor increases, complexity increases. To overcome this, size of array is doubled and all values are hashed again and stored in new double sized array.
