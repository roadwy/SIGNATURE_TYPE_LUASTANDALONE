function endswith(A0_0, A1_1)
  return A0_0:sub(-#A1_1) == A1_1
end
if peattributes.isdll and not peattributes.hasexports and endswith(string.lower(mp.getfilename()), "magentloc.dll") then
  return mp.INFECTED
end
return mp.CLEAN
