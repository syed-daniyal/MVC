using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplicationSales.Models
{
    public class ordersalesman
    {
        public int order_id { get; set; }
        public string customername { get; set; }
        public string city { get; set; }
        public int? code { get; set; }
        public string salesman_name { get; set; }
    }
}