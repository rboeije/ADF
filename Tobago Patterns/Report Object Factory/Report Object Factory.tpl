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
using Adf.Core;
using Adf.Business;
using Adf.Data;
using $Class.Model$.Data;

namespace $Class.Model$.Business
{
	/// <summary>
	/// $Class.Name$ Report Factory, used to query $Class.Name$ classes
	/// </summary>
	public partial class $Class.Name.Pascal$Factory : DomainObjectFactory
	{
		#region CodeGuard(Method List)

		private static DomainCollection<$Class.Name.Pascal$> List(IEnumerable<IInternalState> states)
		{
			return new DomainCollection<$Class.Name.Pascal$>(from state in states select new $Class.Name.Pascal$(state));
		}

		#endregion CodeGuard(Method List)
		
		public static DomainCollection<$Class.Name.Pascal$> GetAll()
		{
			return List($Class.Name.Pascal$Gateway.GetAll());
		}
		
	}
}
