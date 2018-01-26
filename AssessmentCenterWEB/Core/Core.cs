using System;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using AssessmentCenterWEB.Models;
namespace AssessmentCenterWEB.Core
{
    public class Core
    {
        ApplicationDbContext contextWEB;
        public  Core()
        {
            contextWEB = new ApplicationDbContext();
        }
        /*
        public Boolean isRoleUser(IUser)
        {
            if (IUser.Identity.IsAuthenticated)
            {
                var user = User.Identity;
                var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(contextWEB));
                var s = UserManager.GetRoles(user.GetUserId());
                if (s[0].ToString() == "Admin")
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return false;
        }
        //*/!
    }
}