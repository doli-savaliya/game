namespace Game.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class country
    {
        public int id { get; set; }

        [Required]
        [StringLength(150)]
        public string name { get; set; }
    }
}
