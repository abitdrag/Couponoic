using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DataAccess;
using System.Data;

namespace Business.Logic
{
    public class CustomerFeedbackLogic:ILogic<CustomerFeedback>
    {
        public int Insert(CustomerFeedback objCustomerFeedback)
        {
            string query = "insert CustomerFeedback values (@CustomerID,@CompanyID,@Feedback,@Time,@Rating)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
           
            lstParams.Add(new SqlParameter("@CustomerID",objCustomerFeedback.CustomerID));
            lstParams.Add(new SqlParameter("@CompanyID",objCustomerFeedback.CompanyID));
            lstParams.Add(new SqlParameter("@Feedback",objCustomerFeedback.Feedback));
            lstParams.Add(new SqlParameter("@Time",objCustomerFeedback.Time));
            lstParams.Add(new SqlParameter("@Rating",objCustomerFeedback.Rating));
           
            return DBUtility.ModifyData(query, lstParams);
        }

        public int Update(CustomerFeedback objCustomerFeedback)
        {
            string query = "update CustomerFeedback set CustomerId=@CustomerID, CompanyID=@CompanyID, Feedback=@Feedback, Time=@Time, Rating=@Rating WHERE ID=@ID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", objCustomerFeedback.ID));
            lstParams.Add(new SqlParameter("@CustomerID", objCustomerFeedback.CustomerID));
            lstParams.Add(new SqlParameter("@CompanyID", objCustomerFeedback.CompanyID));
            lstParams.Add(new SqlParameter("@Feedback", objCustomerFeedback.Feedback));
            lstParams.Add(new SqlParameter("@Time", objCustomerFeedback.Time));
            lstParams.Add(new SqlParameter("@Rating", objCustomerFeedback.Rating));

            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int ID)
        {
            string query = "delete CustomerFeedback WHERE ID = @ID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", ID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public CustomerFeedback SelectByID(int ID)
        {
            string query = "select * from CustomerFeedback WHERE ID = @ID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@ID", ID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            CustomerFeedback objCustomerFeedback = new CustomerFeedback();
            if (dt.Rows.Count > 0)
            {
                objCustomerFeedback.ID = Convert.ToInt32(dt.Rows[0]["ID"]);
                objCustomerFeedback.CompanyID = Convert.ToInt32(dt.Rows[0]["CompanyID"]);
                objCustomerFeedback.CustomerID = Convert.ToInt32(dt.Rows[0]["CustomerID"]);
                objCustomerFeedback.Feedback = dt.Rows[0]["Feedback"].ToString();
                objCustomerFeedback.Time = (DateTime)(dt.Rows[0]["Time"]);
                objCustomerFeedback.Rating = Convert.ToInt32(dt.Rows[0]["Rating"]);

            }

            return objCustomerFeedback;
        }

        public DataTable SelectAll()
        {
            string query = "select * from CustomerFeedback";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }
    }
}
