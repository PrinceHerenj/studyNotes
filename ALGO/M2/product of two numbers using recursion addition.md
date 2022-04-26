```cs
using System;
 
class GFG
{
     
    // recursive function to calculate
    // multiplication of two numbers
    static int product(int x, int y)
    {
        // if x is less than
        // y swap the numbers
        if (x < y)
            return product(y, x);
     
        // iteratively calculate
        // y times sum of x
        else if (y != 0)
            return (x + product(x, y - 1));
     
        // if any of the two numbers is
        // zero return zero
        else
            return 0;
    }
     
    // Driver code
    public static void Main ()
    {
        int x = 5, y = 2;
        Console.WriteLine(product(x, y));
    }
}
```