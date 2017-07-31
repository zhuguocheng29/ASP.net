using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using uav.Models;

namespace uav.Controllers
{
    public class OrderController : Controller
    {
        private CustomerEntities db = new CustomerEntities();

        //
        // GET: /Order/

        public ActionResult Index()
        {
            var orders = db.Orders.Include(o => o.User);
            //return View(orders.ToList());
            return View(orders.OrderBy(p=>p.buy_date).ToList());
        }

        //
        // GET: /Order/Details/5

        public ActionResult Details(int id = 0)
        {
            Order order = db.Orders.Find(id);
            if (order == null)
            {
                return HttpNotFound();
            }
            return View(order);
        }

        //
        // GET: /Order/Create

        public ActionResult Create()
        {
            ViewBag.uid = new SelectList(db.Users, "Id", "Username");
            return View();
        }

        //
        // POST: /Order/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Order order)
        {
            if (ModelState.IsValid)
            {
                db.Orders.Add(order);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.uid = new SelectList(db.Users, "Id", "Username", order.uid);
            return View(order);
        }

        //
        // GET: /Order/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Order order = db.Orders.Find(id);
            if (order == null)
            {
                return HttpNotFound();
            }
            ViewBag.uid = new SelectList(db.Users, "Id", "Username", order.uid);
            return View(order);
        }

        //
        // POST: /Order/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Order order)
        {
            if (ModelState.IsValid)
            {
                db.Entry(order).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.uid = new SelectList(db.Users, "Id", "Username", order.uid);
            return View(order);
        }

        //
        // GET: /Order/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Order order = db.Orders.Find(id);
            if (order == null)
            {
                return HttpNotFound();
            }
            return View(order);
        }

        //
        // POST: /Order/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Order order = db.Orders.Find(id);
            db.Orders.Remove(order);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }


        //public ActionResult Search(String id)
        //{
        //    var Username = id;
        //    var users = from s in db.Orders
        //                where s.User.Username.Contains(Username)
        //                select s;
        //    return View(users);
        public ActionResult Search(String Username)
        {
            
            var users = from s in db.Orders
                        where s.User.Username.Contains(Username)
                        select s;
            return View(users);
        }
    }
}