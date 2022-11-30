using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Adres.Data.DAL
{

    public static class DataTableExtention
    {
        public static bool HasRow(this DataTable dt)
        {
            //C# 6+ ///////////////////////////////////////
            return (dt?.Rows.Count > 0);
            
            // kısa yol ///////////////////////////
            //return (dt != null && dt.Rows.Count > 0);

            
            // uzun yol////////////////////////////////
            //if (dt == null)
            //    return false;

            //if (dt.Rows.Count > 0)
            //    return true;
            //else
            //    return false;

        }
    }
}
//return (dt != null && dt.Rows.Count > 0);