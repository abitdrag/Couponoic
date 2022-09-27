using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DataAccess;
using System.Data;

namespace Business.Logic
{
    public class CampaignCategoryLogic:ILogic<CampaignCategory>
    {

        public int Insert(CampaignCategory objCampaignCategory)
        {
            string query = "insert CampaignCategory values (@CampaignID, @CategoryID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", objCampaignCategory.CampaignID));
            lstParams.Add(new SqlParameter("@CategoryID", objCampaignCategory.CategoryID));
            return DBUtility.ModifyData(query, lstParams);
        }

        public int Update(CampaignCategory objCampaignCategory)
        {
            string query = "update CampaignCategory set CampaignID=@CampaignID, CategoryID=@CategoryID WHERE ID=@ID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CampaignID", objCampaignCategory.CampaignID));
            lstParams.Add(new SqlParameter("@CategoryID", objCampaignCategory.CategoryID));
           
            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int ID)
        {
            string query = "delete CampaignCategory WHERE ID = @ID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", ID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public CampaignCategory SelectByID(int ID)
        {
            string query = "select * from CampaignCategory WHERE ID = @ID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", ID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            CampaignCategory objCampaignCategory = new CampaignCategory();
            if (dt.Rows.Count > 0)
            {
                objCampaignCategory.CampaignID = Convert.ToInt32(dt.Rows[0]["CampaignID"]);
                objCampaignCategory.CategoryID = Convert.ToInt32(dt.Rows[0]["CategoryID"]);
                
            }

            return objCampaignCategory;
        }

        public DataTable SelectAll()
        {
            string query = "select * from CampaignCategory";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }
    }
}
