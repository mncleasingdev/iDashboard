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
    public partial class PencairanProdukHaji : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class pipeProd
        {
            public string Keterangan { get; set; }
            public string HETO { get; set; }
            public string MEDICAL { get; set; }
            public string SCF { get; set; }
            public string FACTORING { get; set; }
            public string HAJI { get; set; }
            public string GrandTotal { get; set; }
        }

        [WebMethod]
        public static pipeProd[] ActivityLoad1()
        {

            List<pipeProd> lda = new List<pipeProd>();
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSummaryApplicationByBudget", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Month);
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Year);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();


                foreach (DataRow dr in dt.Rows)
                {
                    pipeProd wk = new pipeProd();
                    wk.Keterangan = dr["Keterangan"].ToString();
                    wk.HETO = dr["HETO"].ToString();
                    wk.MEDICAL = dr["MEDICAL"].ToString();
                    wk.SCF = dr["SCF"].ToString();
                    wk.FACTORING = dr["FACTORING"].ToString();
                    wk.HAJI = dr["HAJI"].ToString();
                    wk.GrandTotal = dr["GrandTotal"].ToString();

                    lda.Add(wk);
                }
            }

            return lda.ToArray();
        }

        [WebMethod]
        public static string LoadDataPencairan()
        {
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSummaryDisbursementByProduct", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Month);
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Year);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();
            }
            return JsonConvert.SerializeObject(dt);
        }

        [WebMethod]
        public static string LoadDataTopMarketing()
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
                cmd.Parameters.AddWithValue("@ParamBranch", SqlDbType.VarChar).Value = "HAJI";
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();
            }
            return JsonConvert.SerializeObject(dt);
        }
    }
}