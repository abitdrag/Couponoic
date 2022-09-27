using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DataAccess;
using System.Data;

namespace Business.Logic
{
    public class CompanyAffiliateLogic:ILogic<CompanyAffiliate>
    {
        public int Insert(CompanyAffiliate objCompanyAffiliate)
        {
            string query = "insert CompanyAffiliate values (@CompanyID, @AffiliateID,@Status)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", objCompanyAffiliate.CompanyID));
            lstParams.Add(new SqlParameter("@AffiliateID", objCompanyAffiliate.AffiliateID));
            lstParams.Add(new SqlParameter("@Status", objCompanyAffiliate.Status));
            return DBUtility.ModifyData(query, lstParams);
        }

        public int Update(CompanyAffiliate objCompanyAffiliate)
        {
            string query = "update CompanyAffiliate set CompanyID=@CompanyID, AffiliateID=@AffiliateID,Status=@Status WHERE CompanyAffiliateID=@ID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", objCompanyAffiliate.CompanyID));
            lstParams.Add(new SqlParameter("@AffiliateID", objCompanyAffiliate.AffiliateID));
            lstParams.Add(new SqlParameter("@Status", objCompanyAffiliate.Status));
            lstParams.Add(new SqlParameter("@ID", objCompanyAffiliate.ID));
            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int ID)
        {
            string query = "delete CompanyAffiliate WHERE ID = @ID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", ID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public CompanyAffiliate SelectByID(int ID)
        {
            string query = "select * from CompanyAffiliate WHERE ID = @ID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", ID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            CompanyAffiliate objCompanyAffiliate = new CompanyAffiliate();
            if (dt.Rows.Count > 0)
            {
                objCompanyAffiliate.CompanyID = Convert.ToInt32(dt.Rows[0]["CompanyID"]);
                objCompanyAffiliate.AffiliateID = Convert.ToInt32(dt.Rows[0]["AffiliateID"]);
                objCompanyAffiliate.Status = dt.Rows[0]["Status"].ToString();

            }

            return objCompanyAffiliate;
        }

        public DataTable SelectAll()
        {
            string query = "select * from CompanyAffiliate";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public int AffiliateRequest(int CompanyID, int AffiliateID)
        {
            string query = "insert into CompanyAffiliate values (@CompanyID,@AffiliateID,'pending')";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));
            lstParams.Add(new SqlParameter("@AffiliateID", AffiliateID));

            return DBUtility.ModifyData(query, lstParams);


        }

        public DataTable MyCompanies(int AffiliateID)
        {
            string query = @"select *
                             from AppUser inner join CompanyAffiliate
                             on AppUser.AppUserID=CompanyAffiliate.CompanyID
                             where CompanyAffiliate.AffiliateID=@AffiliateID
                             And CompanyAffiliate.Status='Approved'";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("AffiliateID",AffiliateID));
            return DBUtility.SelectData(query, lstParams);
        }

        public Boolean IsAffiliate(int CompanyID,int AffiliateID)
        { 
            string query="select * from CompanyAffiliate where AffiliateID=@AffiliateID and CompanyID=@CompanyID";
            
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("AffiliateID",AffiliateID));
            lstParams.Add(new SqlParameter("CompanyID", CompanyID));

            if (DBUtility.SelectData(query, lstParams).Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
