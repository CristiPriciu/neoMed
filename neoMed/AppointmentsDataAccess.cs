using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace neoMed
{
    public class AppointmentsDataAccess
    {
        public class Appointments
        {
            public int Id { get; set; }
            public int client_id { get; set; }
            public DateTime date { get; set; }
            public bool mail_sent { get; set; }
            public bool honored { get; set; }
            public bool paid { get; set; }
            public double total_paid { get; set; }
        }

        public class AppointmentsDataAccessLayer
        {
            //Metoda pentru populat grid-ul
            public static List<Appointments> GetAllAppointments()
            {
                List<Appointments> listAppointments = new List<Appointments>();

                string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("Select * from tblAppointments", con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        Appointments appointment = new Appointments();
                        appointment.Id = Convert.ToInt32(rdr["Id"]);
                        appointment.client_id = Convert.ToInt32(rdr["client_id"]);
                        appointment.date = Convert.ToDateTime(rdr["date"]);
                        appointment.mail_sent = Convert.ToBoolean(rdr["mail_sent"]);
                        appointment.honored = Convert.ToBoolean(rdr["honored"]);
                        appointment.paid = Convert.ToBoolean(rdr["paid"]);
                        appointment.total_paid = Convert.ToInt32(rdr["total_paid"]);
                        listAppointments.Add(appointment);
                    }
                    con.Close();
                }

                return listAppointments;
            }

            // Metoda pentru Delete
            public static void DeleteProcedure(int Id)
            {
                string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand
                        ("Delete from tblAppointments where Id = @Id", con);
                    SqlParameter param = new SqlParameter("@Id", Id);
                    cmd.Parameters.Add(param);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Metoda pentru Update
            public static int UpdateProcedure(int Id, int client_id, DateTime date, bool mail_sent, bool honored, bool paid, int total_paid)
            {
                string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    string updateQuery = "Update tblAppointments SET client_id = @client_id," +
                        "date = @date, " + "mail_sent = @mail_sent, " + "honored = @honored, " + "paid = @paid, " + "total_paid = @total_paid WHERE Id = @Id";
                    SqlCommand cmd = new SqlCommand(updateQuery, con);
                    SqlParameter paramProcedureId = new
                        SqlParameter("@Id", Id);
                    cmd.Parameters.Add(paramProcedureId);
                    SqlParameter paramClientId = new SqlParameter("@client_id", client_id);
                    cmd.Parameters.Add(paramClientId);
                    SqlParameter paramDate = new SqlParameter("@date", date);
                    cmd.Parameters.Add(paramDate);
                    SqlParameter paramMailSent = new SqlParameter("@mail_sent", mail_sent);
                    cmd.Parameters.Add(paramMailSent);
                    SqlParameter paramHonored = new SqlParameter("@honored", honored);
                    cmd.Parameters.Add(paramHonored);
                    SqlParameter paramPaid = new SqlParameter("@paid", paid);
                    cmd.Parameters.Add(paramPaid);
                    SqlParameter paramTotalPaid = new SqlParameter("@total_paid", total_paid);
                    cmd.Parameters.Add(paramTotalPaid);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }

            // Metoda pentru insert
            public static int InsertProcedure(int client_id, DateTime date, bool mail_sent, bool honored, bool paid, int total_paid)
            {
                string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    string updateQuery = "Insert into tblAppointments (client_id, date, mail_sent, honored, paid, total_paid)" +
                        " values (@client_id, @date, @mail_sent, @honored, @paid, @total_paid)";
                    SqlCommand cmd = new SqlCommand(updateQuery, con);
                    SqlParameter paramClientId = new SqlParameter("@client_id", client_id);
                    cmd.Parameters.Add(paramClientId);
                    SqlParameter paramDate = new SqlParameter("@date", date);
                    cmd.Parameters.Add(paramDate);
                    SqlParameter paramMailSent = new SqlParameter("@mail_sent", mail_sent);
                    cmd.Parameters.Add(paramMailSent);
                    SqlParameter paramHonored = new SqlParameter("@honored", honored);
                    cmd.Parameters.Add(paramHonored);
                    SqlParameter paramPaid = new SqlParameter("@paid", paid);
                    cmd.Parameters.Add(paramPaid);
                    SqlParameter paramTotalPaid = new SqlParameter("@total_paid", total_paid);
                    cmd.Parameters.Add(paramTotalPaid);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }
    }
}