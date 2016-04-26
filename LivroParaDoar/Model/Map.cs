#region Licence
//===================================================================================
// Pankwood
//===================================================================================
// Copyright (c) 2016, Pankwood.  All Rights Reserved.
//===================================================================================
#endregion

#region References
using System.Collections.Generic;
#endregion

namespace LivroParaDoar.Model
{
    public class Point
    {
        public string Name { get; set; }
        public string Longitude { get; set; }
        public string Latitude { get; set; }
        public string Description { get; set; }
    }

    public class LPoint
    {
        public List<Point> Point { get; set; }
    }
}