using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class ProductRatings
    {
        [Key]
        public int ProductRatingId { get; set; }
        public required Product Product { get; set; }
        public int Rating { get; set; }
        public required string Review { get; set; }
    }
}
