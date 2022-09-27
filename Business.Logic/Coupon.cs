using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Logic
{
    public class Coupon : IModel
    {
        public int CouponID;
        public int CampaignID;
        public int AffiliateID;
        public int CustomerID;
        public int FranchiseeID;
        public String CouponCode;
        public String Status;
        public DateTime AffiliateTime;
        public DateTime CustomerTime;
        public DateTime FranchiseeTime;
    }
}
