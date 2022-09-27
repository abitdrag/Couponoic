using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Logic
{
    public class CustomerFeedback:IModel
    {
        public int ID, CustomerID, CompanyID, Rating;
        public String Feedback;
        public DateTime Time;

    }
}
