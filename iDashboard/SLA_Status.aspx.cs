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
    public partial class SLA_Status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class slastatus
        {
            public string Branch { get; set; }
            public string Brhmgr { get; set; }
            public string CA { get; set; }
            public string Holding { get; set; }
            public string AM { get; set; }
            public string MeetingKomite { get; set; }
            public string PrepareCetakKontrak { get; set; }
            public string Signing { get; set; }
            public string PreparePO { get; set; }
            public string Tagihan { get; set; }
            public string Finance { get; set; }
            public string Credam { get; set; }
            public string Done { get; set; }
        }

        [WebMethod]
        public static slastatus[] ActivityLoad()
        {

            List<slastatus> lda = new List<slastatus>();
            DataTable dt = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["ConnString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSummaryApplicationByBranch", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParamType", SqlDbType.VarChar).Value = "STATUS_CONVEN";
                cmd.Parameters.AddWithValue("@ParamMonth", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Month);
                cmd.Parameters.AddWithValue("@ParamYear", SqlDbType.Date).Value = Convert.ToInt32(DateTime.Now.Year);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                conn.Close();


                foreach (DataRow dr in dt.Rows)
                {
                    slastatus wk = new slastatus();
                    wk.Branch = dr["Branch"].ToString();
                    wk.Brhmgr = dr["BRH_MGR"].ToString();
                    wk.CA = dr["CA"].ToString();
                    wk.Holding = dr["HOLDING"].ToString();
                    wk.AM = dr["AM"].ToString();
                    wk.MeetingKomite = dr["MEETING_KOMITE"].ToString();
                    wk.PrepareCetakKontrak = dr["PREPARE_CETAK_KONTRAK"].ToString();
                    wk.Signing = dr["SIGNING"].ToString();
                    wk.PreparePO = dr["PREPARE_PO"].ToString();
                    wk.Tagihan = dr["TAGIHAN"].ToString();
                    wk.Credam = dr["CREDAM"].ToString();
                    wk.Finance = dr["FINANCE"].ToString();
                    wk.Done = dr["DONE"].ToString();

                    lda.Add(wk);
                }
            }

            return lda.ToArray();
        }
    }
}