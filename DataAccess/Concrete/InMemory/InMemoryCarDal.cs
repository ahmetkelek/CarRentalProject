using DataAccess.Abstract;
using Entities.Concrete;
using Entities.Concrete.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete.InMemory
{
    public class InMemoryCarDal : ICarDal

    {

        List<Car> _cars;


        public InMemoryCarDal()
        {
            _cars = new List<Car> { 
            new Car {CarId=1, BrandId=1, ColorId=1, ModelYear=1996, DailyPrice=24000,Description="Toyota"},
            new Car {CarId=2, BrandId=2, ColorId=2, ModelYear=1997, DailyPrice=26000,Description="Renault"},
            new Car {CarId=3, BrandId=3, ColorId=3, ModelYear=1998, DailyPrice=28000,Description="Mazda"},
            new Car {CarId=4, BrandId=4, ColorId=4, ModelYear=1999, DailyPrice=29000,Description="Honda"},
            new Car {CarId=5, BrandId=5, ColorId=5, ModelYear=2000, DailyPrice=21000,Description="Hyundai"},
            new Car {CarId=6, BrandId=6, ColorId=6, ModelYear=2001, DailyPrice=20000,Description="Citroen"}
            };
        }

        public void Add(Car car)
        {
            _cars.Add(car);
        }

        public void Delete(Car car)
        {
            //Car carToDelete=null;
            //foreach (var c in _cars)
            //{
            //    if(car.Id==c.Id)
            //    {
            //        carToDelete = c;
            //    }
            //}

            //LINQ kullanırken
            Car carToDelete=_cars.SingleOrDefault(c => car.CarId == c.CarId);
            _cars.Remove(carToDelete);
        }

        public Car Get(Expression<Func<Car, bool>> filter)
        {
            throw new NotImplementedException();
        }

        public List<Car> GetAll()
        {
            return _cars;
        }

        public List<Car> GetAll(Expression<Func<Car, bool>> filter = null)
        {
            throw new NotImplementedException();
        }

        public List<Car> GetById(int id)
        {
          return _cars.Where(c=>c.CarId==id).ToList();
        }

        public List<CarDetailDto> GetCarDetails()
        {
            throw new NotImplementedException();
        }

        public void Update(Car car)
        {
            Car carToUpdate = _cars.SingleOrDefault(c => car.CarId == c.CarId);
            carToUpdate.Description = car.Description;
            carToUpdate.ModelYear = car.ModelYear;
            carToUpdate.DailyPrice = car.DailyPrice;
            carToUpdate.BrandId = car.BrandId;
            carToUpdate.ColorId = car.ColorId;
        }
    }
}
