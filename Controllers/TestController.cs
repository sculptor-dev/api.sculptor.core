using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace api.sculptor.core.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TestController : ControllerBase
    {
        public class EchoRequest
        {
            public string toEcho;
        }

        // POST api/test/echo
        [HttpPost]
        [Route("echo")]
        public string Echo([FromBody] EchoRequest request)
        {
            return request.toEcho;
        }
    }
}
