using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplicationSales.Models
{
    public class orderitems
    {
        public int? orderid { get; set; }
        public string customername { get; set; }
        public string itemname { get; set; }
    }
}