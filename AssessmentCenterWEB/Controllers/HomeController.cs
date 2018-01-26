using AssessmentCenterDBEF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AssessmentCenterWEB.Controllers
{
    public class HomeController : Controller
    {
        private ACModelContainer contextDB = new ACModelContainer();
        public ActionResult Index()
        {
            List< Employe> employes = contextDB.EmployeSet.ToList();

            return View(employes);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}