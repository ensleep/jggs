using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CYQ.Data.Orm;

namespace JSGS.Model
{
    public class DbUser:OrmBase
    {
        public DbUser()
        {
            base.SetInit(this, "DbUser", "txt path={0};ts=0");
        }
        public int ID{get;set;}
        public string UserName{get;set;}
        public string Password{get;set;}
    }
}