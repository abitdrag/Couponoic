using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DataAccess;
using System.Data;

namespace Business.Logic
{
    public class CouponRequestLogic:ILogic<CouponRequest>
    {
        public int Insert(CouponRequest objCouponRequest)
        {

            string query = "insert CouponRequest values (@CompanyID,@AffiliateID,@CampaignID,@Status)";
            List<SqlParameter> lstParams = new List<SqlParameter>();

            lstParams.Add(new SqlParameter("@CompanyID", objCouponRequest.CompanyID));
            lstParams.Add(new SqlParameter("@AffiliateID", objCouponRequest.AffiliateID));
            lstParams.Add(new SqlParameter("@CampaignID", objCouponRequest.CampaignID));
            lstParams.Add(new SqlParameter("@Status", "Pending"));

            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int CouponRequestID)
        {
            string query = "delete CouponRequest WHERE CouponRequestID=@CouponRequestID ";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CouponRequestID", CouponRequestID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public CouponRequest SelectByID(int CouponRequestID)
        {
            string query = "select * from CouponRequest WHERE CouponRequestID = @CouponRequestID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CouponRequestID", CouponRequestID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            CouponRequest objCouponRequest = new CouponRequest();
            if (dt.Rows.Count > 0)
            {
                objCouponRequest.CompanyID = Convert.ToInt32(dt.Rows[0]["CompanyID"].ToString());
                objCouponRequest.AffiliateID = Convert.ToInt32(dt.Rows[0]["AffiliateID"].ToString());
                objCouponRequest.CampaignID = Convert.ToInt32(dt.Rows[0]["CampaignID"].ToString());
                objCouponRequest.Status = dt.Rows[0]["Status"].ToString();
            }

            return objCouponRequest;
            
        }

        public DataTable SelectAll()
        {
            string query = "select * from CouponRequest";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public int Update(CouponRequest objCouponRequest)
        {
            string query = "update Coupon set CompanyID=@CompanyID, AffiliateID=@AffiliateID, CampaignID=@CampaignID, Status=@Status WHERE CouponRequestID = @CouponRequestID";

            List<SqlParameter> lstParams = new List<SqlParameter>();

            lstParams.Add(new SqlParameter("@CouponRequestID", objCouponRequest.CouponRequestID));
            lstParams.Add(new SqlParameter("@CompanyID", objCouponRequest.CompanyID));
            lstParams.Add(new SqlParameter("@AffiliateID", objCouponRequest.AffiliateID));
            lstParams.Add(new SqlParameter("@CampaignID", objCouponRequest.CampaignID));
            lstParams.Add(new SqlParameter("@Status", objCouponRequest.Status));

            return DBUtility.ModifyData(query, lstParams);
        }

        public DataTable ViewRequestStatus(int CampaignID,int AffiliateID)
        {
            string query = @"select * 
                             from CouponRequest
                             where CampaignID=@CampaignID 
                              AND AffiliateID=@AffiliateID
                              AND Status='Pending'";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("CampaignID",CampaignID));
            lstParams.Add(new SqlParameter("AffiliateID", AffiliateID));

            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable ViewRequests(int CompanyID)
        {
            string query = @"select AppUser.*, CouponRequest.CouponRequestID, Campaign.Name As CampaignName
                             from AppUser inner join CouponRequest
                                  on AppUser.AppUserID=CouponRequest.AffiliateID
                                  inner join Campaign 
                                  on Campaign.CampaignID=CouponRequest.CampaignId
                              where CouponRequest.CompanyID=@CompanyID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("CompanyID", CompanyID));
            return DBUtility.SelectData(query, lstParams);
        }

        public void ActOnRequest(int CouponRequestID)
        {
            Delete(CouponRequestID);
        }
    }
}
