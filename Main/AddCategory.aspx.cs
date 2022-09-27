using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        String Name = txtName.Text;
        String Description = txtDescription.Text;
        Category c = new Category();
        c.Name = Name;
        c.Description = Description;
        new CategoryLogic().Insert(c);
        Response.Redirect("Categories.aspx");

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtDescription.Text = "";
    }
}