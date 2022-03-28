using Business.Abstract;
using Business.Concretes;
using DataAccess.Concrete.EntityFramework;
using Entities.Concrete;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CarsController : ControllerBase
    {
        //loosely coupled
        //naming convention 

        ICarService _carService;
        public CarsController(ICarService carService)
        {
            _carService = carService;
        }

        [HttpGet("getall")]
        public IActionResult GetAll()
        {
            //    return new List<Car>
            //    {
            //    new Car { CarId = 1, ColorId = 1, BrandId = 1, DailyPrice = 2212, Description = "Ford", ModelYear = 1996 },
            //    new Car { CarId = 2, ColorId = 2, BrandId = 2, DailyPrice = 1222, Description = "Sedan", ModelYear = 1992 },
            //};

            //ICarService carService = new CarManager(new EfCarDal());
            var result=_carService.GetAll();
           if(result.Success)
            {
                return Ok(result);
            }
            return BadRequest(result);
        }

        [HttpPost("add")]

        public IActionResult Add(Car car)
        {

            var result = _carService.Add(car);
            if(result.Success)
            {
                return Ok(result);
            }
            return BadRequest(result);
        }

        [HttpGet("getByBrandId")]
        public IActionResult GetByBrandId(int brandId)
        {

            var result = _carService.GetCarsByBrandId(brandId);
            if (result.Success)
            {
                return Ok(result);
            }
            return BadRequest(result);
        }


        [HttpGet("getByCarId")]
        public IActionResult GetByCarId(int carId)
        {
            var result = _carService.GetCarsByCarId(carId);
            if (result.Success)
            {
                return Ok(result);
            }
            return BadRequest(result);
        }


        [HttpPost("Update")]
        public IActionResult Update(Car car)
        {
            var result = _carService.Update(car);
            if (result.Success)
            {
                return Ok(result);
            }
            return BadRequest(result);
        }

    }
}
