﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AssessmentCenterWEB.Controllers
{
    //[Authorize(Roles = "Administrator")]
    public class RolesController : Controller
    {
        // GET: Roles
        public ActionResult Index()
        {
            

                return View();
        }
    }
}