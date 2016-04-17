using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VertoTestProject.Models;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace VertoTestProject
{
    public partial class Recontent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<VertoTestProject.Models.Content> contentsGrid_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.Contents;
            return query;
        }
        // Main content manager
        public void contentsGrid_UpdateItem(int contentID)
        {
            using (VertoContext db = new VertoContext())
            {
                VertoTestProject.Models.Content item = null;
                item = db.Contents.Find(contentID);
                if (item == null)
                {
                    ModelState.AddModelError("",
                      String.Format("Item with id {0} was not found", contentID));
                    return;
                }

                TryUpdateModel(item);
                if (ModelState.IsValid)
                {
                    db.SaveChanges();
                }
            }
        }

        public void contentsGrid_DeleteItem(int contentID)
        {
            using (VertoContext db = new VertoContext())
            {
                var item = new VertoTestProject.Models.Content { ContentID = contentID };
                db.Entry(item).State = EntityState.Deleted;
                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    ModelState.AddModelError("",
                      String.Format("Item with id {0} no longer exists in the database.", contentID));
                }
            }
        }
        // News content manager
        public IQueryable<VertoTestProject.Models.New> newsGrid_GetData()
        {
            VertoContext db = new VertoContext();
            var query = db.News;
            return query;
        }

        public void newsGrid_UpdateItem(int newID)
        {
            using (VertoContext db = new VertoContext())
            {
                VertoTestProject.Models.New item = null;
                item = db.News.Find(newID);
                if (item == null)
                {
                    ModelState.AddModelError("",
                      String.Format("Item with id {0} was not found", newID));
                    return;
                }

                TryUpdateModel(item);
                if (ModelState.IsValid)
                {
                    db.SaveChanges();
                }
            }
        }

        public void newsGrid_DeleteItem(int newID)
        {
            using (VertoContext db = new VertoContext())
            {
                var item = new VertoTestProject.Models.New { NewID = newID };
                db.Entry(item).State = EntityState.Deleted;
                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    ModelState.AddModelError("",
                      String.Format("Item with id {0} no longer exists in the database.", newID));
                }
            }
        }
    }
}