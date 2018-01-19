namespace Game.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Gametype")]
    public partial class Gametype
    {
        public int Id { get; set; }

        public string Gametypename { get; set; }
    }
}
