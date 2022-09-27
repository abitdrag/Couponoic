using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Web.Script.Serialization;
using System.Data;

public partial class Android : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["type"] == "VerifyLogin")
        {
            // login request
            string un = Request.QueryString["username"].ToString();
            string pw = Request.QueryString["password"].ToString();
            int id = new AppUserLogic().Login(un, pw);
            AppUser au = new AppUserLogic().SelectByID(id);
            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(au);
            Response.Write(json + "");
            return;
        }

        if (Request.QueryString["type"] == "Customer_MyWallet")
        {
            string s = Request.QueryString["CustomerID"].ToString();
            int CustomerID = Convert.ToInt32(s);
            DataTable dt = new AppUserLogic().Customer_MyWallet(CustomerID);
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row = null;

            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(rows);
            Response.Write(json + "");
            return;
        }

        if (Request.QueryString["type"] == "Customer_CouponDetails")
        {
            string s = Request.QueryString["CouponID"].ToString();
            int CouponID = Convert.ToInt32(s);
            DataTable dt = new AppUserLogic().Customer_CouponDetails(CouponID);
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row = null;

            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(rows);
            Response.Write(json + "");
            return;
        }

        if (Request.QueryString["type"] == "Customer_ListAllFranchisee")
        {
            string s = Request.QueryString["CouponID"].ToString();
            int CouponID = Convert.ToInt32(s);
            Coupon c = new CouponLogic().SelectByID(CouponID);
            Campaign campaign = new CampaignLogic().SelectByID(c.CampaignID);
            DataTable dt = new AppUserLogic().ListMyVisibleFranchisees(campaign.CompanyID);
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row = null;

            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(rows);
            Response.Write(json + "");
            return;
        }

        if (Request.QueryString["type"] == "Customer_SelectedFranchiseeAndCouponDetails")
        {
            string s = Request.QueryString["FranchiseeID"].ToString();
            int FranchiseeID = Convert.ToInt32(s);
            string s1 = Request.QueryString["CouponID"].ToString();
            int CouponID = Convert.ToInt32(s1);
            DataTable dt = new AppUserLogic().Customer_SelectedFranchiseeAndCouponDetails(FranchiseeID, CouponID);
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row = null;

            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(rows);
            Response.Write(json + "");
            return;
        }

        if (Request.QueryString["type"] == "Transfer_CustomerToFranchisee")
        {
            string s = Request.QueryString["FranchiseeID"].ToString();
            int FranchiseeID = Convert.ToInt32(s);
            string s1 = Request.QueryString["CouponID"].ToString();
            int CouponID = Convert.ToInt32(s1);
            //check visibility of franchisee
            if (new AppUserLogic().ShowMyVisibility(FranchiseeID) == true)
            {
                Coupon c = new CouponLogic().SelectByID(CouponID);

                if (c.Status == "Customer")
                {
                    c.FranchiseeID = FranchiseeID;
                    c.FranchiseeTime = DateTime.Now;

                    c.Status = "Franchisee";
                    new CouponLogic().Update(c);
                    Response.Write("true");
                    return;
                }
                else
                {
                    Response.Write("false");
                    return;
                }
                
                
            }

            Response.Write("false");
            return;
                
        }

        if (Request.QueryString["type"] == "Transfer_CustomerToCustomer")
        {
            string s = Request.QueryString["SenderCustomerID"].ToString();
            int SenderCustomerID = Convert.ToInt32(s);
            string s1 = Request.QueryString["ReceiverCustomerID"].ToString();
            int ReceiverCustomerID = Convert.ToInt32(s1);
            string s2 = Request.QueryString["CouponID"].ToString();
            int CouponID = Convert.ToInt32(s2);
            //check visibility of Customer
            if (new AppUserLogic().ShowMyVisibility(ReceiverCustomerID) == true)
            {
                Coupon c = new CouponLogic().SelectByID(CouponID);
                c.CustomerID = SenderCustomerID;
                c.CustomerTime = DateTime.Now;
                c.Status = "Customer";
                new CouponLogic().Update(c);
                Response.Write("true");
                return;
                
            }

            Response.Write("false");
            return;
        }

        if (Request.QueryString["type"] == "MakeMeVisible")
        {
            string s = Request.QueryString["AppUserID"].ToString();
            int AppUserID = Convert.ToInt32(s);
            AppUser au = new AppUserLogic().SelectByID(AppUserID);
            au.FranchiseeVisibilityMode = 1;
            new AppUserLogic().Update(au);
            Response.Write("true");
            return;
        }

        if (Request.QueryString["type"] == "MakeMeDisable")
        {
            string s = Request.QueryString["AppUserID"].ToString();
            int AppUserID = Convert.ToInt32(s);
            AppUser au = new AppUserLogic().SelectByID(AppUserID);
            au.FranchiseeVisibilityMode = 0;
            new AppUserLogic().Update(au);
            Response.Write("true");
            return;
        }

        if (Request.QueryString["type"] == "Franchisee_ShowReceivedCoupons")
        {
            string s = Request.QueryString["FranchiseeID"].ToString();
            int FranchiseeID = Convert.ToInt32(s);
            DataTable dt = new AppUserLogic().Franchisee_ShowReceivedCoupons(FranchiseeID);
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row = null;

            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(rows);
            
            Response.Write(json+"");
            return;
        }

        if (Request.QueryString["type"] == "Franchisee_CouponDetails")
        {
            string s = Request.QueryString["CouponID"].ToString();
            int CouponID = Convert.ToInt32(s);
            DataTable dt = new CampaignLogic().Franchisee_CouponDetails(CouponID);
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row = null;

            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(rows);

            Response.Write(json + "");
            return;
        }

        if (Request.QueryString["type"] == "Franchisee_getCouponID")
        {
            string s = Request.QueryString["CouponCode"].ToString();

            int id = new CouponLogic().GetIDFromCouponCode(s);
            Response.Write(id);
            return;
        }
    }
}