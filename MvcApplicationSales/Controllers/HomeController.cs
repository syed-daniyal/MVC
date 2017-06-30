using System;
using System.Data;
using System.Data.Entity;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MvcApplicationSales.Models;

namespace MvcApplicationSales.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        linqptcEntities db = new linqptcEntities();

        public ActionResult Index()
        {
            Salesman smnew = new Salesman();
            smnew.salesman_id = 50;
            smnew.salesman_name = "Barrack";
            smnew.city = "Hawaili";
            smnew.code = 023;
            db.Salesmen.AddObject(smnew);
        //    db.SaveChanges();

         //   var sm = db.Salesmen.Where(x=>x.salesman_id == 1);
            
            //sm.ToList().ForEach(
            //Salesman sm = db.Salesmen.Where(x=>x.salesman_id == 1).First();
            //Salesman sm1 = db.Salesmen.Where(x => x.salesman_id == 2).First();
            //Salesman sm2 = db.Salesmen.Where(x => x.salesman_id == 3).First();
            //List<Salesman> l1 = new List<Salesman>();
            //l1.Add(sm);
            //l1.Add(sm1);
            //l1.Add(sm2);
            
            return View(db.Salesmen.ToList());
        }



        [HttpGet]
        public ActionResult OrderItems()
        {
            List<orderitems> model = new List<orderitems>();

            var orderss = (from items in db.Items
                     join orders in db.Orders on items.order_id equals orders.order_id
                     select new { items.order_id, orders.customer_name, items.title }).ToList();

            foreach (var item in orderss)
            {
                orderitems o = new orderitems();
                o.customername = item.customer_name;
                o.itemname = item.title;
                o.orderid = item.order_id;
                model.Add(o);
            }
            return View(model);
        }

        [HttpGet]
        public ActionResult OrderSalesman()
        { 
        
            List <ordersalesman> model = new List<ordersalesman>();
            var salesman = (from orders in db.Orders
                           join sales in db.Salesmen
                           on new { orders.city, orders.code } equals new { sales.city, sales.code }
                           select new { orders.order_id, orders.customer_name, orders.city, orders.code, sales.salesman_name }).ToList();

            foreach (var sales in salesman)
            {
                ordersalesman os = new ordersalesman();
                os.order_id = sales.order_id;
                os.customername = sales.customer_name;
                os.city = sales.city;
                os.code = sales.code;
                os.salesman_name = sales.salesman_name;
                model.Add(os);
            }

            return View(model);
        
        }


        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Create(Salesman sm)
        {
            if (ModelState.IsValid)
            {
                db.Salesmen.AddObject(sm);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sm);
        }


        

        
        public ActionResult Edit(int id)
        {
            if (id == null)
                return View();
            Salesman sm1 = db.Salesmen.Where(x => x.salesman_id == id).FirstOrDefault();
            if (sm1 == null)
                return View();
            return View(sm1);
        }

        [HttpPost]
        public ActionResult Edit(Salesman sm)
        {
            Salesman smupdate = db.Salesmen.Where(x => x.salesman_id == sm.salesman_id).FirstOrDefault();
            smupdate.salesman_name = sm.salesman_name;
            smupdate.city = sm.city;
            smupdate.code = sm.code;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id)
        {
            Salesman sm1 = db.Salesmen.Where(x => x.salesman_id == id).FirstOrDefault();
            db.Salesmen.DeleteObject(sm1);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}
