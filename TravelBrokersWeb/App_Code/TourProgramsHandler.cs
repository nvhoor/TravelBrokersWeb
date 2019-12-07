﻿using SQLDB;
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
    }
}