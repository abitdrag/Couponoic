using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DataAccess;
using System.Data;

namespace Business.Logic
{
    public class CompanyContactLogic:ILogic<CompanyContact>
    {

        public int Insert(CompanyContact objCompanyContact)
        {
            string query = "insert into CompanyContact(CoverPhoto, AboutMe, Phone1, Phone2, Phone3, Email1, Email2, Email3, Name1, Name2, Name3, CompanyID) values(@CoverPhoto, @AboutMe, @Phone1, @Phone2, @Phone3, @Email1, @Email2, @Email3, @Name1, @Name2, @Name3 ,@CompanyID)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
           
            lstParams.Add(new SqlParameter("@AboutMe", objCompanyContact.AboutMe));
            lstParams.Add(new SqlParameter("@Phone1", objCompanyContact.Phone1));
            lstParams.Add(new SqlParameter("@Phone2", objCompanyContact.Phone2));
            lstParams.Add(new SqlParameter("@Phone3", objCompanyContact.Phone3));
            lstParams.Add(new SqlParameter("@Email1", objCompanyContact.Email1));
            lstParams.Add(new SqlParameter("@Email2", objCompanyContact.Email2));
            lstParams.Add(new SqlParameter("@Email3", objCompanyContact.Email3));
            lstParams.Add(new SqlParameter("@Name1", objCompanyContact.Name1));
            lstParams.Add(new SqlParameter("@Name2", objCompanyContact.Name2));
            lstParams.Add(new SqlParameter("@Name3", objCompanyContact.Name3));
            lstParams.Add(new SqlParameter("@CoverPhoto", objCompanyContact.CoverPhoto));
            lstParams.Add(new SqlParameter("@CompanyID", objCompanyContact.CompanyID));
           
            return DBUtility.ModifyData(query, lstParams);
        }

