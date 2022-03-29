using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Utilities.Results
{
    //tum voidler icin bilgilendirme
    public interface IResult
    {
        bool Success { get; }
        string Message { get; }
    }
}
