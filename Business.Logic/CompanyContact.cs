using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Logic
{
    public class CompanyContact:IModel
    {
        public int CompanyContactID, CompanyID;
        public string CoverPhoto, AboutMe, Phone1, Phone2, Phone3, Email1, Email2, Email3, Name1, Name2, Name3;
    }
}
