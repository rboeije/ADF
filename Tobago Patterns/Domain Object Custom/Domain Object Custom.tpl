//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Model           : <Tobago.ProjectName>
//     Template        : Business Object Custom.tpl
//     Runtime Version : $Version$
//     Generation date : <Tobago.CurrentDate>
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using $Class.Model$.Data;
using Adf.Core;
using Adf.Business;
using Adf.Business.SmartReferences;
using Adf.Data;
using Adf.Business.ValueObject;

namespace $Class.Model$.Business
{
	/// <summary>
	/// DomainObject $Class.Name$
	/// </summary>
	public partial class $Class.Name.Pascal$
	{
        #region CodeGuard(Property Title)
		
		public override string Title
		{
			get { return "$Class.Name$"; }
		}

		#endregion CodeGuard(Property Title)

<Tobago.Loop(Class.Attributes, Attributes)>

	}
}