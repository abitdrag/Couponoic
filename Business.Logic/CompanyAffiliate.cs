using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Logic
{
    public class CompanyAffiliate:IModel
    {
        public int ID, CompanyID, AffiliateID;
        public String Status;
    }
}
