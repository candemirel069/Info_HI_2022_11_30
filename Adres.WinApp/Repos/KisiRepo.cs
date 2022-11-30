using Adres.Data.DAL;
using Adres.WinApp.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Adres.WinApp.Repos
{
    public class KisiRepo
    {
        private Db db = new Db();
        public List<Kisi> GetList()
        {
            var data = db.GetDataTable("Select * from  kisi");
            List<Kisi> result = new List<Kisi>();
            foreach (DataRow rw in data.Rows)
            {
                Kisi kisi = new Kisi
                {
                    Id = Convert.ToInt32(rw["Id"]),
                    Adi = rw["Adi"].ToString(),
                    Soyadi = rw["Soyadi"].ToString(),
                    Adres = rw["Adres"].ToString(),
                    IlceId = Convert.ToInt32(rw["IlceId"].ToString())
                };
                result.Add(kisi);
            }
            return result;
        }
        public Kisi Get(int kisiId)
        {
            var data = db.GetDataTable("Select * from  kisi where Id=" + kisiId);
            List<Kisi> result = new List<Kisi>();
            var rw = data.Rows[0];
            Kisi kisi = new Kisi
            {
                Id = Convert.ToInt32(rw["Id"]),
                Adi = rw["Adi"].ToString(),
                Soyadi = rw["Soyadi"].ToString(),
                Adres = rw["Adres"].ToString(),
                IlceId = Convert.ToInt32(rw["IlceId"].ToString())
            };

            return kisi;
        }
    }
}
