using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Utilities.Results
{
    public class Result : IResult
    {
        //private bool v1;
        //private string v2;
        //gerek yok bunlara suanlik


        //get read-only'dir. Read-only'ler constructurda set edilebilir
        public Result(bool success, string message):this(success)
        {
            Message = message;
            //Success = success; alttaki success'ida kapladigi icin bunu siliyoruz

        }

        public Result(bool success)
        {
            Success = success;

        }

        public bool Success { get; }

        public string Message { get; }
    }
}
