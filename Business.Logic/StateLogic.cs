using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataAccess;
using System.Data.SqlClient;

namespace Business.Logic
{
    public class StateLogic:ILogic<State>
    {

      public DataTable GetAllStates(){

          string query = "select * from State";
          List<SqlParameter> lstParams = new List<SqlParameter>();

          return DBUtility.SelectData(query, lstParams);
      }



      public int Insert(State obj)
      {
          throw new NotImplementedException();
      }

      public int Update(State obj)
      {
          throw new NotImplementedException();
      }

      public int Delete(int ID)
      {
          throw new NotImplementedException();
      }

      public State SelectByID(int ID)
      {
          throw new NotImplementedException();
      }

      public DataTable SelectAll()
      {
          throw new NotImplementedException();
      }
    }
}
