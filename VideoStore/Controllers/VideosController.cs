using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using VideoStore.Domain;
using VideoStore.Tests.Repositories;

namespace VideoStore.Controllers
{
    public class VideosController : Controller
    {
        //
        // GET: /Videos/
        private VideoService videoService;

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            base.Initialize(requestContext);
            videoService = new VideoService(new VideoSessionRepository(requestContext.HttpContext));
        }
        
        public ActionResult Create()
        {
            return View(new Video());
        }

        public ActionResult Add(Video v)
        {
            videoService.Add(v);
            return RedirectToAction("Index");
        }
        public ActionResult Index()
        {

            return View(videoService.GetAll());
        }

    }
}
