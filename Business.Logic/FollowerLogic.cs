using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DataAccess;
using System.Data;

namespace Business.Logic
{
    public class FollowerLogic:ILogic<Follower>
    {
        public int Insert(Follower objFollower)
        {
            string query = "insert Follower values (@CustomerID, @CompanyID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            
            lstParams.Add(new SqlParameter("@CompanyID", objFollower.CompanyID));
            lstParams.Add(new SqlParameter("@CustomerID", objFollower.CustomerID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public int Update(Follower objFollower)
        {
            string query = "update Follower set CompanyID=@CompanyID, CustomerID=@CustomerID WHERE ID = @ID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Name", objFollower.CompanyID));
            lstParams.Add(new SqlParameter("@Description", objFollower.CustomerID));


            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int CustomerID,int CompanyID)
        {
            string query = @"delete Follower 
                                    where CustomerID=@CustomerID
                                    AND CompanyID=@CompanyID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CustomerID", CustomerID));
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public Follower SelectByID(int ID)
        {
            string query = "select * from Follower WHERE ID = @ID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", ID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            Follower objFollower = new Follower();
            if (dt.Rows.Count > 0)
            {
                objFollower.ID = Convert.ToInt32(dt.Rows[0]["ID"]);
                objFollower.CompanyID = Convert.ToInt32(dt.Rows[0]["CompanyID"]);
                objFollower.CustomerID = Convert.ToInt32(dt.Rows[0]["CustomerID"]);
            }

            return objFollower;
        }

        public DataTable SelectAll()
        {
            string query = "select * Follower";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable SearchFollower(int ID)
        {
            string query = @"select * 
                                    from AppUser inner join Follower
                                    ON Follower.CompanyID=AppUser.AppUserID
                                    where Follower.CustomerID=@ID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID",ID));
            return DBUtility.SelectData(query, lstParams);
        }

        public int Delete(int ID)
        {
            throw new NotImplementedException();
        }
        
    }
}
