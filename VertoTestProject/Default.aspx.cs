using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VertoTestProject.Models;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Web.ModelBinding;

namespace VertoTestProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<VertoTestProject.Models.Content> contentsSample_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.Contents.Where(c => c.ContentID == 1);
            return query;
        }
        public IQueryable<VertoTestProject.Models.Content> contentsSample1_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.Contents.Where(c => c.ContentID == 2);
            return query;
        }
        public IQueryable<VertoTestProject.Models.Content> contentsSample2_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.Contents.Where(c => c.ContentID == 3);
            return query;
        }
        public IQueryable<VertoTestProject.Models.Content> contentsSample3_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.Contents.Where(c => c.ContentID == 4);
            return query;
        }
        public IQueryable<VertoTestProject.Models.Content> contentsSample4_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.Contents.Where(c => c.ContentID == 5);
            return query;
        }
        public IQueryable<VertoTestProject.Models.New> newsSample1_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.News.Where(c => c.NewName == "LPC Latest News");
            return query;
        }
        public IQueryable<VertoTestProject.Models.New> newsSample2_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.News.Where(c => c.NewName == "Second");
            return query;
        }
        public IQueryable<VertoTestProject.Models.New> newsSample3_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.News.Where(c => c.NewName == "Third");
            return query;
        }
    }
}