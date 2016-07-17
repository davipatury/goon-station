/*
n_Json v11.3.21

Notes:
-In DM, lists in which all keys are associated with null are indistinguishable from non-associative lists.
	Because of this, JSON such as this: {object: {a: null, b: null, c: null}} will be converted to an array:
	{object:["a","b","c"]}.
*/

proc
	json_decode(json)
		var/static/json_reader/_jsonr = new()
		return _jsonr.ReadObject(_jsonr.ScanJson(json))

	json_encode(list/L)
		var/static/json_writer/_jsonw = new()
		return _jsonw.WriteObject(L)
