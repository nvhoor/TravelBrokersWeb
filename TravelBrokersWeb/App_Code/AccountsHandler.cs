using SQLDB;
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
        }
        public void insertAccounts(string username, string password,string avatar,string email,string phoneNumber,string roleID,bool deleted)
        {
            SqlCommand cmd = new SqlCommand("insert into Accounts values (@username,@password,@avatar,@email,@phoneNumber,@roleID,@deleted)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@avatar", avatar);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phoneNumber", phoneNumber);
            cmd.Parameters.AddWithValue("@roleID", roleID);
            cmd.Parameters.AddWithValue("@deleted", deleted);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}