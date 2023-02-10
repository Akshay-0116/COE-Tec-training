using System;

namespace startersapplication
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*Console.WriteLine("Hello World!");
            Console.WriteLine("welcome to C# learning Session");
            int x = 5;
            int y = 10;
            Console.WriteLine(x + y);

            // give values on the compiler page..

            int a;
            int b;
            Console.WriteLine("enter the value of a");
            a= int.Parse(Console.ReadLine());
            Console.WriteLine("enter the value of b");
            b = int.Parse(Console.ReadLine());
            Console.WriteLine("Sum of two numbers:"+ (a+b));*/

            // find the largest number... 
            /* int num1, num2, num3, largest;

             Console.WriteLine("Enter the first number: ");
             num1 = int.Parse(Console.ReadLine());
             Console.WriteLine("Enter the second number: ");
             num2 = int.Parse(Console.ReadLine());
             Console.WriteLine("Enter the third number: ");
             num3 = int.Parse(Console.ReadLine());

             largest = num1;
             if (num2 > largest)
                 largest = num2;
             if (num3 > largest)
                 largest = num3;

             Console.WriteLine("The largest number is: " + largest);
             Console.ReadLine();*/

            //for loop
            /* Console.WriteLine("numbers from 1 to 10");
             for (int i = 1; i <= 10; i++)
                 Console.WriteLine(i);
             Console.ReadLine();*/

            // switch statement in grouped case with char
            char ch;
            Console.WriteLine("Enter an alphabet");
            ch = Convert.ToChar(Console.ReadLine());

            switch (Char.ToLower(ch))
            {
                case 'a':
                case 'e':
                case 'i':
                case 'o':
                case 'u':
                    Console.WriteLine("Vowel");
                    break;
                default:
                    Console.WriteLine("Not a vowel");
                    break;
            }
        }
    }
}
