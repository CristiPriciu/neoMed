using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace neoMed
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnClients_Click(object sender, EventArgs e)
        {
            Response.Redirect("clients.aspx");
        }

        protected void btnAppointments_Click(object sender, EventArgs e)
        {
            Response.Redirect("appointments.aspx");
        }

        protected void btnProcedures_Click(object sender, EventArgs e)
        {
            Response.Redirect("procedures.aspx");
        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
    }
}