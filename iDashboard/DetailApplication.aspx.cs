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
    public partial class DetailApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string a = Request.Url.AbsolutePath;

            //string paramProduct = this.Request.QueryString["pro"].ToString();
            //string paramWeek = this.Request.QueryString["wk"].ToString();

            //if (this.Request.QueryString["pro"].ToString() != null && this.Request.QueryString["wk"].ToString() != null)
            //{
            //    DetailLoad(paramProduct, paramWeek);
            //}
        }

        public class DetailApp
        {
            public string ApplicNo { get; set; }
            public string ClientName { get; set; }
            public string Branch { get; set; }
            public string NTF { get; set; }
            public string Tenor { get; set; }
            public string Status { get; set; }
            public string GrandTotal { get; set; }
            public string LamaProses { get; set; }
        }

        [WebMethod]
        public static DetailApp[] DetailLoad(string paramType, int paramMonth, int paramYear, string paramProduct, string paramWeek)
        {

            List<DetailApp> lda = new List<DetailApp>();
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spDetailApplicationByProduct", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamType", SqlDbType.VarChar).Value = paramType;
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = paramMonth;
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = paramYear;
                cmd.Parameters.AddWithValue("@ParamProduct", SqlDbType.VarChar).Value = paramProduct;
                cmd.Parameters.AddWithValue("@ParamValue", SqlDbType.VarChar).Value = paramWeek;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();


                foreach (DataRow dr in dt.Rows)
                {
                    DetailApp da = new DetailApp();
                    da.ApplicNo = dr["ApplicNo"].ToString();
                    da.ClientName = dr["ClientName"].ToString();
                    da.Branch = dr["Branch"].ToString();
                    da.NTF = dr["NTF"].ToString();
                    da.Tenor = dr["Tenor"].ToString();
                    da.Status = dr["Status"].ToString();
                    da.LamaProses = dr["LamaProses"].ToString();

                    lda.Add(da);
                }
            }

            return lda.ToArray();

        }
    }
}