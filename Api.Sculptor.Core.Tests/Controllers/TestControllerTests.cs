using System;
using Xunit;
using Api.Sculptor.Core.Controllers;

namespace Api.Sculptor.Core.Tests.Controllers
{
    public class TestControllerTests
    {
        private readonly TestController _testController;

        public TestControllerTests()
        {
            _testController = new TestController();
        }

        [Fact]
        public void Test1()
        {
            Assert.Equal("hello world", _testController.HelloWorld());
        }
    }
}
