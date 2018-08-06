using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using neoMed;

namespace neoMed
{
    public partial class procedures : System.Web.UI.Page
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
            GridView1.DataSource = ProceduresDataAccessLayer.GetAllProcedures();
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
                ProceduresDataAccessLayer.DeleteProcedure(Convert.ToInt32(e.CommandArgument));
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
                string name = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox2")).Text;
                int cost = Convert.ToInt32(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox3")).Text);

                ProceduresDataAccessLayer.UpdateProcedure(Id, name, cost);

                GridView1.EditIndex = -1;
                BindGridViewData();
            }
            else if (e.CommandName == "InsertRow")
            {
                string name = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
                int cost = Convert.ToInt32(((TextBox)GridView1.FooterRow.FindControl("txtCost")).Text);

                ProceduresDataAccessLayer.InsertProcedure(name, cost);

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