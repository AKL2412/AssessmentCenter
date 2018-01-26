using System;
using AssessmentCenterWEB.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AssessmentCenterWEBTEST
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestContextDefault()
        {
            ApplicationDbContext context = new ApplicationDbContext();

        }
    }
}
