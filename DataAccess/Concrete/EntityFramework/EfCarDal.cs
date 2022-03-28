using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.Concrete.DTOs;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfCarDal : EfEntityRepositoryBase<Car, RentACarContext>, ICarDal
    {
        public List<CarDetailDto> GetCarDetails()
        {
           using(RentACarContext context=new RentACarContext())
            {
                var result = from c in context.Cars
                             join c3 in context.Colors
                             on c.ColorId equals c3.ColorId
                             join b in context.Brands 
                             on c.BrandId equals b.BrandId
                             select new CarDetailDto {CarName=c.Description,
                                 DailyPrice=c.DailyPrice,ColorName=c3.ColorName,BrandName=b.BrandName
                             };
                return result.ToList();
            }
   
        }
    }
}
