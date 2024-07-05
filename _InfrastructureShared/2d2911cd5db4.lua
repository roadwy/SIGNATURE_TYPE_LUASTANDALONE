local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("PACKED_WITH:[CMDEmbedded]")
if L0_0 then
  L0_0 = tostring
  L0_0 = L0_0(headerpage)
  L0_0 = string.lower(L0_0:gsub("`", "", 100))
  if string.find(L0_0, "new-object", 1, true) or string.find(L0_0, "webclient", 1, true) or string.find(L0_0, "newscriptblock", 1, true) or string.find(L0_0, "executioncontext", 1, true) then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
