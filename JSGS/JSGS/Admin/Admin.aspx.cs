using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JSGS.Model;
using CYQ.Data;

namespace JSGS.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        protected void LoadData()
        {
            using (DbUser user = new DbUser())
            {
                for (int i = 0; i < 5; i++)
                {
                    DbUser auser = user.Select("id="+i.ToString()).ToList<DbUser>().FirstOrDefault();
                    if (user != null)
                    {
                        try
                        {
                            ((TextBox)this.FindControl("tbUserName" + i.ToString())).Text = auser.UserName;
                            ((TextBox)this.FindControl("tbPassword" + i.ToString())).Text = auser.Password;
                        }
                        catch (Exception ex) { }
                    }
                }
            }
        }
        protected void btnSaveUser_Click(object sender, EventArgs e)
        {
            using (DbUser db = new DbUser())
            {
                for(int i=0;i<5;i++)
                {
                    if(db.Fill("id='"+i.ToString()+"'"))
                    {
                        db.UserName =((TextBox)this.FindControl("tbUserName"+i.ToString())).Text.Trim();
                        db.Password =((TextBox)this.FindControl("tbPassword"+i.ToString())).Text.Trim();
                        db.Update();
                    }
                    else
                    {
                        db.ID = i;
                        db.UserName = ((TextBox)this.FindControl("tbUserName" + i.ToString())).Text.Trim();
                        db.Password = ((TextBox)this.FindControl("tbPassword" + i.ToString())).Text.Trim();
                        db.Insert(InsertOp.None);
                    }
                }
            }
        }
    }
}