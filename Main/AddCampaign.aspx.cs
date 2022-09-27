using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class AddCampaign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new CategoryLogic().SelectAll();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlCategory.Items.Add(dt.Rows[i]["Name"].ToString());

        }
        //ddlCategory.DataSource = dt;
        //ddlCategory.DataTextField = "Name";
        //ddlCategory.DataValueField = "CategoryID";
        //ddlCategory.DataBind();

    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {

        Campaign c = new Campaign();
        c.CompanyID = Convert.ToInt32(Session["AppuserID"]);
        c.CategoryID = 0;
        c.Name = txtName.Text;
        String range = txtDateRange.Text;
        String[] range1 = range.Split(new string[] { "to" }, StringSplitOptions.None);
        String s = txtDSDate.Text;
        s= s.Trim();
        range1[0] = range1[0].Trim();
        range1[1] = range1[1].Trim();

        if (DateTime.TryParseExact(range1[0], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out c.StartDate))
        {

        }
        else
        {
            c.StartDate = Convert.ToDateTime(range1[0]);
        }

        if (DateTime.TryParseExact(range1[1], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out c.EndDate))
        {

        }
        else
        {
            c.EndDate = Convert.ToDateTime(range1[1]);
        }

        if (DateTime.TryParseExact(s, "dd/MM/yyyy", null, System.Globalization.DateTimeStyles.None, out c.DistributionStartDate))
        {

        }
        else
        {
            c.DistributionStartDate = Convert.ToDateTime(s);
        }

        c.NumberOfCoupons = Convert.ToInt32(txtCoupons.Text);
        c.BaseValue = Convert.ToInt32(txtBaseValue.Text);
        if ((rbtnType.SelectedItem.Value).Equals("benefit"))
        {
            c.BenefitValue = Convert.ToInt32(txtBODValue.Text);
            c.Type = "Benefit";
            c.DiscountValue = 0;
        }
        else
        {
            c.DiscountValue = Convert.ToInt32(txtBODValue.Text);
            c.Type = "Discount";
            c.BenefitValue = 0;
        }
        c.ImagePath = "6355602263954600001471150_460716354037398_544435368_n.jpg ";

        if (campaignPic.HasFile)
        {
            string name = campaignPic.FileName;
            string uname = DateTime.Now.Ticks + name;
            string relpath = "uploads/" + uname;
            string abspath = Server.MapPath("~") + "/" + relpath;

            campaignPic.SaveAs(abspath);
            c.ImagePath = relpath;

        }
        string Cname = ddlCategory.SelectedItem.ToString();
        Category cat = new CategoryLogic().SearchByName(Cname);
        c.Description = txtDescription.Text;
        c.CategoryID = cat.CategoryID;
        int campaignID = new CampaignLogic().Insert(c);
        int NumberOfCoupons = new CampaignLogic().GenerateCoupons(campaignID);

        CampaignCategory cc = new CampaignCategory();
        cc.CampaignID = campaignID;
        cc.CategoryID = cat.CategoryID;

        new CampaignCategoryLogic().Insert(cc);
        Response.Redirect("Campaigns.aspx");
    }

}