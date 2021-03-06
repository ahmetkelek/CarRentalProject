using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Core.DataAccess
{
    public interface IEntityRepository<T> where T:class,IEntity,new()
    {

        //generic constraint
        //class:referans tip
        //IEntity:IEntity olabilir veya IEntity implemente eden bir nesne olabilir
        //new():new'lenebilir olmalıdır

        List<T> GetAll(Expression<Func<T,bool>>filter=null);
        //id bazlı filtreleme
        T Get(Expression<Func<T, bool>> filter);
        void Add(T entity);
        void Update(T entity);
        void Delete(T entity);
    }
}
