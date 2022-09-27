using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using DataAccess;


namespace Business.Logic
{
    public class AppUserLogic:ILogic<AppUser>
    {

        public int Insert(AppUser objAppUser)
        {
            string query = "insert AppUser values (@Name, @Address,@City,@State,@Email,@Mobile,@Username,@Password,@Type,@LastLoginTime,@LoginCount,@Photo,@ThumbnailPhoto,@Status,@CompanyID,@RegistrationTime,@PayPalAccount, @LastShakeTime, @FranchiseeVisibilityMode); select @@IDENTITY";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Name", objAppUser.Name));
            lstParams.Add(new SqlParameter("@Address", objAppUser.Address));
            lstParams.Add(new SqlParameter("@City", objAppUser.City));
            lstParams.Add(new SqlParameter("@State", objAppUser.State));
            lstParams.Add(new SqlParameter("@Email", objAppUser.Email));
            lstParams.Add(new SqlParameter("@Mobile", objAppUser.Mobile));
            lstParams.Add(new SqlParameter("@Username", objAppUser.Username));
            lstParams.Add(new SqlParameter("@Password", objAppUser.Password));
            lstParams.Add(new SqlParameter("@Type", objAppUser.Type));
            lstParams.Add(new SqlParameter("@LastLoginTime", objAppUser.LastLoginTime));
            lstParams.Add(new SqlParameter("@LoginCount", objAppUser.LoginCount));
            lstParams.Add(new SqlParameter("@Photo", objAppUser.Photo));
            lstParams.Add(new SqlParameter("@ThumbnailPhoto", objAppUser.ThumbnailPhoto));
            lstParams.Add(new SqlParameter("@Status", objAppUser.Status));
            lstParams.Add(new SqlParameter("@CompanyID", objAppUser.CompanyID));
            lstParams.Add(new SqlParameter("@RegistrationTime", objAppUser.RegistrationTime));
            lstParams.Add(new SqlParameter("@PayPalAccount", objAppUser.PayPalAccount));
            lstParams.Add(new SqlParameter("@LastShakeTime", objAppUser.LastShakeTime));
            lstParams.Add(new SqlParameter("@FranchiseeVisibilityMode", objAppUser.FranchiseeVisibilityMode));
            DataTable dt = DBUtility.SelectData(query, lstParams);
            if (objAppUser.Type.Equals("Company"))
            {
                //insert an object of company contact for that company
                CompanyContact cc = new CompanyContact();
                cc.CoverPhoto = "Not Available";
                cc.AboutMe = "NA";
                cc.Phone1 = cc.Phone2 = cc.Phone3 = cc.Email1 = cc.Email2 = cc.Email3 = cc.Name1 = cc.Name2 = cc.Name3 = "Not Available";
                cc.CompanyID = Convert.ToInt32(dt.Rows[0][0]);
                new CompanyContactLogic().Insert(cc);
            }

            return 1;
        }

