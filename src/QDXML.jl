#TODO:
# docs
# readme
# tests
# parse_url
# XML(?)

module QDXML

using ParserCombinator

abstract XML

include("types.jl")
include("lexer.jl")
include("utils.jl")

parse_string(s) = parse_one(s, all) |> Document
parse_file(f) = readall(f) |> parse_string

end # module
