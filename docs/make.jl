using Documenter
using SnoopCompile

makedocs(
    sitename = "SnoopCompile",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true"
    ),
    modules = [SnoopCompile.SnoopCompileCore, SnoopCompile],
    linkcheck = true,
    pages = ["index.md",
             "tutorial.md",
             "Modern tools" => ["snoopr.md", "snoopi_deep.md", "snoopi_deep_analysis.md", "snoopi_deep_parcel.md"],
             "Older tools" => ["snoopi.md", "snoopc.md"],
             "userimg.md",
             "reference.md"]
)

deploydocs(
    repo = "github.com/timholy/SnoopCompile.jl.git",
    push_preview=true
)