        public int Update(AppUser objAppUser)
        {
            string query = "update AppUser set Name = @Name, Address = @Address, City = @City, State = @State, Email = @Email, Mobile = @Mobile, Username = @Username, Password = @Password, Type = @Type, Photo = @Photo, ThumbnailPhoto = @ThumbnailPhoto, Status = @Status, CompanyID = @CompanyID, PayPalAccount = @PayPalAccount, LastLoginTime=@LastLoginTime, LoginCount=@LoginCount, LastShakeTime=@LastShakeTime, FranchiseeVisibilityMode=@FranchiseeVisibilityMode WHERE AppUserID = @AppUserID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Name", objAppUser.Name));
            lstParams.Add(new SqlParameter("@Address", objAppUser.Address));
            lstParams.Add(new SqlParameter("@City", objAppUser.City));
            lstParams.Add(new SqlParameter("@State", objAppUser.State));
            lstParams.Add(new SqlParameter("@Email", objAppUser.Email));
            lstParams.Add(new SqlParameter("@Mobile", objAppUser.Mobile));
            lstParams.Add(new SqlParameter("@Username", objAppUser.Username));
            lstParams.Add(new SqlParameter("@Password", objAppUser.Password));
            lstParams.Add(new SqlParameter("@Type", objAppUser.Type));
            lstParams.Add(new SqlParameter("@Photo", objAppUser.Photo));
            lstParams.Add(new SqlParameter("@ThumbnailPhoto", objAppUser.ThumbnailPhoto));
            lstParams.Add(new SqlParameter("@Status", objAppUser.Status));
            lstParams.Add(new SqlParameter("@CompanyID", objAppUser.CompanyID));
            lstParams.Add(new SqlParameter("@RegistrationTime", objAppUser.RegistrationTime));
            lstParams.Add(new SqlParameter("@PayPalAccount", objAppUser.PayPalAccount));
            lstParams.Add(new SqlParameter("@AppUserID", objAppUser.AppUserID));
            lstParams.Add(new SqlParameter("@LoginCount", objAppUser.LoginCount));
            lstParams.Add(new SqlParameter("@LastLoginTime", objAppUser.LastLoginTime));
            lstParams.Add(new SqlParameter("@LastShakeTime", objAppUser.LastShakeTime));
            lstParams.Add(new SqlParameter("@FranchiseeVisibilityMode", objAppUser.FranchiseeVisibilityMode));
            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int AppUserID)
        {
            string query = "delete AppUser WHERE AppUserID = @AppUserID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AppUserID", AppUserID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public AppUser SelectByID(int AppUserID)
        {
            string query = "select * from AppUser WHERE AppUserID = @AppUserID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AppUserID", AppUserID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            AppUser objAppUser = new AppUser();
            if (dt.Rows.Count > 0)
            {
                objAppUser.Name = dt.Rows[0]["Name"].ToString();
                objAppUser.Address = dt.Rows[0]["Address"].ToString();
                objAppUser.City = dt.Rows[0]["City"].ToString();
                objAppUser.State= dt.Rows[0]["State"].ToString();
                objAppUser.Email= dt.Rows[0]["Email"].ToString();
                objAppUser.Mobile= dt.Rows[0]["Mobile"].ToString();
                objAppUser.Username= dt.Rows[0]["Username"].ToString();
                objAppUser.Password= dt.Rows[0]["Password"].ToString();
                objAppUser.Type= dt.Rows[0]["Type"].ToString();
                objAppUser.LastLoginTime= (DateTime)(dt.Rows[0]["LastLoginTime"]);
                objAppUser.LoginCount= Convert.ToInt32(dt.Rows[0]["LoginCount"]);
                objAppUser.Photo= dt.Rows[0]["Photo"].ToString();
                objAppUser.ThumbnailPhoto= dt.Rows[0]["ThumbnailPhoto"].ToString();
                objAppUser.Status= dt.Rows[0]["Status"].ToString();
                objAppUser.CompanyID= Convert.ToInt32(dt.Rows[0]["CompanyID"]);
                objAppUser.RegistrationTime= (DateTime)(dt.Rows[0]["RegistrationTime"]);
                objAppUser.PayPalAccount = dt.Rows[0]["PayPalAccount"].ToString();
                objAppUser.AppUserID = Convert.ToInt32(dt.Rows[0]["AppUserID"]);
                objAppUser.LastShakeTime = (DateTime)(dt.Rows[0]["LastShakeTime"]);
                objAppUser.FranchiseeVisibilityMode = Convert.ToInt32(dt.Rows[0]["FranchiseeVisibilityMode"]);
            }

            return objAppUser;
        }

        public DataTable SelectAll()
        {
            string query = "select * from AppUser where Name<>'Admin' order by Name";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public int Login(String Username, String Password)
        {
            string query = "select * from AppUser where Username=@Username and Password=@Password";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Username", Username));
            lstParams.Add(new SqlParameter("@Password", Password));
            DataTable dt = DBUtility.SelectData(query, lstParams);
            if (dt.Rows.Count>0)
            {
                int id = Convert.ToInt32(dt.Rows[0]["AppUserID"]);
                AppUser au = new AppUserLogic().SelectByID(id);
                au.LastLoginTime = DateTime.Now;
                au.LoginCount=au.LoginCount+1;
                int n=new AppUserLogic().Update(au);
                return id;
            }
            else
            {
                return 0;
            }
        }

        public DataTable Search(string name, string city, string role)
        {
            string query = @"select * from AppUser 
                                where Name like @name+'%'
                                AND City like @city + '%'
                                AND Type like @role + '%'
                                AND Type <> 'Admin'
                                order by Name";                        
//            //All criteria filled up
//            string query="";
//            if(!name.Equals("")&& city.Equals("")&& role.Equals(""))
//            {
//            query = @"select * from AppUser where 
//                                Name like  @name + '%' 
//                            AND City like @city+ '%'  
//                            AND (@role='ALL' OR   Type = @role)
//                            order by Name"     ;
//            }
//            else if (name.Equals("") && !city.Equals("") && !role.Equals(""))
//            { 
            
//            }
            List<SqlParameter> lstP = new List<SqlParameter>();
            lstP.Add(new SqlParameter("@name", name));
            lstP.Add(new SqlParameter("@city",city));
            lstP.Add(new SqlParameter("@role", role));

            return DBUtility.SelectData(query, lstP);
        }

        //public DataTable SearchByName(string name)
        //{
        //    string query = "select * from AppUser where Name like @name";

        //    List<SqlParameter> lstP = new List<SqlParameter>();
        //    lstP.Add(new SqlParameter("@name", name));
            
        //    return DBUtility.SelectData(query, lstP);
        //}

        //public DataTable SearchByCity(string city)
        //{
        //    string query = "select * from AppUser where City like @city";

        //    List<SqlParameter> lstP = new List<SqlParameter>();
        //    lstP.Add(new SqlParameter("@city", city));
            
        //    return DBUtility.SelectData(query, lstP);
        //}

        //public DataTable SearchByRole(string role)
        //{
        //    string query = "select * from AppUser where Type like @role";

        //    List<SqlParameter> lstP = new List<SqlParameter>();
        //    lstP.Add(new SqlParameter("@role", role));

        //    return DBUtility.SelectData(query, lstP);
        //}

        //public DataTable SearchNameCity(string name, string city)
        //{
        //    //All criteria filled up
        //    string query = "select * from AppUser where (Name like @name AND City like @city)";

        //    List<SqlParameter> lstP = new List<SqlParameter>();
        //    lstP.Add(new SqlParameter("@name", name));
        //    lstP.Add(new SqlParameter("@city", city));
            
        //    return DBUtility.SelectData(query, lstP);
        //}

        //public DataTable SearchNameRole(string name, string role)
        //{
        //   string query = "select * from AppUser where (Name like  @name AND Type like @role)";

        //    List<SqlParameter> lstP = new List<SqlParameter>();
        //    lstP.Add(new SqlParameter("@name", name));
        //    lstP.Add(new SqlParameter("@role", role));

        //    return DBUtility.SelectData(query, lstP);
        //}

        //public DataTable SearchCityRole(string city, string role)
        //{
        //    string query = "select * from AppUser where (City like @city AND Type like @role)";

        //    List<SqlParameter> lstP = new List<SqlParameter>();
        //    lstP.Add(new SqlParameter("@city", city));
        //    lstP.Add(new SqlParameter("@role", role));

        //    return DBUtility.SelectData(query, lstP);
        //}

        public int ApproveRequest(AppUser au, int AppUserID)
        {
            string query = "update AppUser set Status='approved' where AppUserID=@AppUserID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AppUserID", AppUserID));
            return DBUtility.ModifyData(query, lstParams);

        }

        public int ApproveAffiliateRequest(int AffiliateID, int CompanyID)
        {
            string query = "update CompanyAffiliate set Status='Approved' where CompanyID=@CompanyID and AffiliateID=@AffiliateID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            lstParams.Add(new SqlParameter("@AffiliateID", AffiliateID));
            return DBUtility.ModifyData(query, lstParams);

        }

        public int ApproveAffiliateRequest(AppUser au, int AppUserID)
        {
            string query = "update CompanyAffiliate set Status='approved' where AffiliateID=@AppUserID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AppUserID", AppUserID));
            return DBUtility.ModifyData(query, lstParams);

        }

        public DataTable DisplayRequests()
        {

            string query = "select * from AppUser where Status='pending' AND Type='Company'";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);


        }

        public DataTable DisplayCompanyRequests()
        {

            string query = "select * from AppUser where Status='pending' and Type='Company'";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);


        }

        public DataTable DisplayAffiliateRequests(int CompanyID)
        {

            string query = "SELECT CompanyAffiliate.CompanyAffiliateID, CompanyAffiliate.CompanyID, CompanyAffiliate.AffiliateID, CompanyAffiliate.Status, AppUser.AppUserID, AppUser.Name, AppUser.Address, AppUser.City, AppUser.State, AppUser.Email, AppUser.Mobile, AppUser.Username, AppUser.Password, AppUser.Type, AppUser.LastLoginTime, AppUser.LoginCount, AppUser.Photo, AppUser.ThumbnailPhoto, AppUser.Status AS Expr1, AppUser.CompanyID AS Expr2, AppUser.RegistrationTime, AppUser.PayPalAccount FROM CompanyAffiliate INNER JOIN AppUser ON CompanyAffiliate.AffiliateID = AppUser.AppUserID WHERE (CompanyAffiliate.CompanyID = @CompanyID) AND (CompanyAffiliate.Status = 'Pending')";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);


        }

        public int DeleteRequest(AppUser au, int AppUserID)
        {
            string query = "delete AppUser where AppUserID=@AppUserID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AppUserID", AppUserID));
            return DBUtility.ModifyData(query, lstParams);

        }

        public int DeleteAffiliateRequest(int AffiliateID, int CompanyID)
        {
            string query = "delete CompanyAffiliate where CompanyID=@CompanyID and AffiliateID=@AffiliateID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            lstParams.Add(new SqlParameter("@AffiliateID", AffiliateID));
            return DBUtility.ModifyData(query, lstParams);

        }


        public DataTable ListMyCampaigns(int CompanyID)
        {
            string query = @"select Category.Name as CategoryName, Campaign.* 
                            from 
                            Campaign inner join Category on Campaign.CategoryID=Category.CategoryID
                            where CompanyID=@CompanyID order by CampaignID DESC";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ListMyAffiliates(int CompanyID)
        {
            string query = "SELECT AppUser.AppUserID, AppUser.Name, AppUser.City, AppUser.Photo, AppUser.Mobile, AppUser.State, AppUser.Email, CompanyAffiliate.CompanyAffiliateID, CompanyAffiliate.CompanyID, CompanyAffiliate.AffiliateID FROM  AppUser INNER JOIN CompanyAffiliate ON AppUser.AppUserID = CompanyAffiliate.AffiliateID WHERE (CompanyAffiliate.CompanyID = @CompanyID and CompanyAffiliate.Status='Approved')";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);
        }

        //returns feedback of a company with customer(who gave feedback) details
        public DataTable ListAllFeedbacks(int CompanyID)
        {

            string query = "SELECT cf.ID, cf.CustomerID, cf.CompanyID, cf.Feedback, cf.Time, cf.Rating, AppUser.AppUserID, AppUser.Name, AppUser.Photo FROM CustomerFeedback AS cf INNER JOIN AppUser ON cf.CustomerID = AppUser.AppUserID where (cf.CompanyID = @CompanyID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);

        }

        public DataTable ListMyFranchisees(int CompanyID)
        {
            string query = "select * from AppUser where CompanyID=@CompanyID and Type='Franchisee'";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);
        }

        //returns affiliates for a campaign withNOC
        public DataTable ListMyAffiliatesWithNOC(int CompanyID, int CampaignID)
        {
            string query = "SELECT AppUser.AppUserID, AppUser.Name, AppUser.Address, AppUser.City, AppUser.State, AppUser.Email, AppUser.Mobile, AppUser.Username, AppUser.Password, AppUser.Type, AppUser.LastLoginTime, AppUser.LoginCount, AppUser.Photo, AppUser.ThumbnailPhoto, AppUser.Status, AppUser.CompanyID, AppUser.RegistrationTime, AppUser.PayPalAccount, Coupon.CampaignID, Coupon.AffiliateID, Coupon.Status AS CStatus, COUNT(Coupon.CouponID) AS NOC FROM AppUser INNER JOIN Coupon ON Coupon.AffiliateID = AppUser.AppUserID WHERE (AppUser.Type = 'Agent') AND (Coupon.Status = 'Affiliate') AND (Coupon.CampaignID = @CampaignID) GROUP BY AppUser.AppUserID, AppUser.Name, AppUser.Address, AppUser.City, AppUser.State, AppUser.Email, AppUser.Mobile, AppUser.Username, AppUser.Password, AppUser.Type, AppUser.LastLoginTime, AppUser.LoginCount, AppUser.Photo, AppUser.ThumbnailPhoto, AppUser.Status, AppUser.CompanyID, AppUser.RegistrationTime, AppUser.PayPalAccount, Coupon.AffiliateID, Coupon.CampaignID, Coupon.Status";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ViewAffiliates(int ID, int CampaignID, string City)
        {
            AppUser au = SelectByID(ID);
           
            string query = @"select * 
                            from AppUser 
                            where AppUserID in (select DISTINCT AffiliateID 
                                                from Coupon 
                                                where CampaignID=@CampaignID 
                                                AND AffiliateID <>0 
                                                AND CustomerID=0)
                            AND City like @City+'%'";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID",CampaignID));
            lstParams.Add(new SqlParameter("@City", City));
            DataTable dt = DBUtility.SelectData(query, lstParams);

            return dt;
            
            
        }

        public DataTable ListAllCompanies()
        {
            string query = "select * from AppUser where Type='Company'";
            List<SqlParameter> lstParams = new List<SqlParameter>();

            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ListAllCampaigns()
        {

            string query = "select * from Campaign";
            List<SqlParameter> lstParams = new List<SqlParameter>();

            return DBUtility.SelectData(query, lstParams);

        }

        public DataTable DisplayCompanies(int AffiliateID)
        {
            string query = "select * from AppUser where Type='Company' and AppUserID not in (select CompanyID from CompanyAffiliate where AffiliateID=@AffiliateID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@AffiliateID", AffiliateID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable Customer_MyWallet(int CustomerID)
        {
            string query = @"SELECT        Coupon.CouponID, Coupon.CampaignID, Coupon.CouponCode, Coupon.CustomerID, Coupon.Status, Campaign.Name AS CampaignName, 
                         Campaign.Type AS CampaignType, Campaign.StartDate, Campaign.EndDate, Campaign.DistributionStartDate, Campaign.BaseValue, Campaign.DiscountValue, 
                         Campaign.BenefitValue, Campaign.ImagePath, AppUser.Name AS CompanyName
                         FROM  Coupon INNER JOIN
                         Campaign ON Coupon.CampaignID = Campaign.CampaignID INNER JOIN
                         AppUser ON Campaign.CompanyID = AppUser.AppUserID
                         WHERE  (Coupon.CustomerID = @CustomerID) AND (Coupon.Status = 'Customer')";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CustomerID", CustomerID));
            return DBUtility.SelectData(query, lstParams);
        }


        public DataTable Customer_CouponDetails(int CouponID)
        {
            string query = @"SELECT Coupon.CampaignID, Coupon.CouponCode, Coupon.AffiliateID, Coupon.CustomerID, Coupon.Status, Campaign.CompanyID, Campaign.Name, Campaign.Type, 
                         Campaign.StartDate, Campaign.EndDate, Campaign.DistributionStartDate, Campaign.BaseValue, Campaign.DiscountValue, Campaign.BenefitValue, 
                         Campaign.ImagePath, AppUser.Name AS CompanyName, Coupon.CouponID
                         FROM Coupon INNER JOIN
                         Campaign ON Coupon.CampaignID = Campaign.CampaignID INNER JOIN
                         AppUser ON Campaign.CompanyID = AppUser.AppUserID
                         WHERE (Coupon.CouponID = @CouponID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CouponID", CouponID));
            return DBUtility.SelectData(query, lstParams);
        }


        public DataTable ListMyVisibleFranchisees(int CompanyID)
        {
            string query = "select * from AppUser where CompanyID=@CompanyID and Type='Franchisee' and FranchiseeVisibilityMode='1'";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ListMyAffiliates(int CompanyID, string City)
        {
            string query = @"SELECT AppUser.AppUserID, AppUser.Name, AppUser.City, AppUser.Photo, AppUser.Mobile, AppUser.State, AppUser.Email, CompanyAffiliate.CompanyAffiliateID, 
                            CompanyAffiliate.CompanyID, CompanyAffiliate.AffiliateID
                            FROM AppUser INNER JOIN
                            CompanyAffiliate ON AppUser.AppUserID = CompanyAffiliate.AffiliateID
                            WHERE (CompanyAffiliate.CompanyID = @CompanyID) AND (CompanyAffiliate.Status = 'Approved') AND (AppUser.City = @City)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            lstParams.Add(new SqlParameter("@City", City));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ListCitiesOfMyAffiliates(int CompanyID)
        {
            string query = @"SELECT DISTINCT City
                            FROM AppUser
                            WHERE (AppUserID IN
                            (SELECT AffiliateID
                            FROM CompanyAffiliate
                            WHERE (CompanyID = @CompanyID) AND (Status = 'Approved')))";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);
        }

        public int[] ReportOfCampaign(int CampaignID, int CompanyID)
        {
            int[] result=new int[4];

            String qc = @"SELECT COUNT(CouponID) AS CompanyCoupons
                            FROM Coupon
                            WHERE (CampaignID = @CampaignID) AND (Status = 'Company')";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));
            result[0]=Convert.ToInt32(DBUtility.SelectData(qc, lstParams).Rows[0]["CompanyCoupons"]);

            String qa = @"SELECT COUNT(CouponID) AS AffiliateCoupons
                            FROM Coupon
                            WHERE (CampaignID = @CampaignID) AND (Status = 'Affiliate')";
            List<SqlParameter> lstParams1 = new List<SqlParameter>();
            lstParams1.Add(new SqlParameter("@CampaignID", CampaignID));
            result[1] = Convert.ToInt32(DBUtility.SelectData(qa, lstParams1).Rows[0]["AffiliateCoupons"]);

            String qcu = @"SELECT COUNT(CouponID) AS CustomerCoupons
                            FROM Coupon
                            WHERE (CampaignID = @CampaignID) AND (Status = 'Customer')";
            List<SqlParameter> lstParams2 = new List<SqlParameter>();
            lstParams2.Add(new SqlParameter("@CampaignID", CampaignID));
            result[2] = Convert.ToInt32(DBUtility.SelectData(qcu, lstParams2).Rows[0]["CustomerCoupons"]);

            String qf = @"SELECT COUNT(CouponID) AS FranchiseeCoupons
                            FROM Coupon
                            WHERE (CampaignID = @CampaignID) AND (Status = 'Franchisee')";
            List<SqlParameter> lstParams3 = new List<SqlParameter>();
            lstParams3.Add(new SqlParameter("@CampaignID", CampaignID));
            result[3] = Convert.ToInt32(DBUtility.SelectData(qf, lstParams3).Rows[0]["FranchiseeCoupons"]);

            return result;
        }

        public DataTable RepoprtOfAffiliateForCampaign(int CampaignID)
        {
            DataTable dt;
            String q = @"SELECT COUNT(Coupon.CouponID) AS NOC, AppUser.Name AS AffiliateName
                         FROM Coupon INNER JOIN
                         AppUser ON Coupon.AffiliateID = AppUser.AppUserID
                            GROUP BY AppUser.Name, Coupon.Status, Coupon.CampaignID
                        HAVING (Coupon.Status = 'Customer') AND (Coupon.CampaignID = @CampaignID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", CampaignID));
            return DBUtility.SelectData(q, lstParams);
            
        }

        public DataTable ListMyActivCampaigns(int CompanyID)
        {
            string query = @"select Category.Name as CategoryName, Campaign.* 
                            from 
                            Campaign inner join Category on Campaign.CategoryID=Category.CategoryID
                            where CompanyID=@CompanyID 
                            and Campaign.EndDate > getDate() order by CampaignID DESC";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ListMyOldCampaigns(int CompanyID)
        {
            string query = @"select Category.Name as CategoryName, Campaign.* 
                            from 
                            Campaign inner join Category on Campaign.CategoryID=Category.CategoryID
                            where CompanyID=@CompanyID and Campaign.EndDate < getDate() order by CampaignID DESC";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ViewFranchisees(int CompanyID)
        {
            string query = "select * from AppUser where CompanyID=@CompanyID and Type like 'franchisee'";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("CompanyID", CompanyID));

            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable MyCustomers(String Name, String City, int AffiliateID)
        {
            String query = @"select DISTINCT AppUser.* 
                             from AppUser inner join Coupon 
                             on AppUser.AppUserID=Coupon.CustomerID
                             where Coupon.AffiliateID=@AffiliateID
                             and AppUser.Name like @Name + '%' 
                             and AppUser.City like @City + '%'";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("AffiliateID", AffiliateID));
            lstParams.Add(new SqlParameter("Name", Name));
            lstParams.Add(new SqlParameter("City", City));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable Franchisee_ShowReceivedCoupons(int FranchiseeID)
        {
            string q = @"SELECT        Coupon.CouponID, Coupon.CampaignID, Coupon.CouponCode, Coupon.AffiliateID, Coupon.CustomerID, Coupon.FranchiseeID, Coupon.Status, Coupon.AffiliateTime, Coupon.CustomerTime, 
                         Coupon.FranchiseeTime, Campaign.Name
FROM            Coupon INNER JOIN
                         Campaign ON Coupon.CampaignID = Campaign.CampaignID
WHERE        (Coupon.FranchiseeID = @FranchiseeID) AND (Coupon.Status = 'Franchisee')";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@FranchiseeID", FranchiseeID));

            return DBUtility.SelectData(q, lstParams);
        }

        public bool ShowMyVisibility(int FranchiseeID)
        {
            String q = @"SELECT FranchiseeVisibilityMode
                        FROM AppUser
                        WHERE (AppUserID = @FranchiseeID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@FranchiseeID", FranchiseeID));

            DataTable dt = DBUtility.SelectData(q, lstParams);

            if (Convert.ToInt32(dt.Rows[0]["FranchiseeVisibilityMode"]) == 0)
            {
                return false;
            }

            return true;
        }

        public DataTable Customer_SelectedFranchiseeAndCouponDetails(int FranchiseeID, int CouponID)
        {
            String q = @"SELECT Coupon.CouponID, Coupon.CampaignID, Coupon.CouponCode, Campaign.Name, Campaign.Type, Campaign.EndDate, Campaign.BaseValue, 
                         Campaign.DiscountValue, Campaign.BenefitValue, Campaign.ImagePath, AppUser.Name AS FranchiseeName, AppUser.City AS FranchiseeCity, 
                         AppUser.State AS FranchiseeState, AppUser.Address, AppUser.Email, AppUser.Mobile, AppUser.FranchiseeVisibilityMode
                         FROM Coupon INNER JOIN
                         Campaign ON Coupon.CampaignID = Campaign.CampaignID INNER JOIN
                         AppUser ON Coupon.FranchiseeID = AppUser.AppUserID
                         WHERE(Coupon.CouponID = @CouponID) AND (Coupon.FranchiseeID = @FranchiseeID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@FranchiseeID", FranchiseeID));
            lstParams.Add(new SqlParameter("@CouponID", CouponID));
            return DBUtility.SelectData(q, lstParams);
        }

        public DataTable CheckUserName(String u)
        {

            string query = "select * from AppUser where Username=@u";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@u", u));
            return DBUtility.SelectData(query, lstParams);


        }

    }
    
}
