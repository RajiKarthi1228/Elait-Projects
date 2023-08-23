using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.DTOs
{
    public class RequestParams
    {
        public int StartLimit { get; set; }
        public int EndLimit { get; set; }
        public int ItemsPerPage { get; set; }
    }
}