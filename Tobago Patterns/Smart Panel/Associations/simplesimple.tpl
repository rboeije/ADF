			//simple simple
			Add(ValidatedDropDownListItem.Create<$Association.MyEnd.Target.Name.Pascal$>("$Association.OtherEnd.Role$", o => o.$Association.OtherEnd.Role.Pascal$, 50, Editable<Tobago.If($Association.OtherEnd.IsNullable$, ", Optional", "")>));
