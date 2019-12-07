using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class TourProgramsHandler
    {
        public void deleteTourProgram(string idTourProgram)
        {
            SqlCommand cmd = new SqlCommand("delete from TourPrograms where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTourProgram);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}