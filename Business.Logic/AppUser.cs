using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Logic
{
    public class AppUser:IModel
    {
        public int AppUserID,CompanyID,LoginCount, FranchiseeVisibilityMode;
        public String Name, Address, City,State,Email,Mobile,Username,Password,Status,Type,Photo,ThumbnailPhoto,PayPalAccount;
        public DateTime LastLoginTime, RegistrationTime;
        public DateTime LastShakeTime;
    }
}
