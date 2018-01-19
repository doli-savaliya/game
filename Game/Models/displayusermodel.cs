using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Game.Models
{
    public class displayusermodel
    {
        public int ID { get; set; }
      
        public string Firstname { get; set; }

        public string lastname { get; set; }

        public string Gamename { get; set; }
        public string countryname { get; set; }
        public string statename { get; set; }
        public string cityname { get; set; }
        public string gametype { get; set; }
    }
}