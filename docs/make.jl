using Ergast
using Documenter

DocMeta.setdocmeta!(Ergast, :DocTestSetup, :(using Ergast); recursive=true)

makedocs(;
    modules=[Ergast],
    authors="eduardosalaz <eduardosalaz@outlook.com> and contributors",
    repo="https://github.com/eduardosalaz/Ergast.jl/blob/{commit}{path}#{line}",
    sitename="Ergast.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://eduardosalaz.github.io/Ergast.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/eduardosalaz/Ergast.jl",
    devbranch = "main"
)
