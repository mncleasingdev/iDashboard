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

namespace iDashboard
{
    public partial class WeeklyTarget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class wkTarget
        {
            public string GroupDesc { get; set; }
            public string Week1 { get; set; }
            public string Week2 { get; set; }
            public string Week3 { get; set; }
            public string Week4 { get; set; }
            public string Week5 { get; set; }
            public string GrandTotal { get; set; }
        }

        [WebMethod]
        public static wkTarget[] ActivityLoad()
        {
            List<wkTarget> lda = new List<wkTarget>();
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSummaryApplicationByProduct", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Month);
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Year);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();


                foreach (DataRow dr in dt.Rows)
                {
                    wkTarget wk = new wkTarget();
                    wk.GroupDesc = dr["GroupDesc"].ToString();
                    wk.Week1 = dr["Week1"].ToString();
                    wk.Week2 = dr["Week2"].ToString();
                    wk.Week3 = dr["Week3"].ToString();
                    wk.Week4 = dr["Week4"].ToString();
                    wk.Week5 = dr["Week5"].ToString();
                    wk.GrandTotal = dr["GrandTotal"].ToString();

                    lda.Add(wk);
                }
            }

            return lda.ToArray();

        }
    }
}