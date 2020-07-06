using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BlogDBModel
{
    public class ForumDBModel
    {
        public int id { get; set; }
        public string query { get; set; }
        public int userid { get; set; }
        public string name { get; set; }
        public string DateAdded { get; set; }

    }
}
