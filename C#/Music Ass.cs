using System;
using System.Collections.Generic;

namespace Music
{
    class Song
    {
        private string _title;
        private string _genre;
        private DateTime _duration;
        private double _rating;

        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }

        public string Genre
        {
            get { return _genre; }
            set { _genre = value; }
        }

        public DateTime Duration
        {
            get { return _duration; }
            set { _duration = value; }
        }

        public double Rating
        {
            get { return _rating; }
            set { _rating = value; }
        }

        public Song() { }

        public Song(string title, string genre, DateTime duration, double rating)
        {
            _title = title;
            _genre = genre;
            _duration = duration;
            _rating = rating;
        }
    }

    class songname
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter details of song 1: ");
            string[] song1Details = Console.ReadLine().Split(',');
            Song song1 = new Song(song1Details[0], song1Details[1], Convert.ToDateTime(song1Details[2]), Convert.ToDouble(song1Details[3]));

            Console.WriteLine("Enter details of song 2: ");
            string[] song2Details = Console.ReadLine().Split(',');
            Song song2 = new Song(song2Details[0], song2Details[1], Convert.ToDateTime(song2Details[2]), Convert.ToDouble(song2Details[3]));

            Console.WriteLine("\nDetails of Song 1: ");
            Console.WriteLine("Title: " + song1.Title);
            Console.WriteLine("Genre: " + song1.Genre);
            Console.WriteLine("Duration: " + song1.Duration);
            Console.WriteLine("Rating: " + song1.Rating.ToString("0.0"));

            Console.WriteLine("\nDetails of Song 2: ");
            Console.WriteLine("Title: " + song2.Title);
            Console.WriteLine("Genre: " + song2.Genre);
            Console.WriteLine("Duration: " + song2.Duration);
            Console.WriteLine("Rating: " + song2.Rating.ToString("0.0"));

            if (song1.Title == song2.Title && song1.Genre == song2.Genre && song1.Duration == song2.Duration && song1.Rating == song2.Rating)
                Console.WriteLine("\nThe two songs are same.");
            else
                Console.WriteLine("\nThe two songs are different.");

            Console.ReadLine();
        }
    }
}
