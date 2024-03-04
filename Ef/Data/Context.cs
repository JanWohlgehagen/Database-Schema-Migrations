using Core;
using Microsoft.EntityFrameworkCore;
using System.Reflection;

namespace Data
{
    public class Context : DbContext
    {
        public string DbPath { get; set; }
        public Context()
        {
            var commonPath = "Database-Schema-Migrations\\Ef\\Data";
            var projectDirectory = Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.FullName; // Get the project's root directory

            if (projectDirectory != null)
            {
                var fullPath = Path.Combine(projectDirectory, commonPath);

                // Create directory if it doesn't exist
                Directory.CreateDirectory(fullPath);

                DbPath = Path.Combine(fullPath, "EShop.db");
            }
            else
            {
                var desktopPath = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
                var fullPath = Path.Combine(desktopPath, "EShop.db");
                DbPath = fullPath;
            }
        }

        public DbSet<Product> Products { get; set; }

        public DbSet<ProductRatings> ProductRatings { get; set; }

        public DbSet<Category> categories { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        => options.UseSqlite($"Data Source={DbPath}");
        
    }
}
