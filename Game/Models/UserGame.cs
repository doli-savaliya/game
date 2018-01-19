namespace Game.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UserGame")]
    public partial class UserGame
    {
        public int ID { get; set; }

        [Required(ErrorMessage = "FirstName is required")]
        public string Firstname { get; set; }

        [Required(ErrorMessage = "FirstName is required")]
        public string lastname { get; set; }
        [Required(ErrorMessage = "Country is required")]
        public int? Country_Id { get; set; }
        [Required(ErrorMessage = "city is required")]
        public int? City_Id { get; set; }
        [Required(ErrorMessage = "State is required")]
        public int? State_Id { get; set; }
        [Required(ErrorMessage = "Gametype is required")]
        public int? gametype_Id { get; set; }

        public string Gamename { get; set; }

    }
   
}
