using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccess;
namespace Business.Logic
{
    public class CityLogic:ILogic<City>
    {
        public DataTable DisplayCities(int StateId)
        {

           

            string query = "select * from City where StateId="+StateId;

            List<SqlParameter> lstParams = new List<SqlParameter>();
          
            return DBUtility.SelectData(query,lstParams);

        }




        public int Insert(City obj)
        {
            throw new NotImplementedException();
        }

        public int Update(City obj)
        {
            throw new NotImplementedException();
        }

        public int Delete(int ID)
        {
            throw new NotImplementedException();
        }

        public City SelectByID(int ID)
        {
            throw new NotImplementedException();
        }

        public DataTable SelectAll()
        {
            throw new NotImplementedException();
        }
    }
}
