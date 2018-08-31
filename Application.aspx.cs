using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationNTPC
{
    public partial class Application : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton BtInsert = new LinkButton();
            BtInsert.Click += new EventHandler(BtInsert_Click);
        }

        protected void BtInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["ItemType"].DefaultValue =
                ((DropDownList)GridView1.FooterRow.FindControl("itmDrp")).SelectedValue;
            SqlDataSource1.InsertParameters["Serialno"].DefaultValue =
                   ((TextBox)GridView1.FooterRow.FindControl("TextBox10")).Text;
            SqlDataSource1.InsertParameters["Brand"].DefaultValue =
                   ((TextBox)GridView1.FooterRow.FindControl("TextBox9")).Text;
            SqlDataSource1.InsertParameters["Warranty"].DefaultValue =
                   ((TextBox)GridView1.FooterRow.FindControl("TextBox8")).Text;
            SqlDataSource1.InsertParameters["Model"].DefaultValue =
                   ((TextBox)GridView1.FooterRow.FindControl("TextBox7")).Text;
            SqlDataSource1.InsertParameters["Date"].DefaultValue =
                   ((TextBox)GridView1.FooterRow.FindControl("TextBox6")).Text;
            SqlDataSource1.Insert();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}