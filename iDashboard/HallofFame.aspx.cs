using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using Newtonsoft.Json;

namespace iDashboard
{
    public partial class HallofFame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string LoadDataTopMarketing(string paramBranch)
        {
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSummaryAgreementByBranch", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Month);
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Year);
                cmd.Parameters.AddWithValue("@ParamBranch", SqlDbType.VarChar).Value = paramBranch;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();
            }
            return JsonConvert.SerializeObject(dt);
        }
    }
}