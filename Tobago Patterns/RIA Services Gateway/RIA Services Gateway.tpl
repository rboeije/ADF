//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated using Tobago MDA.
//     Model           : <Tobago.ProjectName>
//     Template        : RIA Services Gateway.tpl
//     Runtime Version : <Tobago.Version>
//     Generation date : <Tobago.CurrentDate>
//
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ServiceModel.DomainServices.Client;
using Adf.Silverlight.Core.Keys;
using Adf.Silverlight.Data;
using Adf.Silverlight.Data.Database;
using Adf.Silverlight.Data.InternalState;
using $Class.Model$.Server.Web.Models;
using $Class.Model$.Server.Web.Services;

namespace $Class.Model$.Client.Data
{
	/// <summary>
	/// Gateway class for $Class.Name.Pascal$ based on the Gateway Pattern
	/// </summary>
	public partial class $Class.Name.Pascal$Gateway : TableGateway
	{
		#region CodeGuard(IInternalStateProvider Methods)

	    public static void Get(ID id, Action<IInternalState> callback)
	    {
	        if (id.IsEmpty) throw new ArgumentNullException("id");
	        if (callback == null) throw new ArgumentNullException("callback");

	        new $Class.Name.Pascal$DomainContext().Get$Class.Name.Pascal$(id.Value.ToString(), operation => callback.Invoke(new ClientEntityState(operation.Value)), null);
	    }

	    public static void GetAll(Action<IEnumerable<IInternalState>> callback)
	    {
	        var ctx = new $Class.Name.Pascal$DomainContext();

	        ctx.Load(ctx.Get$Class.Name.Pascal.Plural$Query(), operation =>
	                                          {
	                                              var list = new ObservableCollection<IInternalState>();

	                                              foreach (var item in operation.Entities)
	                                              {
	                                                  list.Add(new ClientEntityState(item));
	                                              }

	                                              if (callback != null) callback.Invoke(list);
	                                          }, null);
	    }

	    public static IInternalState New()
		{
		    return new ClientEntityState(new $Class.Name.Pascal$Dto());
		}

	    public static void Save(IInternalState state, Action callback)
        {
            var ctx = new $Class.Name.Pascal$DomainContext();

            var entity = ($Class.Name.Pascal$Dto) ((ClientEntityState) state).GetEntity();

            switch (entity.EntityState)
            {
                case EntityState.New:
                case EntityState.Detached:
                    
                    ctx.Add$Class.Name.Pascal$(entity, operation => { if (callback != null) callback.Invoke(); }, null);
                    
                    break;
                case EntityState.Deleted:
                    
                    ctx.Delete$Class.Name.Pascal$(entity, operation => { if (callback != null) callback.Invoke(); }, null);

                    break;
                default:
                    
                    ctx.Update$Class.Name.Pascal$(entity, operation => { if (callback != null) callback.Invoke(); }, null);

                    break;
            }
        }

	    public static void Remove(IInternalState state, Action<bool> callback)
		{
			if (state == null) throw new ArgumentNullException("state");

		    var ctx = new $Class.Name.Pascal$DomainContext();

            var $Class.Name.Camel$ = ($Class.Name.Pascal$Dto) ((ClientEntityState) state).GetEntity();

		    ctx.Delete$Class.Name.Pascal$($Class.Name.Camel$, operation =>
		                             {
                                         if (callback != null) callback.Invoke(operation.Value);
		                             }, null);
		}

		#endregion CodeGuard(IInternalStateProvider Methods)
	}
}
