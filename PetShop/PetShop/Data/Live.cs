//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PetShop.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Live
    {
        public int id { get; set; }
        public Nullable<int> Articlid { get; set; }
        public Nullable<int> CityId { get; set; }
        public Nullable<int> StreetId { get; set; }
        public Nullable<int> House { get; set; }
    
        public virtual City City { get; set; }
        public virtual Index Index { get; set; }
        public virtual Street Street { get; set; }
    }
}
