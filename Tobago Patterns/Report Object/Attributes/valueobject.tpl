		#region CodeGuard(Property $Attribute.Name.Pascal$)
		
		<Tobago.If($Attribute.IsNullable$,"", "[NonEmpty]")>
		public $Attribute.Type.Pascal$ $Attribute.Name.Pascal$
		{
			get
			{
				return state.GetValue<$Attribute.Type$>($Attribute.Owner.Name.Pascal$Describer.$Attribute.Name.Pascal$); 
			}
			set
			{
				state.SetValue($Attribute.Owner.Name.Pascal$Describer.$Attribute.Name.Pascal$, value);
			}
		}

		#endregion CodeGuard(Property $Attribute.Name.Pascal$)
 
 