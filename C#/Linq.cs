using System;
using System.Collections.Generic;
using System.Linq;

namespace LinqExample
{
    class Student
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
        public int Grade { get; set; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            List<Student> students = new List<Student>
            {
                new Student { Name = "akshay", Age = 18, Gender = "Male", Grade = 90 },
                new Student { Name = "dharani", Age = 19, Gender = "Female", Grade = 92 },
                new Student { Name = "Jim", Age = 17, Gender = "Male", Grade = 88 },
                new Student { Name = "anjali", Age = 20, Gender = "Female", Grade = 95 },
                new Student { Name = "akkash", Age = 18, Gender = "Male", Grade = 85 }
            };

            // Query to get all students who scored above 90
            var highScorers = from student in students
                              where student.Grade > 90
                              select student;

            Console.WriteLine("Students with score above 90:");
            foreach (var student in highScorers)
            {
                Console.WriteLine(student.Name + " - " + student.Grade);
            }

            // Query to get average age of all students
            var avgAge = (from student in students
                          select student.Age).Average();

            Console.WriteLine("\nAverage age of all students: " + avgAge);

            // Query to get names of all female students
            var femaleStudents = from student in students
                                 where student.Gender == "Female"
                                 select student.Name;

            Console.WriteLine("\nFemale Students:");
            foreach (var student in femaleStudents)
            {
                Console.WriteLine(student);
            }
                // Query to get names of all male students
                var malestudents = from student in students
                                   where student.Gender == "Male"
                                   select student.Name;
                Console.WriteLine("\nMale student:");
                foreach (var student in malestudents)
            {
                Console.WriteLine(student);
            }
            
        }
    }
}
