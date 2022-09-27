using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Logic;
using System.Data;

public partial class CompanySearchUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        AppUserLogic AUL = new AppUserLogic();
        DataTable dt = AUL.Search(txtSearch.Text, txtCity.Text, role.SelectedValue);

        //if (txtSearch.Text != "" && txtCity.Text != "" && role.SelectedValue != "")
        //{
        //    DataTable dt = AUL.Search(txtSearch.Text, txtCity.Text, role.SelectedValue);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //    if (dt.Rows.Count == 0)
        //    {
        //        lblNoResult.Text = "Sorry.. No Results Found";
        //        lblNoResult.Visible = true;
        //    }
        //    else
        //        lblNoResult.Visible = false;
        //}
        //else if (txtSearch.Text != "" && txtCity.Text == "" && role.SelectedValue == "")
        //{
        //    DataTable dt = AUL.Search(txtSearch.Text);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //    if (dt.Rows.Count == 0)
        //    {
        //        lblNoResult.Text = "Sorry.. No Results Found";
        //        lblNoResult.Visible = true;
        //    }
        //    else
        //        lblNoResult.Visible = false;
        //}
        //else if (txtSearch.Text == "" && txtCity.Text != "" && role.SelectedValue == "")
        //{
        //    DataTable dt = AUL.SearchByCity(txtCity.Text);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}
        //else if (txtSearch.Text == "" && txtCity.Text == "" && role.SelectedValue != "")
        //{
        //    DataTable dt = AUL.SearchByRole(role.SelectedValue);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //    if (dt.Rows.Count == 0)
        //    {
        //        lblNoResult.Text = "Sorry.. No Results Found";
        //        lblNoResult.Visible = true;
        //    }
        //    else
        //        lblNoResult.Visible = false;
        //}
        //else if (txtSearch.Text != "" && txtCity.Text != "" && role.SelectedValue == "")
        //{
        //    DataTable dt = AUL.SearchNameCity(txtSearch.Text, txtCity.Text);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //    if (dt.Rows.Count == 0)
        //    {
        //        lblNoResult.Text = "Sorry.. No Results Found";
        //        lblNoResult.Visible = true;
        //    }
        //    else
        //        lblNoResult.Visible = false;
        //}
        //else if (txtSearch.Text != "" && txtCity.Text == "" && role.SelectedValue != "")
        //{
        //    DataTable dt = AUL.SearchNameRole(txtSearch.Text, role.SelectedValue);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}
        //else if (txtSearch.Text == "" && txtCity.Text != "" && role.SelectedValue != "")
        //{
        //    DataTable dt = AUL.SearchCityRole(txtCity.Text, role.SelectedValue);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //    if (dt.Rows.Count == 0)
        //    {
        //        lblNoResult.Text = "Sorry.. No Results Found";
        //        lblNoResult.Visible = true;
        //    }
        //    else
        //        lblNoResult.Visible = false;
        //}
        //else if (txtSearch.Text == "" && txtCity.Text == "" && role.SelectedValue == "")
        //{
        //    DataTable dt = AUL.SelectAll();
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}


    }
}