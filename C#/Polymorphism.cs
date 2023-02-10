using System;

namespace Polymorphism
{
        public class BaseClass
        {
            public virtual void Draw()
            {
                Console.WriteLine("Drawing a BaseClass");
            }
        }

        public class Circle : BaseClass
        {
            public override void Draw()
            {
                Console.WriteLine("Drawing a circle");
            }
        }

        public class Square : BaseClass
        {
            public override void Draw()
            {
                Console.WriteLine("Drawing a square");
            }
        }

        class Program
        {
            static void Main(string[] args)
            {
                BaseClass b = new BaseClass();
                b.Draw();

                BaseClass circle = new Circle();
                circle.Draw();

                BaseClass square = new Square();
                square.Draw();

                Console.ReadLine();
            }
        }
    }

