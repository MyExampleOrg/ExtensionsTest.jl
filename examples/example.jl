using ExtensionsTest

CONST
# 1.0

func(1.0)
# "This is default func of ExtensionTest.jl"

func(1)
# MethodError: no method matching func(::Int64)

ANOTHERCONST
# UndefVarError: `ANOTHERCONST` not defined

extfunc(1)
# UndefVarError: `extfunc` not defined

using Serde

ANOTHERCONST
# UndefVarError: `ANOTHERCONST` not defined

extfunc(1)
# UndefVarError: `extfunc` not defined

func(1)
# "This is func of ExtensionTest.jl when Serde.jl is imported 2"