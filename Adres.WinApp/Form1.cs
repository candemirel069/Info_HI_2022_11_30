using Adres.Data.DAL;
using Adres.WinApp.Models;
using Adres.WinApp.Repos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Adres.WinApp
{
    public partial class Form1 : Form
    {
        private Db db = new Db();
        private KisiRepo kisiRepo = new KisiRepo();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            FillKisiListesi();
            FillSehir();
        }

        private void FillKisiListesi()
        {
            lst_Kisi.DataSource = kisiRepo.GetList();
            lst_Kisi.DisplayMember = "TamAdi";
            lst_Kisi.ValueMember = "Id";
        }
        private void FillSehir()
        {
            DataTable dt = db.GetDataTable("select * from Sehir");
            drp_Sehir.DataSource = dt;
            drp_Sehir.DisplayMember = "Adi";
            drp_Sehir.ValueMember = "Id";
        }

        private void drp_Sehir_SelectedIndexChanged(object sender, EventArgs e)
        {
            var dr = ((DataRowView)drp_Sehir.SelectedItem);
            var sehirId = Convert.ToInt32(dr["Id"]);
            DataTable dt = db.GetDataTable("select * from Ilce where SehirId =" + sehirId);
            drp_Ilce.DataSource = dt;
            drp_Ilce.DisplayMember = "Adi";
            drp_Ilce.ValueMember = "Id";
        }

        private void lst_Kisi_SelectedIndexChanged(object sender, EventArgs e)
        {
            var dr = (Kisi)lst_Kisi.SelectedItem;
            var kisiId = dr.Id;
            var kisi = kisiRepo.Get(kisiId);
            lbl_Adi.Text = kisi.Adi;
            lbl_Soyadi.Text = kisi.Soyadi;
            lbl_Adres.Text = kisi.Adres;
        }
    }
}
