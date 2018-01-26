using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AssessmentCenterWEB.Areas.Administrateur.Models
{
    public class EntiteView : IValidatableObject
    {
        public EntiteView()
        {
            this.At = DateTime.Today;
        }
        public System.DateTime At { get; set; }
        [Required]
        public string Code { get; set; }
        [Required]
        public string Nom { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            throw new NotImplementedException();
        }
    }
}