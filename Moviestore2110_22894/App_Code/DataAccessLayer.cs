using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;



    public class DataAccessLayer
    {
        private readonly string _conString;
        public DataAccessLayer()
        {
            _conString =
            WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        }

        public SqlDataReader GetMovies()
        {
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            // Call the stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "MovieSelect";
            con.Open();
            return cmd.ExecuteReader();
        }

    public DataSet GetUsers()
    {
        SqlConnection con = new SqlConnection(_conString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        // Call the stored procedure
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "ListUsers";
        SqlDataAdapter dad = new SqlDataAdapter(cmd);
        DataSet dstUsers = new DataSet();
        using (dad)
        {
            dad.Fill(dstUsers);
        }
        return dstUsers;
    }

    public SqlDataReader GetEntries()
    {
        SqlConnection con = new SqlConnection(_conString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        // Call the ViewReview stored procedure
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "ViewReview";
        con.Open();
        return cmd.ExecuteReader(CommandBehavior.CloseConnection);
    }

    public void AddEntry(string IPAddress, int User_Id, string comment)
    {
        SqlConnection con = new SqlConnection(_conString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        // Call the AddReview stored procedure
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "AddReview";
        DateTime thisDay = DateTime.Now;
        cmd.Parameters.AddWithValue("@ip", IPAddress);
        cmd.Parameters.AddWithValue("@uid", User_Id);
        cmd.Parameters.AddWithValue("@com", comment);
        cmd.Parameters.AddWithValue("@dt", thisDay);
        using (con)
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }

}
