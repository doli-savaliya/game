using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Game.Models;
using System.Data.Entity;
using Game.ViewModel;

namespace Game.Controllers
{
    public class GameController : Controller
    {
        Gameentity dbcon = new Gameentity();
        // GET: Game
        public ActionResult Index()
        {
            return View();

        }
        public ActionResult Displaygrid()
        {

            var UserGamelist = (from a in dbcon.UserGames
                                join b in dbcon.countries on a.Country_Id equals b.id
                                join c in dbcon.states on a.State_Id equals c.id
                                join d in dbcon.cities on a.City_Id equals d.id
                                join e in dbcon.Gametypes on a.gametype_Id equals e.Id

                                select new
                                {
                                    a.Firstname,
                                    a.lastname,
                                    Countryname = b.name,
                                    Statename = c.name,
                                    cityname= d.name,
                                    e.Gametypename,
                                    a.Gamename,
                                    a.ID

                                }).ToList();
            var countrylistx = UserGamelist.ToList().Select(c => new displayusermodel
            {
                Firstname= c.Firstname,
                lastname =c.lastname,
                countryname=c.Countryname,
                statename= c.Statename,
                cityname=c.cityname,
                Gamename =c.Gamename,
                gametype=c.Gametypename,
                ID=c.ID

            }).ToList();
            return View(countrylistx);


        }

        [HttpGet]
        public ActionResult CreateGame()
        {
            
            var country = dbcon.countries.ToList().Select(c => new SelectListItem
            {
                Text = c.name.ToString(),
                Value = c.id.ToString(),
            }).ToList();

            ViewBag.country = country;

            var Statelist = from p in dbcon.states
                            select new { p.id, p.name, };
            var Statelistx = Statelist.ToList().Select(c => new SelectListItem
            {
                Text = c.name.ToString(),
                Value = c.id.ToString(),
            }).ToList();

            ViewBag.viewstatelist = Statelistx;

            var Citylist = from p in dbcon.cities
                            select new { p.id, p.name, };
            var Citylistx = Citylist.ToList().Select(c => new SelectListItem
            {
                Text = c.name.ToString(),
                Value = c.id.ToString(),
            }).ToList();

            ViewBag.viewcitylist = Citylistx;

            var Gametype = dbcon.Gametypes.ToList().Select(c => new SelectListItem
            {
                Text = c.Gametypename.ToString(),
                Value = c.Id.ToString(),
            }).ToList();

            ViewBag.Gametype = Gametype;
            
            return View();
        }
        
        public ActionResult CreateGame(UserGame username)
        {
            UserGame Userdetail = new UserGame();
            Userdetail.Firstname = username.Firstname;
            Userdetail.lastname = username.lastname;
            Userdetail.Country_Id = username.Country_Id;
            Userdetail.State_Id = username.State_Id;
            Userdetail.City_Id = username.City_Id;
            Userdetail.gametype_Id = username.gametype_Id;
            Userdetail.Gamename = username.Gamename;
            dbcon.UserGames.Add(Userdetail);
            dbcon.SaveChanges();
            return RedirectToAction("CreateGame", "Game");
          

        }

        [HttpGet]
        public ActionResult EditGame(int id)
        {
            UserGame usergamelist = new UserGame();
            UserGame usergame = dbcon.UserGames.Where(x => x.ID == id).FirstOrDefault();

            usergamelist.Firstname = usergame.Firstname;
            usergamelist.lastname = usergame.lastname;
            usergamelist.Gamename = usergame.Gamename;
            usergame.gametype_Id = usergame.gametype_Id;

            int co_id = Convert.ToInt32(usergame.Country_Id);
            int st_id = Convert.ToInt32(usergame.State_Id);
            int ct_id = Convert.ToInt32(usergame.City_Id);
            int gm_id = Convert.ToInt32(usergame.gametype_Id);

            var country = dbcon.countries.ToList().Select(c => new SelectListItem
            {
                Text = c.name.ToString(),
                Value = c.id.ToString(),
                Selected = (c.id == co_id)
            }).ToList();

            ViewBag.country = country;

            var Statelist = from p in dbcon.states
                            select new { p.id, p.name, };
            var Statelistx = Statelist.ToList().Select(c => new SelectListItem
            {
                Text = c.name.ToString(),
                Value = c.id.ToString(),
                Selected = (c.id == st_id)

            }).ToList();

            ViewBag.viewstatelist = Statelistx;

            var Citylist = from p in dbcon.cities
                           select new { p.id, p.name, };
            var Citylistx = Citylist.ToList().Select(c => new SelectListItem
            {
                Text = c.name.ToString(),
                Value = c.id.ToString(),
                Selected = (c.id == ct_id)
            }).ToList();

            ViewBag.viewcitylist = Citylistx;

            var Gametype = dbcon.Gametypes.ToList().Select(c => new SelectListItem
            {
                Text = c.Gametypename.ToString(),
                Value = c.Id.ToString(),
                Selected = (c.Id == gm_id)
            }).ToList();

            ViewBag.Gametype = Gametype;
            ViewBag.paramid = id;
            return View("CreateGame", usergame);

        }
      
        public ActionResult EditGame(int id,UserGame username)
        {
            UserGame usergamelist = new UserGame();
            UserGame usergame = dbcon.UserGames.Where(x => x.ID == id).FirstOrDefault();

            usergame.Firstname = username.Firstname;
            usergame.lastname = username.lastname;
            usergame.Gamename = username.Gamename;
            usergame.Country_Id = username.Country_Id;
            usergame.State_Id = username.State_Id;
            usergame.City_Id = username.City_Id;
            usergame.gametype_Id = username.gametype_Id;
            ViewBag.paramid = id;
            usergame.ID = username.ID;
            dbcon.Entry(usergame).State = System.Data.Entity.EntityState.Modified;
            dbcon.SaveChanges();
            return RedirectToAction("CreateGame", "Game");
          

        }


        [HttpGet]
        public ActionResult DeleteGame(int id)
        {
            
            UserGame objuser = dbcon.UserGames.Find(id);
            dbcon.UserGames.Remove(objuser);
            dbcon.SaveChanges();
            return RedirectToAction("CreateGame", "Game");

        }
        public ActionResult Bindstate(int countryid)
        {

            Gameentity dbcon = new Gameentity();
            var statelist = (from a in dbcon.states
                             where a.country_id == countryid
                             select a).ToList();
            if (statelist.Count > 0)
            {
                return Json(new { data = statelist.ToList() }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { error = "No" }, JsonRequestBehavior.AllowGet);
            }



        }
        public ActionResult BindCity(int stateid)
        {

            Gameentity dbcon = new Gameentity();
            var citylist = (from a in dbcon.cities
                             where a.state_id == stateid
                             select a).ToList();
            if (citylist.Count > 0)
            {
                return Json(new { data = citylist.ToList() }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { error = "No" }, JsonRequestBehavior.AllowGet);
            }



        }
        public ActionResult Bindgamelist(int gametypeid)
        {

            Gameentity dbcon = new Gameentity();
            var gamelist = (from a in dbcon.Gamelists
                            where a.Gametype_id == gametypeid
                            select a).ToList();
            if (gamelist.Count > 0)
            {
                return Json(new { data = gamelist.ToList() }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { error = "No record found" }, JsonRequestBehavior.AllowGet);
            }



        }
    }
}