            Add(CalendarItem.Create<$Attribute.Owner.Name.Pascal$>("$Attribute.Name$", o => o.$Attribute.Name.Pascal$, enabled: Editable<Tobago.If($Attribute.IsNullable$, ", mandatory: Optional", "")>));