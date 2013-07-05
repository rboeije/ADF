using System;
using System.Reflection;
using Adf.Core;
using Adf.Core.Extensions;
using Adf.Core.Validation;

namespace Adf.Base.Validation
{
	/// <summary>
	/// Attribute to determine if the value to check exceeds the specified max length.
	/// </summary>
	[AttributeUsage(AttributeTargets.All, AllowMultiple = false, Inherited = false)]
	public sealed class MaxLengthAttribute : Attribute, IPropertyValidator
	{
	    /// <summary>
		/// Creates a new <see cref="MaxLengthAttribute"/> instance with the supplied length.
		/// </summary>
		/// <param name="length">The supplied length.</param>
		public MaxLengthAttribute(int length)
		{
			this.Length = length;
		}

		/// <summary>
        /// Determines whether the specified value is valid for the supplied property. 
		/// </summary>
        /// <param name="propertyToValidate">The supplied property.</param>
		/// <param name="value">The supplied value.</param>
		/// <returns>
        /// 	<c>true</c> if the specified value is valid; otherwise, <c>false</c>.
		/// </returns>
        public ValidationResult IsValid(PropertyInfo propertyToValidate, object value)
		{
            if (value == null) return ValidationResult.Success;
		    
            return !value.ToString().HasMaxLength(Length) 
                ? ValidationResult.CreateError(propertyToValidate, Config.Domain.AttributeMaxLengthInvalid, propertyToValidate.Name, Length) 
                : ValidationResult.Success;
		}

	    /// <summary>
	    /// Returns the maximum length.
	    /// </summary>
	    public int Length { get; private set; }
	}
}
