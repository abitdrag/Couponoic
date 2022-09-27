using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using DataAccess;
using System.Web;

namespace Business.Logic
{
    public class CouponLogic : ILogic<Coupon>
    {
        static double CouponCode = 999999999;
        public int Insert(Coupon objCoupon)
        {
            
            string query = "insert Coupon values (@CampaignID,@CouponCode,@AffiliateID,@CustomerID,@FranchiseeID,@Status,@AffiliateTime,@CustomerTime,@FranchiseeTime)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            
            
            lstParams.Add(new SqlParameter("@CampaignID", objCoupon.CampaignID));
           
            lstParams.Add(new SqlParameter("@AffiliateID", objCoupon.AffiliateID));
            lstParams.Add(new SqlParameter("@CustomerID", objCoupon.CustomerID));
            lstParams.Add(new SqlParameter("@FranchiseeID", objCoupon.FranchiseeID));
            lstParams.Add(new SqlParameter("@Status",objCoupon.Status));
            lstParams.Add(new SqlParameter("@CouponCode", objCoupon.CouponCode));
            lstParams.Add(new SqlParameter("@AffiliateTime", objCoupon.AffiliateTime));
            lstParams.Add(new SqlParameter("@CustomerTime", objCoupon.CustomerTime));
            lstParams.Add(new SqlParameter("@FranchiseeTime", objCoupon.FranchiseeTime));
            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int CampaignID)
        {
            string query = "delete Coupon WHERE CampaignID = @CampaignID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public Coupon SelectByID(int CouponID)
        {
            string query = "select * from Coupon WHERE CouponID = @CouponID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CouponID", CouponID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            Coupon objCoupon = new Coupon();
            if (dt.Rows.Count > 0)
            {
                objCoupon.CampaignID = Convert.ToInt32(dt.Rows[0]["CampaignID"].ToString());
                objCoupon.AffiliateID = Convert.ToInt32(dt.Rows[0]["AffiliateID"].ToString());
                objCoupon.CustomerID = Convert.ToInt32(dt.Rows[0]["CustomerID"].ToString());
                objCoupon.FranchiseeID = Convert.ToInt32(dt.Rows[0]["FranchiseeID"].ToString());
                objCoupon.AffiliateTime = (DateTime)(dt.Rows[0]["AffiliateTime"]);
                objCoupon.CustomerTime = (DateTime)(dt.Rows[0]["CustomerTime"]);
                objCoupon.FranchiseeTime = (DateTime)(dt.Rows[0]["FranchiseeTime"]);
                objCoupon.CouponCode=dt.Rows[0]["CouponCode"].ToString();
                objCoupon.Status = dt.Rows[0]["Status"].ToString();
                objCoupon.CouponID=Convert.ToInt32(dt.Rows[0]["CouponID"].ToString());
            }

            return objCoupon;
            throw new NotImplementedException();
        }

        public DataTable SelectAll()
        {
            string query = "select * from Coupon";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public int Update(Coupon objCoupon)
        {
            string query = "update Coupon set CampaignID=@CampaignID, CouponCode=@CouponCode, AffiliateID=@AffiliateID, CustomerID=@CustomerID, FranchiseeID=@FranchiseeID, Status=@Status, AffiliateTime=@AffiliateTime, CustomerTime=@CustomerTime, FranchiseeTime=@FranchiseeTime WHERE CouponID = @CouponID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", objCoupon.CampaignID));
            lstParams.Add(new SqlParameter("@CouponCode", objCoupon.CouponCode));
            lstParams.Add(new SqlParameter("@AffiliateID", objCoupon.AffiliateID));
            lstParams.Add(new SqlParameter("@CustomerID", objCoupon.CustomerID));
            lstParams.Add(new SqlParameter("@FranchiseeID", objCoupon.FranchiseeID));
            lstParams.Add(new SqlParameter("@Status", objCoupon.Status));
            lstParams.Add(new SqlParameter("@AffiliateTime", objCoupon.AffiliateTime));
            lstParams.Add(new SqlParameter("@CustomerTime", objCoupon.CustomerTime));
            lstParams.Add(new SqlParameter("@FranchiseeTime", objCoupon.FranchiseeTime));
            lstParams.Add(new SqlParameter("@CouponID", objCoupon.CouponID));
            return DBUtility.ModifyData(query, lstParams);
        }

        
        public static string generateCode(int CampaignID, int SerialNum)
        {
            int y = DateTime.Now.Year;
            String s = y + "-" + CampaignID + "-" + SerialNum;
            return s;
        }

        public DataTable MyCoupons(int UID)
        {
            string query = @"SELECT Coupon.*, Campaign.Name,Campaign.ImagePath As Logo,Campaign.EndDate,Campaign.Description, AppUser.Name AS CompanyName, AppUserID As CompanyID
                                    FROM  Coupon INNER JOIN
                                                 Campaign ON Coupon.CampaignID = Campaign.CampaignID 
                                                 INNER JOIN
                                                 AppUser ON Campaign.CompanyID = AppUser.AppUserID
                                    WHERE (Coupon.CustomerID=@UID) 
                                    AND (Campaign.EndDate > GETDATE())
                                    AND Coupon.Status like 'Customer'";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("UID", UID));
            return DBUtility.SelectData(query,lstParams);
        }

