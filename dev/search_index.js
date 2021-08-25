var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = Ergast","category":"page"},{"location":"#Ergast","page":"Home","title":"Ergast","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for Ergast.","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [Ergast]","category":"page"},{"location":"#Ergast.GetDrivers-Tuple{}","page":"Home","title":"Ergast.GetDrivers","text":"GetDrivers(\n    ;circuit::String=\"\",\n    cons::String=\"\",\n    qualy::String=\"\",\n    result::String=\"\",\n    fastest::String=\"\",\n    year::String=\"\",\n    standing::String=\"\"\n)\n\nReturns a `Drivers` DataFrame containing the Drivers' Data specified by the keyword\narguments from the Ergast API.\n\n# Keywords\n- `circuit::String`: the circuit where the GP was hosted\n- `cons::String`: the constructor team\n- `qualy::String`: the position obtained at qualifying session\n- `result::String`: the position obtained at the end of the race\n- `fastest::String`: the position obtained by the fastest lap of the race\n- `year::String`: the year when the GP occurred\n- `standing::String`: the standing of the Drivers Championship at the end of the season\n\n# Returns\n- `Drivers`: the DataFrame containing the data related to the query specified.\n\n# Throws\n- `NotFoundError`: I guess we could throw an error if the request is not successful.\n\n\n\n\n\n","category":"method"}]
}
