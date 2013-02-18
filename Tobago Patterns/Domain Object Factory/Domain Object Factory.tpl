//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated using Tobago MDA.
//     Model           : <Tobago.ProjectName>
//     Template        : Business Object Factory.tpl
//     Runtime Version : $Version$
//     Generation date : <Tobago.CurrentDate>
//
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using Adf.Base.Domain;
using Adf.Business;
using Adf.Core.Data;
using Adf.Core.Identity;
using Adf.Core.Objects;
using Adf.Core.Transactions;
using Adf.Data;
using Adf.Data.Search;
using $Class.Model$.Data;

namespace $Class.Model$.Business
{
	/// <summary>
	/// $Class.Name$ Factory, used to instantiate $Class.Name$ classes
	/// </summary>
	public static partial class $Class.Name.Pascal$Factory
	{
		#region CodeGuard(Property Empty)

        public static $Class.Name.Pascal$ Empty
        {
            get { return new $Class.Name.Pascal$(); }
        }

		#endregion CodeGuard(Property Empty)

		#region CodeGuard(Method New)

        public static $Class.Name.Pascal$ New()
        {
            return new $Class.Name.Pascal$($Class.Name.Pascal$Gateway.New());
        }

		#endregion CodeGuard(Method New)

		#region CodeGuard(Method List)

		private static DomainCollection<$Class.Name.Pascal$> List(IEnumerable<IInternalState> states)
		{
			return new DomainCollection<$Class.Name.Pascal$>(from state in states select new $Class.Name.Pascal$(state));
		}

		#endregion CodeGuard(Method List)
		
		#region CodeGuard(Method Search)
	    
	    public static DomainCollection<$Class.Name.Pascal$> Search(ISearchObject searchObject)
	    {
	        return List($Class.Name.Pascal$Gateway.Search(searchObject.GetParameters()));
	    }
		
		#endregion CodeGuard(Method Search)
		
		#region CodeGuard(Method Get)

        public static $Class.Name.Pascal$ Get(ID id)
        {
			return id.IsEmpty ? Empty : ObjectManager.GetItemOrDefault(i => i.Id == id, () => new $Class.Name.Pascal$($Class.Name.Pascal$Gateway.Get(id)));
        }
		
		public static DomainCollection<$Class.Name.Pascal$> GetAll()
		{
			return List($Class.Name.Pascal$Gateway.GetAll());
		}
		
		#endregion CodeGuard(Method Get)

		#region CodeGuard(Property Count)

		public static int Count
		{
			get { return $Class.Name.Pascal$Gateway.Count(); }
		}

		#endregion CodeGuard(Property Count)

        #region CodeGuard(Method Remove)

        public static bool Remove(this $Class.Name.Pascal$ $Class.Name.Camel$)
        {
			if ($Class.Name.Camel$ == null) throw new ArgumentNullException("$Class.Name.Camel$");

            using (var transaction = TransactionManager.New())
            {
                if ($Class.Name.Camel$.RemoveCompositions() && $Class.Name.Pascal$Gateway.Remove($Class.Name.Camel$.GetState()))
                {
                    transaction.Complete();
                    return true;
                }
            }
            return false;
        }

        #endregion CodeGuard(Method Remove)
        
        #region CodeGuard(Method Save)

        public static bool Save(this $Class.Name.Pascal$ $Class.Name.Camel$)
        {
            if ($Class.Name.Camel$.IsNullOrEmpty()) throw new ArgumentNullException("$Class.Name.Camel$");

			using (var transaction = TransactionManager.New())
            {
                if ($Class.Name.Pascal$Gateway.Save($Class.Name.Camel$.GetState()) &&
                    $Class.Name.Camel$.SaveCompositions())
                {
                    transaction.Complete();
                    return true;
                }
            }
            return false;
        }

        #endregion CodeGuard(Method Save)
<Tobago.Loop(Class.NavigableAssociations, Associations)>
	}
}
