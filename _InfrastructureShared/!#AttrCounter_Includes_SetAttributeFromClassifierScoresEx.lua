local L0_0
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L0_0 = L0_0("AnalysisProcName")
if L0_0 and type(L0_0) == "table" then
  SetAttributeFromClassifierScoresEx(#L0_0, {
    60,
    30,
    20,
    10,
    5,
    1
  }, "Lua:AnalysisProcNamesApprox:")
end
return mp.CLEAN
