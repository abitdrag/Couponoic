using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Logic
{
    public class Campaign : IModel
    {
        public int CampaignID;
        public int CompanyID;
        public int CategoryID;
        public int NumberOfCoupons;
        public String Name;
        public String Type;
        public DateTime StartDate;
        public DateTime EndDate;
        public DateTime DistributionStartDate;
        public int BaseValue;
        public int BenefitValue;
        public double DiscountValue;
        public String ImagePath;
        public String Description;
    }
}
