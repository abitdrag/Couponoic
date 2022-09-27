using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using DataAccess;
using System.Web.SessionState;
using System.Web;

namespace Business.Logic
{
    public class CampaignLogic : ILogic<Campaign>
    {
        public int Insert(Campaign objCampaign)
        {
            string query;

            HttpContext.Current.Session["CompanyID"] = objCampaign.CompanyID;
            HttpContext.Current.Session["CampaignName"] = objCampaign.Name;

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", objCampaign.CompanyID));
            lstParams.Add(new SqlParameter("@CategoryID", objCampaign.CategoryID));
            lstParams.Add(new SqlParameter("@NumberOfCoupons", objCampaign.NumberOfCoupons));
            lstParams.Add(new SqlParameter("@Name", objCampaign.Name));
            lstParams.Add(new SqlParameter("@StartDate", objCampaign.StartDate));
            lstParams.Add(new SqlParameter("@EndDate", objCampaign.EndDate));
            lstParams.Add(new SqlParameter("@Type", objCampaign.Type));
            lstParams.Add(new SqlParameter("@DistributionStartDate", objCampaign.DistributionStartDate));
            lstParams.Add(new SqlParameter("@BaseValue", objCampaign.BaseValue));
            lstParams.Add(new SqlParameter("@DiscountValue", objCampaign.DiscountValue));
            lstParams.Add(new SqlParameter("@BenefitValue", objCampaign.BenefitValue));
            lstParams.Add(new SqlParameter("@ImagePath", objCampaign.ImagePath));
            lstParams.Add(new SqlParameter("@Description", objCampaign.Description));


            query = "insert into Campaign (CompanyID, CategoryID, Name, Type, StartDate, EndDate, DistributionStartDate, NumberOfCoupons, BaseValue, DiscountValue, BenefitValue, ImagePath,Description) values (@CompanyID, @CategoryID, @Name, @Type, @StartDate, @EndDate, @DistributionStartDate, @NumberOfCoupons, @BaseValue, @DiscountValue, @BenefitValue, @ImagePath,@Description); select @@IDENTITY";


            DataTable dt = DBUtility.SelectData(query, lstParams);
            return Convert.ToInt32(dt.Rows[0][0]);
        }

