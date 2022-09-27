using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using DataAccess;


namespace Business.Logic
{
    public class CategoryLogic : ILogic<Category>
    {
        public int Insert(Category objCategory)
        {
            string query = "insert Category values (@Name, @Description)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Name", objCategory.Name));
            lstParams.Add(new SqlParameter("@Description", objCategory.Description));

            return DBUtility.ModifyData(query, lstParams);
        }

        public int Update(Category objCategory)
        {
            string query = "update Category set Name = @Name, Description=@Description WHERE CategoryID = @CategoryID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Name", objCategory.Name));
            lstParams.Add(new SqlParameter("@Description", objCategory.Description));


            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int CategoryID)
        {
            string query = "delete Category WHERE CategoryID = @CategoryID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CategoryID", CategoryID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public Category SelectByID(int CategoryID)
        {
            string query = "select * from Category WHERE CategoryID = @CategoryID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CategoryID", CategoryID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            Category objCategory = new Category();
            if (dt.Rows.Count > 0)
            {
                objCategory.Name = dt.Rows[0]["Name"].ToString();
                objCategory.Description = dt.Rows[0]["Description"].ToString();
                objCategory.CategoryID = Convert.ToInt32(dt.Rows[0]["CategoryID"]);
            }

            return objCategory;
        }

        public DataTable SelectAll()
        {
            string query = "select * from Category";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public Category SearchByName(String name)
        {
            string Cname = name;
            string query = "select * from Category WHERE Name=@Cname";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Cname", Cname));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            Category objCategory = new Category();
            if (dt.Rows.Count > 0)
            {
                objCategory.Name = dt.Rows[0]["Name"].ToString();
                objCategory.Description = dt.Rows[0]["Description"].ToString();
                objCategory.CategoryID = Convert.ToInt32(dt.Rows[0]["CategoryID"]);
            }

            return objCategory;
        }
    }
}
