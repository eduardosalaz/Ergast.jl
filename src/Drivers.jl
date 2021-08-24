using HTTP, JSON3, JSONTables, DataFrames

"""
    GetDrivers(
        ;circuit::String="",
        cons::String="",
        qualy::String="",
        result::String="",
        fastest::String="",
        year::String="",
        standing::String=""
    )

    Returns a `Drivers` DataFrame containing the Drivers' Data specified by the keyword
    arguments from the Ergast API.

    # Keywords
    - `circuit::String`: the circuit where the GP was hosted
    - `cons::String`: the constructor team
    - `qualy::String`: the position obtained at qualifying session
    - `result::String`: the position obtained at the end of the race
    - `fastest::String`: the position obtained by the fastest lap of the race
    - `year::String`: the year when the GP occurred
    - `standing::String`: the standing of the Drivers Championship at the end of the season

    # Returns
    - `Drivers`: the DataFrame containing the data related to the query specified.

    # Throws
    - `NotFoundError`: I guess we could throw an error if the request is not successful.
"""
function GetDrivers(
    ;circuit::String="",
    cons::String="",
    qualy::String="",
    result::String="",
    fastest::String="",
    year::String="",
    standing::String=""
)

    stringURL = "ergast.com/api/f1"
    if year ≠ ""
        stringURL = stringURL * "/$year/"
    end

    if circuit ≠ ""
        stringURL = stringURL * "/circuits/" * circuit
    end

    if cons ≠ ""
        stringURL = stringURL * "/constructors/" * cons
    end

    if qualy ≠ ""
        stringURL = stringURL * "/grid/" * qualy
    end

    if result ≠ ""
        stringURL = stringURL * "/results/" * result
    end

    if fastest ≠ ""
        stringURL = stringURL * "/fastest/" * fastest
    end

    if standing ≠ ""
        stringURL = stringURL * "/driverStandings/" * standing
    end

    stringURL = replace(stringURL, "//" => "/")
    URL = "https://" * stringURL *  "/drivers.json?"
    println("Sending request to: ", URL)
    request = HTTP.get(URL)

    if request.status ≠ 200
        throw(NotFoundError("Unsuccessful request."))
    end

    json = String(request.body) |> JSON3.read
    Drivers = json.MRData.DriverTable.Drivers |> jsontable |> DataFrame
    return Drivers
end
