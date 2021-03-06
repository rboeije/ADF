﻿using System.Collections.Generic;
using System.Linq;
using Adf.Core.Data;
using Adf.Core.Domain;
using Adf.Core.Identity;

namespace Adf.Base.Data
{
    public class CompositeState : IInternalState
    {
        protected List<IInternalState> states = new List<IInternalState>();

        public CompositeState(params IInternalState[] s)
        {
            states = s.ToList();
        }

        public void Add(IInternalState s)
        {
            states.Add(s);
        }

        public List<IInternalState> States
        {
            get
            {
                return states;
            }
        }

        public ID ID { get; set; }

        public bool IsEmpty
        {
            get { return states.All(state => state.IsEmpty); }
        }

        public bool IsAltered
        {
            get { return states.Any(state => state.IsAltered); }
        }

        public bool IsNew
        {
            get { return states.All(state => state.IsNew); }
        }

        public bool Has(IColumn property)
        {
            return states.Exists(s => s.Has(property));
        }

        public T Get<T>(IColumn property)
        {
            var state = states.FirstOrDefault(s => s.Has(property));

            return (state == null) ? default(T) : state.Get<T>(property);
        }

        public void Set<T>(IColumn property, T value)
        {
            var state = states.FirstOrDefault(s => s.Has(property));

            if (state != null) state.Set(property, value);
        }

        public T? GetNullable<T>(IColumn property) where T : struct
        {
            throw new System.NotImplementedException();
        }

        public void SetNullable<T>(IColumn property, T? value) where T : struct
        {
            throw new System.NotImplementedException();
        }

        public T GetValue<T>(IColumn property) where T : IValueObject
        {
            throw new System.NotImplementedException();
        }

        public void SetValue<T>(IColumn property, T value) where T : IValueObject
        {
            throw new System.NotImplementedException();
        }
    }
}
