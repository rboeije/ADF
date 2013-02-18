//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated using Tobago MDA.
//     Model           : <Tobago.ProjectName>
//     Template        : Table Gateway.tpl
//     Runtime Version : $Version$
//     Generation date : <Tobago.CurrentDate>
//
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using Adf.Base.Data;
using Adf.Base.Query;
using Adf.Core.Identity;
using Adf.Core.Data;
using Adf.Data.Search;

namespace $Class.Model$.Data
{
	/// <summary>
	/// Gateway class for $Class.Name$ based on the Table Gateway Pattern
	/// </summary>
	public static partial class $Class.Name.Pascal$Gateway
	{
		private static readonly DataSources DataSource = $Class.Name.Pascal$Describer.Table.DataSource;
		
		#region CodeGuard(New)
		
		public static IInternalState New()
		{
			var state = new AdfQuery()
                .Select()
                .From($Class.Name.Pascal$Describer.Table)
                .New(DataSource);

            state.ID = IdManager.New<Guid>();

            return state;
		}

		#endregion CodeGuard(New)

		#region CodeGuard(GetAll)

		public static IEnumerable<IInternalState> GetAll()
		{
            return new AdfQuery()
                .Select()
                .From($Class.Name.Pascal$Describer.Table)
                .RunSplit(DataSource);
		}

		#endregion CodeGuard(GetAll)

		#region CodeGuard(Get)
		
		public static IInternalState Get(ID id)
		{
            return new AdfQuery()
                .Select()
                .From($Class.Name.Pascal$Describer.Table)
                .Where($Class.Name.Pascal$Describer.Id).IsEqual(id)
                .Run(DataSource);
		}

		#endregion CodeGuard(Get)

		#region CodeGuard(Count)

		public static int Count()
		{
            return new AdfQuery()
                .Count()
                .From($Class.Name.Pascal$Describer.Table)
                .RunScalar<int>(DataSource);
		}

		#endregion CodeGuard(Count)

		#region CodeGuard(Remove)

		public static bool Remove(IInternalState state)
		{
            if (state == null) throw new ArgumentNullException("state");
			if (state.IsEmpty || state.IsNew) return true;

            return new AdfQuery()
                .From($Class.Name.Pascal$Describer.Table)
                .Where($Class.Name.Pascal$Describer.Id).IsEqual(state.ID)
                .Remove(DataSource, 1);
		}

		#endregion CodeGuard(Remove)

		#region CodeGuard(Save)

		public static bool Save(IInternalState state)
		{
            if (state == null) throw new ArgumentNullException("state");

			if (!state.IsAltered) return true;

            return new AdfQuery()
                .Select()
                .From($Class.Name.Pascal$Describer.Table)
                .Save(DataSource, state);
		}

		#endregion CodeGuard(Save)

		#region CodeGuard(Search)
		
        public static IEnumerable<IInternalState> Search(IEnumerable<ISearchParameter> parameters)
	    {
			if (parameters == null) throw new ArgumentNullException("parameters");
			
            return new AdfQuery()
                .Select()
                .From($Class.Name.Pascal$Describer.Table)
                .BuildQuery(typeof($Class.Name.Pascal$Describer), parameters)
                .RunSplit(DataSource);
        }

		#endregion CodeGuard(Search)
		
<Tobago.Loop(Class.NavigableAssociations, Associations)>

	}
}