        public DataTable AllCoupons(int UID)
        {
            string query = @"SELECT Coupon.*, Campaign.Name,Campaign.EndDate,Campaign.Description,Campaign.ImagePath, AppUser.Name AS CompanyName
                                    FROM  Coupon INNER JOIN
                                                 Campaign ON Coupon.CampaignID = Campaign.CampaignID 
                                                 INNER JOIN
                                                 AppUser ON Campaign.CompanyID = AppUser.AppUserID
                                    WHERE (Coupon.CustomerID=@UID) ORDER BY Campaign.EndDate DESC";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("UID", UID));
            return DBUtility.SelectData(query, lstParams);
        }

        public void BuyCoupons(int CustomerID, int CampaignID, int AffiliateID, int NOC)
        {
            string s1 = "select * from Coupon where (AffiliateID = @AffiliateID) AND (CampaignID = @CampaignID) AND (CustomerID=0)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));
            lstParams.Add(new SqlParameter("@AffiliateID", AffiliateID));

            DataTable dt = DBUtility.SelectData(s1, lstParams);

            for (int i = 0; i < NOC; i++)
            {
                Coupon c = new CouponLogic().SelectByID(Convert.ToInt32(dt.Rows[i]["CouponID"]));
                c.CouponID = Convert.ToInt32(dt.Rows[i]["CouponID"]);
                c.CustomerID = CustomerID;
                c.CustomerTime = DateTime.Now;
                c.Status = "CustomerPending";
                new CouponLogic().Update(c);

            }

        }

        public DataTable DisplayAffiliateWallet(int AffiliateID)
        {
            string query = @"select Category.Name as CategoryName, Campaign.*,AppUser.Name as CompanyName 
                            from Campaign 
                            inner join AppUser on Campaign.CompanyID=AppUser.AppUserID 
                            inner join Category on Category.CategoryID=Campaign.CategoryID
                            where Campaign.CampaignID in (select CampaignID 
                                                          from Coupon 
                                                          where AffiliateID=@AffiliateID)";//and EndDate>GetDate()

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AffiliateID", AffiliateID));

            return DBUtility.SelectData(query, lstParams);


        }

        public DataTable NumberOfRows(int AffiliateID, int CampaignID)
        {

            string query = "select * from Coupon where CampaignID=@CampaignID and AffiliateID=@AffiliateID and CustomerID=0";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AffiliateID", AffiliateID));
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));

            return DBUtility.SelectData(query, lstParams);


        }

        public DataTable DisplayCouponRequests(int ID)
        {
            string query = @"SELECT Coupon.*, Campaign.Name,Campaign.EndDate, AppUser.Name AS CustomerName,AppUser.Photo
                                    FROM  Coupon INNER JOIN
                                                 Campaign ON Coupon.CampaignID = Campaign.CampaignID 
                                                 INNER JOIN
                                                 AppUser ON Coupon.CustomerID = AppUser.AppUserID
                                    WHERE (Coupon.AffiliateID=@ID) 
                                    AND (Coupon.Status='CustomerPending')
                                    ";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("ID",ID));
            return DBUtility.SelectData(query, lstParams);
        }

        public void ApproveCouponRequest(int CouponID)
        {
            Coupon c=new CouponLogic().SelectByID(CouponID);
            c.CouponID = CouponID;
            c.Status = "Customer";
            c.CustomerTime = DateTime.Now;

            new CouponLogic().Update(c);
        }

        public void DeleteCouponRequest(int CouponID)
        {
            Coupon c = new CouponLogic().SelectByID(CouponID);
            c.CouponID = CouponID;
            c.Status = "Affiliate";
            c.CustomerID = 0;
            new CouponLogic().Update(c);
        }

        public DataTable SelectByCode(string Code)
        {
            string query = @"select Coupon.CouponCode,Coupon.CouponID,AppUser.Name as CustomerName, AppUser.Mobile,AppUser.Email,Campaign.Name as CampaignName
                             from 
                             Coupon inner join AppUser 
                             on Coupon.CustomerID=AppUser.AppUserID
                             inner join Campaign 
                             on Coupon.CampaignID=Campaign.CampaignID 
                                where CouponCode=@Code
                                AND Coupon.Status='Customer'";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("Code", Code));

            return DBUtility.SelectData(query, lstParams);
        }

        public void RedeemCoupon(int ID,int FranchiseeID)
        {
            Coupon c=SelectByID(ID);
            c.FranchiseeID = FranchiseeID;
            c.Status = "Franchisee";
            c.CouponID = ID;
            c.FranchiseeTime = DateTime.Now;
            new CouponLogic().Update(c);
        }

        public DataTable ViewAcceptedCoupons(int FranchiseeID)
        {
            string query = @" SELECT * 
                              FROM Coupon inner join Campaign 
                              ON Coupon.CampaignID=Campaign.CampaignID
                              where Coupon.FranchiseeID=@FranchiseeID AND Coupon.Status='Franchisee'";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("FranchiseeID", FranchiseeID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable DisplayCoupons(int AffiliateID, int CampaignID)
        {
            string query = "select Campaign.*,CompanyAffiliate.*,AppUser.*,AppUser.Name as CompanyName from Campaign inner join AppUser on Campaign.CompanyID=AppUser.AppUserID inner join CompanyAffiliate on CompanyAffiliate.CompanyID=Campaign.CompanyID where Campaign.CampaignID=@CampaignID and CompanyAffiliate.AffiliateID=@AffiliateID";// and EndDate>GetDate()

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AffiliateID", AffiliateID));
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));
            return DBUtility.SelectData(query, lstParams);



        }

        public int GetIDFromCouponCode(String CouponCode)
        {
            string query = "select * from Coupon WHERE CouponCode = @CouponCode";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CouponCode", CouponCode));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            return Convert.ToInt32(dt.Rows[0]["CouponID"].ToString());
        }
        
    }
}
