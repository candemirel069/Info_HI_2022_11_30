using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Adres.WinApp.Models
{
    public class Kisi
    {
        public int Id { get; set; }
        public string Adi { get; set; }
        public string Soyadi { get; set; }
        public string Adres { get; set; }
        public int IlceId { get; set; }

        public string TamAdi => Adi + " " + Soyadi;
    }
}
