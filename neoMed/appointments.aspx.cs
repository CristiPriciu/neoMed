using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static neoMed.AppointmentsDataAccess;

namespace neoMed
{
    public partial class Appointments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Face ca grid-ul sa se populeze doar prima data cand se incarca pagina
            if (!IsPostBack)
            {
                BindGridViewData();
            }
        }

        //Populeaza grid-ul utilizand metoda GetAllProcedures din clasa ProceduresDataAccessLayer
        private void BindGridViewData()
        {
            GridView1.DataSource = AppointmentsDataAccessLayer.GetAllAppointments();
            GridView1.DataBind();
        }

        //Controleaza ce se intampla in grid utilizant metodele din procedures.aspx
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRow")
            {
                int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
                GridView1.EditIndex = rowIndex;
                BindGridViewData();
            }
            else if (e.CommandName == "DeleteRow")
            {
                AppointmentsDataAccessLayer.DeleteProcedure(Convert.ToInt32(e.CommandArgument));
                BindGridViewData();
            }
            else if (e.CommandName == "CancelUpdate")
            {
                GridView1.EditIndex = -1;
                BindGridViewData();
            }
            else if (e.CommandName == "UpdateRow")
            {
                int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;

                int Id = Convert.ToInt32(e.CommandArgument);
                int client_id = Convert.ToInt32(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox2")).Text);
                DateTime date = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox3")).Text);
                bool mail_sent = ((CheckBox)GridView1.Rows[rowIndex].FindControl("Checkbox1")).Checked;
                bool honored = ((CheckBox)GridView1.Rows[rowIndex].FindControl("Checkbox2")).Checked;
                bool paid = ((CheckBox)GridView1.Rows[rowIndex].FindControl("Checkbox3")).Checked;
                int total_paid = Convert.ToInt32(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox7")).Text);

                AppointmentsDataAccessLayer.UpdateProcedure(Id, client_id, date, mail_sent, honored, paid, total_paid);

                GridView1.EditIndex = -1;
                BindGridViewData();
            }
            else if (e.CommandName == "InsertRow")
            {
                int client_id = Convert.ToInt32(((TextBox)GridView1.FooterRow.FindControl("txtClient_id")).Text);
                DateTime date = Convert.ToDateTime(((TextBox)GridView1.FooterRow.FindControl("txtDate")).Text);
                bool mail_sent = ((CheckBox)GridView1.FooterRow.FindControl("txtMailSent")).Checked;
                bool honored = ((CheckBox)GridView1.FooterRow.FindControl("txtHonored")).Checked;
                bool paid = ((CheckBox)GridView1.FooterRow.FindControl("txtPaid")).Checked;
                int total_paid = Convert.ToInt32(((TextBox)GridView1.FooterRow.FindControl("txtTotalPaid")).Text);

                AppointmentsDataAccessLayer.InsertProcedure(client_id, date, mail_sent, honored, paid, total_paid);

                BindGridViewData();
            }
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