These tasks are designed to demonstrate proficiency in MIPS assembly, emphasizing attention to detail in handling strings and implementing hashing techniques.

Task 1: Find Postal Code (a1_plz.asm)
Synopsis: Implement the function plz, which searches a string address for a German postal code (PLZ). A postal code is identified as a sequence of five consecutive digits (0-9). If a postal code is found, it is returned as a numeric value; if none is found, the function returns 0. The function should handle a pointer to the beginning of a string that is terminated by a null character. Each character in the string is a byte in size and can be examined based on its ASCII value. Test your solution with various input strings to ensure functionality.

Task 2: Count Substring Occurrences (a2_count.asm)
Synopsis: Develop the function count to determine how often a substring part appears within the string text, returning the count of these occurrences. Both part and text are null-terminated strings. Utilize the helper function rollhash for this task, which implements a rolling hash mechanism to dynamically add and remove characters from a hashed string window. The function should initialize hash values for both part and text, then continuously update the hash as it traverses text, comparing it against part. The objective is to effectively count overlapping and distinct occurrences of part within text.

Using Mars simulator (JVM) you can run and test the code on basically any computer.