using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace Business.Logic
{
    interface ILogic<T> where T : IModel
    {
        int Insert(T obj);
        int Update(T obj);
        int Delete(int ID);
        T SelectByID(int ID);
        DataTable SelectAll();
    }
}
