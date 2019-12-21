﻿using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class AccountsHandler
    {
        public void deleteAccount(string username)
        {
            SqlCommand cmd = new SqlCommand("delete from Account where username=@username");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", username);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}