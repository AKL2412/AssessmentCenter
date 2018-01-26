﻿using AssessmentCenterWEB.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AssessmentCenterWEB.Controllers
{
    
    public class RolesController : Controller
    {
        ApplicationDbContext context;
        public RolesController()
        {
            context = new ApplicationDbContext();
        }
        // GET: Roles
        public ActionResult Index()
        {
            List<IdentityRole> roles = context.Roles.ToList();

            return View(roles);
        }
       // [Authorize(Roles = "Administrator")]
        public ActionResult Create()
        {
            var Role = new IdentityRole();
            return View(Role);
        }
        [HttpPost]
        public ActionResult Create(IdentityRole Role)
        {
            context.Roles.Add(Role);
            context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}