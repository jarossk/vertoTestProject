using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace VertoTestProject.Models
{
    public class VertoContext : DbContext
    {
        public DbSet<Content> Contents { get; set; }
        public DbSet<New> News { get; set; }
    }

    public class Content
    {
        [Key, Display(Name = "ID")]
        [ScaffoldColumn(false)]
        public int ContentID { get; set; }

        [Required, Display(Name = "Title")]
        public string TitleName { get; set; }

        [Required, Display(Name = "Content")]
        public string ContentCon { get; set; }

    }
    public class New
    {
        [Key, Display(Name = "ID")]
        [ScaffoldColumn(false)]
        public int NewID { get; set; }

        [Required, StringLength(20), Display(Name = "Title")]
        public string NewName { get; set; }

        [Required, Display(Name = "Content")]
        public string NewCon { get; set; }

    }

}