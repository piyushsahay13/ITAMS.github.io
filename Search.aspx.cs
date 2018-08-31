using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplicationNTPC
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["NTPCConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "spSearchDetail";
                cmd.CommandType = CommandType.StoredProcedure;
                if(inputItmtp.Value.Trim()!="")
                {
                    SqlParameter param = new SqlParameter("@ItemType", inputItmtp.Value);
                    cmd.Parameters.Add(param);
                }
                if (inputSrlno.Value.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@Serialno", inputSrlno.Value);
                    cmd.Parameters.Add(param);
                }
                if (inputBrand.Value.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@Brand", inputBrand.Value);
                    cmd.Parameters.Add(param);
                }
                if (inputWarranty.Value.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@Warranty", inputWarranty.Value);
                    cmd.Parameters.Add(param);
                }
                if (inputModel.Value.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@Model", inputModel.Value);
                    cmd.Parameters.Add(param);
                }
                if (inputDate.Value.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@Date", inputDate.Value);
                    cmd.Parameters.Add(param);
                }
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                gvSearchResults.DataSource = rdr;
                gvSearchResults.DataBind();
            }
        }
    }
}