        public int Update(Campaign objCampaign)
        {
            string query = "update Campaign set Name = @Name,CategoryID = @CategoryID,CouponNumber = @CouponNumber,StartDate = @StartDate,EndDate = @EndDate,Type = @Type,DistributionStartDate = @DistributionStartDate,BaseValue = @BaseValue WHERE CampaignID = @CampaignID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", objCampaign.CompanyID));
            lstParams.Add(new SqlParameter("@CategoryID", objCampaign.CategoryID));
            lstParams.Add(new SqlParameter("@CouponNumber", objCampaign.NumberOfCoupons));
            lstParams.Add(new SqlParameter("@Name", objCampaign.Name));
            lstParams.Add(new SqlParameter("@StartDate", objCampaign.StartDate));
            lstParams.Add(new SqlParameter("@EndDate", objCampaign.EndDate));
            lstParams.Add(new SqlParameter("@Type", objCampaign.Type));
            lstParams.Add(new SqlParameter("@DistributionStartDate", objCampaign.DistributionStartDate));
            lstParams.Add(new SqlParameter("@BaseValue", objCampaign.BaseValue));
            lstParams.Add(new SqlParameter("@Description", objCampaign.Description));

            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int CampaignID)
        {
            string query = "delete Campaign WHERE CampaignID = @CampaignID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));

            for (int i = 0; i < new Campaign().NumberOfCoupons; i++)
            {
                new CouponLogic().Delete(CampaignID);
            }


            return DBUtility.ModifyData(query, lstParams);
        }

        public Campaign SelectByID(int CampaignID)
        {
            string query = "select * from Campaign WHERE CampaignID = @CampaignID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            Campaign objCampaign = new Campaign();
            if (dt.Rows.Count > 0)
            {
                objCampaign.Name = dt.Rows[0]["Name"].ToString();
                objCampaign.Type = dt.Rows[0]["Type"].ToString();
                objCampaign.NumberOfCoupons = Convert.ToInt32(dt.Rows[0]["NumberOfCoupons"]);
                objCampaign.BaseValue = Convert.ToInt32(dt.Rows[0]["BaseValue"]);
                objCampaign.StartDate = (DateTime)dt.Rows[0]["StartDate"];
                objCampaign.EndDate = (DateTime)dt.Rows[0]["EndDate"];
                objCampaign.DistributionStartDate = (DateTime)dt.Rows[0]["DistributionStartDate"];
                objCampaign.CampaignID = Convert.ToInt32(dt.Rows[0]["CampaignID"]);
                objCampaign.BaseValue = Convert.ToInt32(dt.Rows[0]["BaseValue"]);
                objCampaign.DiscountValue = Convert.ToDouble(dt.Rows[0]["DiscountValue"]);
                objCampaign.BenefitValue = Convert.ToInt32(dt.Rows[0]["BenefitValue"]);
                objCampaign.CompanyID = Convert.ToInt32(dt.Rows[0]["CompanyID"]);
                objCampaign.CategoryID = Convert.ToInt32(dt.Rows[0]["CategoryID"]);
                objCampaign.Description = dt.Rows[0]["Description"].ToString();
            }

            return objCampaign;
        }

        public DataTable SelectAll()
        {
            string query = "select * from Campaign";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable SearchByCompanyID(int ID)
        {
            string query = "select * from Campaign where CompanyID==CompanyID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", ID));
            return DBUtility.SelectData(query,lstParams);
        }

        public DataTable NonFollowerCampaigns(int ID)
        {
            string query = @"select CA.*,Category.Name as CategoryName, AU.Name AS 'CompanyName'
                            from Campaign CA
                                inner join AppUser AU ON AU.AppUserID = CA.CompanyID
                                inner join Category on Category.CategoryID=CA.CategoryID
                            where CA.CompanyID not in (select CompanyID 
                                                 from Follower 
                                                 where @ID=CustomerID)
                                   
                            order by EndDate";
            List<SqlParameter> lstParams=new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID",ID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable FollowerCampaigns(int ID)
        {
            string query = @"select CA.*,Category.Name as CategoryName, AU.Name AS 'CompanyName'
                            from Campaign CA
                                inner join AppUser AU ON AU.AppUserID = CA.CompanyID
                                inner join Category ON Category.CategoryID=CA.CategoryID
                            where (CA.CompanyID in (select CompanyID 
                                                 from Follower 
                                                 where @ID=CustomerID) 
                                                 )
                             order by EndDate";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", ID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ViewAll()
        {
            string query = @"select CA.*, Category.Name as CategoryName, AU.Name AS 'CompanyName'
                            from Campaign CA
                                inner join AppUser AU ON AU.AppUserID = CA.CompanyID
                                inner join Category on CA.CategoryID=Category.CategoryID
                             order by EndDate";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ListAllAffiliateCampaigns(int AffiliateID)
        {
            string query = @"SELECT Category.Name as CategoryName, Campaign.*, AppUser.Name AS CompanyName,AppUser.AppUserID AS CompanyID
                             FROM Campaign INNER JOIN AppUser ON
                             Campaign.CompanyID=AppUser.AppUserID
                             INNER JOIN Category ON 
                             Campaign.CategoryID=Category.CategoryID
                             WHERE AppUser.AppUserID IN (SELECT CompanyID 
                                                         FROM CompanyAffiliate 
                                                         WHERE AffiliateID=@AffiliateID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("AffiliateID",AffiliateID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ListNonAffiliateCampaigns(int AffiliateID)
        {
            string query = @"SELECT Category.Name as CategoryName, Campaign.*, AppUser.Name AS CompanyName
                             FROM Campaign INNER JOIN AppUser ON
                             Campaign.CompanyID=AppUser.AppUserID
                             INNER JOIN Category ON 
                             Campaign.CategoryID=Category.CategoryID
                             WHERE AppUser.AppUserID NOT IN (SELECT CompanyID 
                                                         FROM CompanyAffiliate 
                                                         WHERE AffiliateID=@AffiliateID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("AffiliateID",AffiliateID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable SearchByName(String name)
        {
            string query = "select * from Campaign WHERE name like '%' + Name + '%'";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Name", name));

            return DBUtility.SelectData(query, lstParams);


        }

        public int RetrievMaxCampaignID()
        {
            String query = "select * from Campaign where CampaignID=(select max(CampaignID) from Campaign)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            DataTable dt = DBUtility.SelectData(query, lstParams);
            int x = Convert.ToInt32(dt.Rows[0]["CampaignID"]);
            return x;

        }

        public int GenerateCoupons(int CampaignID)
        {
            Coupon coupon = new Coupon();
            Campaign campaign = SelectByID(CampaignID);
            
            for (int i = 0; i < campaign.NumberOfCoupons; i++)
            {
                coupon.CampaignID = CampaignID;
                coupon.AffiliateID = 0;
                coupon.CustomerID = 0;
                coupon.FranchiseeID = 0;
                coupon.CouponCode = (CouponLogic.generateCode(CampaignID,i)).ToString();
                coupon.Status = "Company";
                coupon.AffiliateTime = DateTime.Now;
                coupon.CustomerTime = DateTime.Now;
                coupon.FranchiseeTime = DateTime.Now;
                new CouponLogic().Insert(coupon);
            }
            return campaign.NumberOfCoupons;
        }

        public int DistributeToAffiliate(int AffiliateID, int NOC, int CampaignID)
        {
            //select all coupon objects with affiliateid=0
            string s1 = "select * from Coupon where (AffiliateID = 0) AND (CampaignID = @CampaignID) AND (Status='Company')";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));
            DataTable dt = DBUtility.SelectData(s1, lstParams);

            if (NOC <= dt.Rows.Count)
            {
                for (int i = 0; i < NOC; i++)
                {
                    Coupon c = new CouponLogic().SelectByID(Convert.ToInt32(dt.Rows[i]["CouponID"]));
                    c.CouponID = Convert.ToInt32(dt.Rows[i]["CouponID"]);
                    c.AffiliateID = AffiliateID;
                    c.AffiliateTime = DateTime.Now;
                    c.Status = "Affiliate";
                    new CouponLogic().Update(c);
                }
                return -1;
            }
            else
            {
                return dt.Rows.Count;
            }
        }

        public DataTable FilterByCategory(int CategoryID,int CompanyID)
        {
            string query = @"select CA.*, Category.Name as CategoryName, AU.Name AS 'CompanyName'
                            from Campaign CA
                                inner join AppUser AU ON AU.AppUserID = CA.CompanyID
                                inner join Category on CA.CategoryID=Category.CategoryID 
                                where CA.CategoryID=@CategoryID and CA.CompanyID=@CompanyID OR CA.CategoryID=@CategoryID OR CA.CompanyID=@CompanyID
                                order by CA.EndDate";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("CategoryID",CategoryID));
            lstParams.Add(new SqlParameter("CompanyID", CompanyID));

            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable TrackMyAllCoupons(int CampaignID)
        {
            string query = @"SELECT        Coupon.CouponID, Coupon.CampaignID, Coupon.CouponCode, Coupon.AffiliateID, Coupon.CustomerID, Coupon.FranchiseeID, Coupon.Status, Coupon.AffiliateTime, Coupon.CustomerTime, 
                         Coupon.FranchiseeTime, derivedtbl_1.AffiliateName, derivedtbl_2.CustomerName, derivedtbl_3.FranchiseeName
FROM            Coupon LEFT OUTER JOIN
                             (SELECT        Name AS AffiliateName, AppUserID AS af1
                               FROM            AppUser) AS derivedtbl_1 ON derivedtbl_1.af1 = Coupon.AffiliateID LEFT OUTER JOIN
                             (SELECT        Name AS CustomerName, AppUserID AS ac1
                               FROM            AppUser AS AppUser_1) AS derivedtbl_2 ON derivedtbl_2.ac1 = Coupon.CustomerID LEFT OUTER JOIN
                             (SELECT        Name AS FranchiseeName, AppUserID AS afr1
                               FROM            AppUser AS AppUser_2) AS derivedtbl_3 ON derivedtbl_3.afr1 = Coupon.FranchiseeID
WHERE        (Coupon.CampaignID = @CampaignID)";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("CampaignID", CampaignID));
            
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable Franchisee_CouponDetails(int CouponID)
        {
            string query = @"SELECT        Coupon.CouponID, Coupon.CampaignID, Coupon.CouponCode, Coupon.AffiliateID, Coupon.CustomerID, Coupon.FranchiseeID, Coupon.Status, Coupon.AffiliateTime, Coupon.CustomerTime, 
                         Coupon.FranchiseeTime, derivedtbl_1.AffiliateName, derivedtbl_2.CustomerName, derivedtbl_3.FranchiseeName, Campaign.Name, Campaign.StartDate, Campaign.EndDate, Campaign.Type, 
                         Campaign.BaseValue, Campaign.DiscountValue, Campaign.BenefitValue
FROM            Coupon LEFT OUTER JOIN
                             (SELECT        Name AS AffiliateName, AppUserID AS af1
                               FROM            AppUser) AS derivedtbl_1 ON derivedtbl_1.af1 = Coupon.AffiliateID LEFT OUTER JOIN
                             (SELECT        Name AS CustomerName, AppUserID AS ac1
                               FROM            AppUser AS AppUser_1) AS derivedtbl_2 ON derivedtbl_2.ac1 = Coupon.CustomerID LEFT OUTER JOIN
                             (SELECT        Name AS FranchiseeName, AppUserID AS afr1
                               FROM            AppUser AS AppUser_2) AS derivedtbl_3 ON derivedtbl_3.afr1 = Coupon.FranchiseeID INNER JOIN
                         Campaign ON Coupon.CampaignID = Campaign.CampaignID
WHERE        (Coupon.CouponID = @CouponID)";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("CouponID", CouponID));

            return DBUtility.SelectData(query, lstParams);
        }
    }
}
