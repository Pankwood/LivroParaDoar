#region Licence
//===================================================================================
// Pankwood
//===================================================================================
// Copyright (c) 2016, Pankwood.  All Rights Reserved.
//===================================================================================
#endregion

#region References
using LivroParaDoar.Model;
using Newtonsoft.Json;
using System;
using System.IO;
#endregion

namespace LivroParaDoar
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RefreshMeasumeter();
                GetMap();
            }

            #region oldData
            //            if (!IsPostBack)
            //            {
            //                DataTable dt = this.GetData(@"select Apelido+' libertou o livro '+ Livro.Livro  as Name, Longitude, Latitude, Apelido+' libertou o livro '+Livro.Livro as Description 
            //                                                from Localizacao 
            //                                                inner join Livro on Livro.CodUsuario = Localizacao.Codusuario
            //                                                inner join Usuario on Usuario.ID = Localizacao.CodUsuario");
            //                rptMarkers.DataSource = dt;
            //                rptMarkers.DataBind();

            //                AtualizaMedidometro();
            //                LimpaCampos();

            //            }
            #endregion
        }

        private void ClearFields()
        {
            edtEmail.Text = String.Empty;
            edtLivro.Text = String.Empty;
            edtNome.Text = String.Empty;
            txtEndereco.Text = String.Empty;
            txtLatitude.Text = String.Empty;
            txtLongitude.Text = String.Empty;
        }

        private void RefreshMeasumeter()
        {
            try
            {
                using (StreamReader sr = new StreamReader(Server.MapPath("~/Content/Data/count.json")))
                {
                    var medidometro = JsonConvert.DeserializeObject<Medidometro>(sr.ReadToEnd());

                    lblCont1.Text = "000." + medidometro.Count;
                    lblCont2.Text = lblCont1.Text;
                    lblCont3.Text = lblCont1.Text;
                    lblCont4.Text = lblCont1.Text;
                }
            }
            catch
            {
                lblCont1.Text = "000.000" ;
                lblCont2.Text = lblCont1.Text;
                lblCont3.Text = lblCont1.Text;
                lblCont4.Text = lblCont1.Text;
            }
        }

        private void GetMap()
        {
            try
            {
                using (StreamReader sr = new StreamReader(Server.MapPath("~/Content/Data/map.json")))
                {
                    var map = JsonConvert.DeserializeObject<LPoint>(sr.ReadToEnd());

                    rptMarkers.DataSource = map.Point;
                    rptMarkers.DataBind();
                }
            }
            catch
            { 
              //Just loading map
            }

            #region oldData
            //SqlCommand cmd = new SqlCommand(query);
            //using (SqlConnection con = new SqlConnection(Session["GBanco"].ToString()))
            //{
            //    using (SqlDataAdapter sda = new SqlDataAdapter())
            //    {
            //        cmd.Connection = con;

            //        sda.SelectCommand = cmd;
            //        using (DataTable dt = new DataTable())
            //        {
            //            sda.Fill(dt);
            //            return dt;
            //        }
            //    }
            //}
            #endregion
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClearFields();

            #region oldData
            //SqlConnection conn = new SqlConnection(Session["GBanco"].ToString());
            //SqlCommand Command = new SqlCommand("", conn);
            //SqlDataReader DR;

            //try
            //{
            //    conn.Open();

            //    String sql = "insert into Usuario (Apelido, Email) values (@Apelido, @Email)";
            //    Command.Parameters.Clear();
            //    Command.Parameters.Add("Apelido", SqlDbType.VarChar, 0, "@Apelido").Value = edtNome.Text;
            //    Command.Parameters.Add("Email", SqlDbType.VarChar, 0, "@Email").Value = edtEmail.Text;
            //    Command.CommandText = sql;
            //    Command.ExecuteNonQuery();

            //    sql = "select Max(ID) as ID from Usuario";
            //    Command.CommandText = sql;
            //    Command.Parameters.Clear();
            //    DR = Command.ExecuteReader();
            //    DR.Read();
            //    String ID = DR["ID"].ToString();
            //    DR.Close();

            //    sql = "insert into Livro (Livro, CodUsuario) values (@Livro, @CodUsuario)";
            //    Command.Parameters.Clear();
            //    Command.Parameters.Add("Livro", SqlDbType.VarChar, 0, "@Livro").Value = edtLivro.Text;
            //    Command.Parameters.Add("CodUsuario", SqlDbType.VarChar, 0, "@CodUsuario").Value = ID;
            //    Command.CommandText = sql;
            //    Command.ExecuteNonQuery();

            //    sql = "insert into Localizacao (Endereco, Latitude, Longitude, CodUsuario) values (@Endereco, @Latitude, @Longitude, @CodUsuario)";
            //    Command.Parameters.Clear();
            //    Command.Parameters.Add("Endereco", SqlDbType.VarChar, 0, "@Endereco").Value = txtEndereco.Text;
            //    Command.Parameters.Add("Latitude", SqlDbType.VarChar, 0, "@Latitude").Value = txtLatitude.Text;
            //    Command.Parameters.Add("Longitude", SqlDbType.VarChar, 0, "@Longitude").Value = txtLongitude.Text;
            //    Command.Parameters.Add("CodUsuario", SqlDbType.VarChar, 0, "@CodUsuario").Value = ID;
            //    Command.CommandText = sql;
            //    Command.ExecuteNonQuery();

            //    AtualizaMedidometro();
            //    LimpaCampos();
            //}
            //finally
            //{
            //    conn.Close();
            //}
            #endregion
        }

       
    }
}