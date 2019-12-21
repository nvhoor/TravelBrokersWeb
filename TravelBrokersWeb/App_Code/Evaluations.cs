using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace TravelBrokersWeb.App_Code
{
    public class Evaluations
    {
        public void deleteEvaluations(string idEvaluations)
        {
            SqlCommand cmd = new SqlCommand("delete from Evaluations where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idEvaluations);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}