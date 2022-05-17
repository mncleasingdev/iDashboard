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
    public partial class DetailApplicationBranch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class DetailAppBranch
        {
            public string ApplicNo { get; set; }
            public string ClientName { get; set; }
            public string Branch { get; set; }
            public string NTF { get; set; }
            public string Tenor { get; set; }
            public string Status { get; set; }
            public string LamaProses { get; set; }
        }

        [WebMethod]
        public static DetailAppBranch[] DetailLoadBranch(string paramType, int paramMonth, int paramYear, string paramBranch, string paramValue)
        {

            List<DetailAppBranch> lda = new List<DetailAppBranch>();
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spDetailApplicationByBranch", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamType", SqlDbType.VarChar).Value = paramType;
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = paramMonth;
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = paramYear;
                cmd.Parameters.AddWithValue("@ParamBranch", SqlDbType.VarChar).Value = paramBranch;
                cmd.Parameters.AddWithValue("@ParamValue", SqlDbType.VarChar).Value = paramValue;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();


                foreach (DataRow dr in dt.Rows)
                {
                    DetailAppBranch da = new DetailAppBranch();
                    da.ApplicNo = dr["ApplicNo"].ToString();
                    da.ClientName = dr["ClientName"].ToString();
                    da.Branch = dr["Branch"].ToString();
                    da.NTF = dr["NTF"].ToString();
                    da.Tenor = dr["Tenor"].ToString();
                    da.Status = dr["Status"].ToString();

                    lda.Add(da);
                }
            }

            return lda.ToArray();

        }
    }
}