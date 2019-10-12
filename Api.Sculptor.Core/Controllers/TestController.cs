using Microsoft.AspNetCore.Mvc;

namespace Api.Sculptor.Core.Controllers
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

        [HttpGet]
        [Route("hello.world")]
        public string HelloWorld()
        {
            return "hello world";
        }

        [HttpGet]
        [Route("goodbye.world")]
        public string GoodbyeWorld()
        {
            return "goodbye world";
        }
    }
}
