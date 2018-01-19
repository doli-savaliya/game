namespace Game.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class state
    {
        public int id { get; set; }

        [Required]
        [StringLength(30)]
        public string name { get; set; }

        public int country_id { get; set; }
    }
}
