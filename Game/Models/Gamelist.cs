namespace Game.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Gamelist")]
    public partial class Gamelist
    {
        public int Id { get; set; }

        public int? Gametype_id { get; set; }

        public string GameName { get; set; }
    }
}
