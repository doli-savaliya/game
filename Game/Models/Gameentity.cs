namespace Game.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Gameentity : DbContext
    {
        public Gameentity()
            : base("name=Gameentity")
        {
        }

        public virtual DbSet<city> cities { get; set; }
        public virtual DbSet<country> countries { get; set; }
        public virtual DbSet<Gamelist> Gamelists { get; set; }
        public virtual DbSet<Gametype> Gametypes { get; set; }
        public virtual DbSet<state> states { get; set; }
        public virtual DbSet<UserGame> UserGames { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<city>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<country>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<state>()
                .Property(e => e.name)
                .IsUnicode(false);
        }

        public System.Data.Entity.DbSet<Game.Models.displayusermodel> displayusermodels { get; set; }
    }
}
