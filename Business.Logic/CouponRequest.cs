using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Logic
{
    public class CouponRequest:IModel
    {
        public int CouponRequestID;
        public int CompanyID;
        public int AffiliateID;
        public int CampaignID;
        public string Status;
    }
}
