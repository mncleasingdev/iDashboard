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
    public partial class CashInSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class SumMonth
        {
            public int IMonth { get; set; }
            public string Keterangan { get; set; }
            public string tgl_1 { get; set; }
            public string tgl_2 { get; set; }
            public string tgl_3 { get; set; }
            public string tgl_4 { get; set; }
            public string tgl_5 { get; set; }
            public string tgl_6 { get; set; }
            public string tgl_7 { get; set; }
            public string tgl_8 { get; set; }
            public string tgl_9 { get; set; }
            public string tgl_10 { get; set; }
            public string tgl_11 { get; set; }
            public string tgl_12 { get; set; }
            public string tgl_13 { get; set; }
            public string tgl_14 { get; set; }
            public string tgl_15 { get; set; }
            public string tgl_16 { get; set; }
            public string tgl_17 { get; set; }
            public string tgl_18 { get; set; }
            public string tgl_19 { get; set; }
            public string tgl_20 { get; set; }
            public string tgl_21 { get; set; }
            public string tgl_22 { get; set; }
            public string tgl_23 { get; set; }
            public string tgl_24 { get; set; }
            public string tgl_25 { get; set; }
            public string tgl_26 { get; set; }
            public string tgl_27 { get; set; }
            public string tgl_28 { get; set; }
            public string tgl_29 { get; set; }
            public string tgl_30 { get; set; }
            public string tgl_31 { get; set; }

        }

        public class SumYear
        {
            public string IMonth { get; set; }
            public string Keterangan { get; set; }
            public string tgl_1 { get; set; }
            public string tgl_2 { get; set; }
            public string tgl_3 { get; set; }
            public string tgl_4 { get; set; }
            public string tgl_5 { get; set; }
            public string tgl_6 { get; set; }
            public string tgl_7 { get; set; }
            public string tgl_8 { get; set; }
            public string tgl_9 { get; set; }
            public string tgl_10 { get; set; }
            public string tgl_11 { get; set; }
            public string tgl_12 { get; set; }
            public string tgl_13 { get; set; }
            public string tgl_14 { get; set; }
            public string tgl_15 { get; set; }
            public string tgl_16 { get; set; }
            public string tgl_17 { get; set; }
            public string tgl_18 { get; set; }
            public string tgl_19 { get; set; }
            public string tgl_20 { get; set; }
            public string tgl_21 { get; set; }
            public string tgl_22 { get; set; }
            public string tgl_23 { get; set; }
            public string tgl_24 { get; set; }
            public string tgl_25 { get; set; }
            public string tgl_26 { get; set; }
            public string tgl_27 { get; set; }
            public string tgl_28 { get; set; }
            public string tgl_29 { get; set; }
            public string tgl_30 { get; set; }
            public string tgl_31 { get; set; }

        }

        public class SumYearHt
        {
            public string type { get; set; }
            public string label { get; set; }
            public List<SumYear> data { get; set; }
            public string fill { get; set; }
            public string borderColor { get; set; }
            public string backgroundColor { get; set; }
        }

        [WebMethod]
        public static SumMonth[] LoadDataSummaryMonthly()
        {

            List<SumMonth> lda = new List<SumMonth>();
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSummaryCashInByDay", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamType", SqlDbType.VarChar).Value = "PaymentAging";
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Month);
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Year);
                cmd.Parameters.AddWithValue("@ParamDay", SqlDbType.Int).Value = 31;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();


                foreach (DataRow dr in dt.Rows)
                {
                    SumMonth wk = new SumMonth();
                    wk.IMonth = Convert.ToInt32(dr["IMonth"]);
                    wk.Keterangan = dr["Keterangan"].ToString();
                    wk.tgl_1 = dr["1"].ToString();
                    wk.tgl_2 = dr["2"].ToString();
                    wk.tgl_3 = dr["3"].ToString();
                    wk.tgl_4 = dr["4"].ToString();
                    wk.tgl_5 = dr["5"].ToString();
                    wk.tgl_6 = dr["6"].ToString();
                    wk.tgl_7 = dr["7"].ToString();
                    wk.tgl_8 = dr["8"].ToString();
                    wk.tgl_9 = dr["9"].ToString();
                    wk.tgl_10 = dr["10"].ToString();
                    wk.tgl_11 = dr["11"].ToString();
                    wk.tgl_12 = dr["12"].ToString();
                    wk.tgl_13 = dr["13"].ToString();
                    wk.tgl_14 = dr["14"].ToString();
                    wk.tgl_15 = dr["15"].ToString();
                    wk.tgl_16 = dr["16"].ToString();
                    wk.tgl_17 = dr["17"].ToString();
                    wk.tgl_18 = dr["18"].ToString();
                    wk.tgl_19 = dr["19"].ToString();
                    wk.tgl_20 = dr["20"].ToString();
                    wk.tgl_21 = dr["21"].ToString();
                    wk.tgl_22 = dr["22"].ToString();
                    wk.tgl_23 = dr["23"].ToString();
                    wk.tgl_24 = dr["24"].ToString();
                    wk.tgl_25 = dr["25"].ToString();
                    wk.tgl_26 = dr["26"].ToString();
                    wk.tgl_27 = dr["27"].ToString();
                    wk.tgl_28 = dr["28"].ToString();
                    wk.tgl_29 = dr["29"].ToString();
                    wk.tgl_30 = dr["30"].ToString();
                    wk.tgl_31 = dr["31"].ToString();

                    lda.Add(wk);
                }
            }

            return lda.ToArray();
        }


        [WebMethod]
        public static SumMonth[] LoadDataSummaryYear()
        {

            List<SumMonth> lda = new List<SumMonth>();
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSummaryCashInByDay", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamType", SqlDbType.VarChar).Value = "Yearly";
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Month);
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Year);
                cmd.Parameters.AddWithValue("@ParamDay", SqlDbType.Int).Value = 31;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();


                foreach (DataRow dr in dt.Rows)
                {
                    SumMonth wk = new SumMonth();
                    wk.IMonth = Convert.ToInt32(dr["IMonth"]);
                    wk.Keterangan = dr["Keterangan"].ToString();
                    wk.tgl_1 = dr["1"].ToString();
                    wk.tgl_2 = dr["2"].ToString();
                    wk.tgl_3 = dr["3"].ToString();
                    wk.tgl_4 = dr["4"].ToString();
                    wk.tgl_5 = dr["5"].ToString();
                    wk.tgl_6 = dr["6"].ToString();
                    wk.tgl_7 = dr["7"].ToString();
                    wk.tgl_8 = dr["8"].ToString();
                    wk.tgl_9 = dr["9"].ToString();
                    wk.tgl_10 = dr["10"].ToString();
                    wk.tgl_11 = dr["11"].ToString();
                    wk.tgl_12 = dr["12"].ToString();
                    wk.tgl_13 = dr["13"].ToString();
                    wk.tgl_14 = dr["14"].ToString();
                    wk.tgl_15 = dr["15"].ToString();
                    wk.tgl_16 = dr["16"].ToString();
                    wk.tgl_17 = dr["17"].ToString();
                    wk.tgl_18 = dr["18"].ToString();
                    wk.tgl_19 = dr["19"].ToString();
                    wk.tgl_20 = dr["20"].ToString();
                    wk.tgl_21 = dr["21"].ToString();
                    wk.tgl_22 = dr["22"].ToString();
                    wk.tgl_23 = dr["23"].ToString();
                    wk.tgl_24 = dr["24"].ToString();
                    wk.tgl_25 = dr["25"].ToString();
                    wk.tgl_26 = dr["26"].ToString();
                    wk.tgl_27 = dr["27"].ToString();
                    wk.tgl_28 = dr["28"].ToString();
                    wk.tgl_29 = dr["29"].ToString();
                    wk.tgl_30 = dr["30"].ToString();
                    wk.tgl_31 = dr["31"].ToString();

                    lda.Add(wk);
                }
            }

            return lda.ToArray();
        }


        [WebMethod]
        public static string LoadDataSummaryYearly()
        {
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSummaryCashInByDay", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamType", SqlDbType.VarChar).Value = "Yearly";
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Month);
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Year);
                cmd.Parameters.AddWithValue("@ParamDay", SqlDbType.Int).Value = 31;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();
            }
            return JsonConvert.SerializeObject(dt);
        }
    }
}