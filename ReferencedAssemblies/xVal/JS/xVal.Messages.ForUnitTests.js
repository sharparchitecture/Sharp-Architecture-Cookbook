/* These custom validation messages are intended to support automated testing only
 * If you want to customise your default validation messages, please see
 * xVal.Messages.en-US.js instead
*/
var xVal = xVal || {};
xVal.Messages = {
    "Required": "REQUIRED",
    "DataType_EmailAddress": "DATATYPE_EMAIL",
    "DataType_Integer": "DATATYPE_INTEGER",
    "DataType_Decimal": "DATATYPE_DECIMAL",
    "DataType_Date": "DATATYPE_DATE",
    "DataType_DateTime": "DATATYPE_DATETIME",
    "DataType_Currency": "DATATYPE_CURRENCY",
    "DataType_CreditCardLuhn": "DATATYPE_CREDITCARDLUHN",
    "Regex": "REGEX",
    "Range_Numeric_Min": "RANGE_NUMERIC_MIN:{0}",
    "Range_Numeric_Max": "RANGE_NUMERIC_MAX:{0}",
    "Range_Numeric_MinMax": "RANGE_NUMERIC_MINMAX:{0},{1}",
    "Range_String_Min": "RANGE_STRING_MIN:{0}",
    "Range_String_Max": "RANGE_STRING_MAX:{0}",
    "Range_String_MinMax": "RANGE_STRING_MINMAX:{0},{1}",
    "Range_DateTime_Min": "RANGE_DATETIME_MIN:{0}",
    "Range_DateTime_Max": "RANGE_DATETIME_MAX:{0}",
    "Range_DateTime_MinMax": "RANGE_DATETIME_MINMAX:{0},{1}",
    "StringLength_Min": "STRINGLENGTH_MIN:{0}",
    "StringLength_Max": "STRINGLENGTH_MAX:{0}",
    "StringLength_MinMax": "STRINGLENGTH_MINMAX:{0},{1}",
    "Comparison_Equals": "COMPARISON_EQUALS:{0}",
    "Comparison_DoesNotEqual": "COMPARISON_DOESNOTEQUAL:{0}"
};