using SQLDB;
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
        public DataTable getListTourPrograms(string tourID)
        {
            SqlCommand cmd = new SqlCommand("select id, orderNumber, date, title from TourPrograms where tourID = @tourID");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tourID", tourID);
            return SQLDB.SQLDB.getData(cmd);
        }
        public void insertTourProgram(string id, DateTime date, string orderNumber, string title, string description, string tourID)
        {
            SqlCommand cmd = new SqlCommand("insert into TourPrograms values (@id,@date,@orderNumber,@title,@description,@tourID)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@orderNumber", orderNumber);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@tourID", tourID);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public void deleteTourProgram(string idTourProgram)
        {
            SqlCommand cmd = new SqlCommand("delete from TourPrograms where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTourProgram);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}