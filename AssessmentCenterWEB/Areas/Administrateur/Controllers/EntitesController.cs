using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AssessmentCenterDBEF;
using AssessmentCenterWEB.Areas.Administrateur.Models;

namespace AssessmentCenterWEB.Areas.Administrateur.Controllers
{
    public class EntitesController : Controller
    {
        private ACModelContainer db = new ACModelContainer();

        // GET: Administrateur/Entites
        public async Task<ActionResult> Index()
        {
            return View(await db.EntiteSet.ToListAsync());
        }

        // GET: Administrateur/Entites/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entite entite = await db.EntiteSet.FindAsync(id);
            if (entite == null)
            {
                return HttpNotFound();
            }
            return View(entite);
        }

        // GET: Administrateur/Entites/Create
        public ActionResult Create()
        {
            return View(new EntiteView());
        }

        // POST: Administrateur/Entites/Create
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,At,Code,Nom")] Entite entite)
        {
            if (ModelState.IsValid)
            {
                db.EntiteSet.Add(entite);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(entite);
        }

        // GET: Administrateur/Entites/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entite entite = await db.EntiteSet.FindAsync(id);
            if (entite == null)
            {
                return HttpNotFound();
            }
            return View(entite);
        }

        // POST: Administrateur/Entites/Edit/5
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,At,Code,Nom")] Entite entite)
        {
            if (ModelState.IsValid)
            {
                db.Entry(entite).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(entite);
        }

        // GET: Administrateur/Entites/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entite entite = await db.EntiteSet.FindAsync(id);
            if (entite == null)
            {
                return HttpNotFound();
            }
            return View(entite);
        }

        // POST: Administrateur/Entites/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Entite entite = await db.EntiteSet.FindAsync(id);
            db.EntiteSet.Remove(entite);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