        public int Update(CompanyContact objCompanyContact)
        {
            string query = "update CompanyContact set CoverPhoto=@CoverPhoto, AboutMe=@AboutMe, Phone1=@Phone1, Phone2=@Phone2, Phone3=@Phone3, Email1=@Email1, Email2=@Email2, Email3=@Email3, Name1=@Name1, Name2=@Name2, Name3=@Name3, CompanyID=@CompanyID  WHERE CompanyContactID = @CompanyContactID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyContactID", objCompanyContact.CompanyContactID));
            lstParams.Add(new SqlParameter("@CoverPhoto", objCompanyContact.CoverPhoto));
            lstParams.Add(new SqlParameter("@AboutMe", objCompanyContact.AboutMe));
            lstParams.Add(new SqlParameter("@Phone1", objCompanyContact.Phone1));
            lstParams.Add(new SqlParameter("@Phone2", objCompanyContact.Phone2));
            lstParams.Add(new SqlParameter("@Phone3", objCompanyContact.Phone3));
            lstParams.Add(new SqlParameter("@Email1", objCompanyContact.Email1));
            lstParams.Add(new SqlParameter("@Email2", objCompanyContact.Email2));
            lstParams.Add(new SqlParameter("@Email3", objCompanyContact.Email3));
            lstParams.Add(new SqlParameter("@Name1", objCompanyContact.Name1));
            lstParams.Add(new SqlParameter("@Name2", objCompanyContact.Name2));
            lstParams.Add(new SqlParameter("@Name3", objCompanyContact.Name3));
            lstParams.Add(new SqlParameter("@CompanyID", objCompanyContact.CompanyID));
            


            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int ID)
        {
            throw new NotImplementedException();
        }

        public CompanyContact SelectByID(int CompanyContactID)
        {
            string query = "select * from CompanyContact WHERE CompanyContactID = @CompanyContactID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyContactID", CompanyContactID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            CompanyContact objCompanyContact = new CompanyContact();
            if (dt.Rows.Count > 0)
            {
                objCompanyContact.CoverPhoto = dt.Rows[0]["CoverPhoto"].ToString();
                objCompanyContact.AboutMe = dt.Rows[0]["AboutMe"].ToString();
                objCompanyContact.Phone1 = dt.Rows[0]["Phone1"].ToString();
                objCompanyContact.Phone2 = dt.Rows[0]["Phone2"].ToString();
                objCompanyContact.Phone3 = dt.Rows[0]["Phone3"].ToString();
                objCompanyContact.Email1 = dt.Rows[0]["Email1"].ToString();
                objCompanyContact.Email2 = dt.Rows[0]["Email2"].ToString();
                objCompanyContact.Email3 = dt.Rows[0]["Email3"].ToString();
                objCompanyContact.Name1 = dt.Rows[0]["Name1"].ToString();
                objCompanyContact.Name2 = dt.Rows[0]["Name2"].ToString();
                objCompanyContact.Name3 = dt.Rows[0]["Name3"].ToString();
                objCompanyContact.CompanyID = Convert.ToInt32(dt.Rows[0]["CompanyID"].ToString());

            }
            return objCompanyContact;
        }

        public System.Data.DataTable SelectAll()
        {
            string query = "select * from CompanyContact";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }

        public CompanyContact SelectByCompanyID(int CompanyID)
        {
            string query = "select * from CompanyContact WHERE CompanyID = @CompanyID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@CompanyID", CompanyID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            CompanyContact objCompanyContact = new CompanyContact();
            if (dt.Rows.Count > 0)
            {
                objCompanyContact.CompanyContactID = Convert.ToInt32(dt.Rows[0]["CompanyContactID"].ToString());
                objCompanyContact.CompanyID = Convert.ToInt32(dt.Rows[0]["CompanyID"].ToString());
                objCompanyContact.CoverPhoto = dt.Rows[0]["CoverPhoto"].ToString();
                objCompanyContact.AboutMe = dt.Rows[0]["AboutMe"].ToString();
                objCompanyContact.Phone1 = dt.Rows[0]["Phone1"].ToString();
                objCompanyContact.Phone2 = dt.Rows[0]["Phone2"].ToString();
                objCompanyContact.Phone3 = dt.Rows[0]["Phone3"].ToString();
                objCompanyContact.Email1 = dt.Rows[0]["Email1"].ToString();
                objCompanyContact.Email2 = dt.Rows[0]["Email2"].ToString();
                objCompanyContact.Email3 = dt.Rows[0]["Email3"].ToString();
                objCompanyContact.Name1 = dt.Rows[0]["Name1"].ToString();
                objCompanyContact.Name2 = dt.Rows[0]["Name2"].ToString();
                objCompanyContact.Name3 = dt.Rows[0]["Name3"].ToString();

            }
            return objCompanyContact;

        }

        public int AddOneContact(int CompanyID, string Phone, string Email, string Name)
        {
            CompanyContact cc = new CompanyContactLogic().SelectByCompanyID(CompanyID);
            if ((cc.Phone1 == null && cc.Email1 == null && cc.Name1 == null) ||
                (cc.Phone2 == null && cc.Email2 == null && cc.Name2 == null) ||
                  (cc.Phone3 == null && cc.Email3 == null && cc.Name3 == null))
            {
                //insert a contact

                if (cc.Phone1 == null && cc.Email1 == null && cc.Name1 == null)
                {
                    cc.Phone1 = Phone;
                    cc.Email1 = Email;
                    cc.Name1 = Name;
                }
                else
                {
                    if (cc.Phone2 == null && cc.Email2 == null && cc.Name2 == null)
                    {
                        cc.Phone2 = Phone;
                        cc.Email2 = Email;
                        cc.Name2 = Name;
                    }
                    else
                    {
                        cc.Phone3 = Phone;
                        cc.Email3 = Email;
                        cc.Name3 = Name;
                    }
                }

                new CompanyContactLogic().Update(cc);
                return 1;
            }
            else
            {
                return 0;
            }
        }

        public int AddCoverPhoto(int CompanyID, string CoverPhoto)
        {
            CompanyContact cc = new CompanyContactLogic().SelectByCompanyID(CompanyID);
            cc.CoverPhoto = CoverPhoto;
            return new CompanyContactLogic().Update(cc);
        }

        public int AddAboutMe(int CompanyID, string AboutMe)
        {
            CompanyContact cc = new CompanyContactLogic().SelectByCompanyID(CompanyID);
            cc.AboutMe = AboutMe;
            return new CompanyContactLogic().Update(cc);
        }
    }
}
