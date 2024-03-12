module TestSerdeExt

import ExtensionsTest
using Serde

export ANOTHERCONST, extfunc

const ANOTHERCONST = 2.0

function extfunc(x::Int64)
    return "This is func of ExtensionTest.jl when Serde.jl is imported 1"
end

function ExtensionsTest.func(x::Int64)
    return "This is func of ExtensionTest.jl when Serde.jl is imported 2"
end

end