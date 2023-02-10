using System;

namespace ConstructorExample
{
    class Employee
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public string Department { get; set; }

        public Employee(string name, int age, string department)
        {
            Name = name;
            Age = age;
            Department = department;
        }

        public Employee(string name, int age)
        {
            Name = name;
            Age = age;
            Department = "Unknown";
        }

        public void DisplayEmployeeInfo()
        {
            Console.WriteLine("Name: " + Name);
            Console.WriteLine("Age: " + Age);
            Console.WriteLine("Department: " + Department);
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Employee employee1 = new Employee("John Doe", 32, "IT");
            Console.WriteLine("Employee 1 Info:");
            employee1.DisplayEmployeeInfo();

            Employee employee2 = new Employee("Jane Doe", 28);
            Console.WriteLine("\nEmployee 2 Info:");
            employee2.DisplayEmployeeInfo();

            Console.ReadLine();
        }
    }
}
