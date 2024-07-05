local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L1_1 = "PUA:"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L1_1 = "RPF:PUA:PREDICT:"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L1_1 = "RPF:PEEXEHasIOAVURL"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = false
L1_1 = false
L2_2 = false
L3_3 = mp
L3_3 = L3_3.get_mpattributesubstring
L3_3 = L3_3("RPF:PEEXEHasIOAVURL")
if L3_3 then
  L1_1 = true
else
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L3_3(mp.CONTEXT_DATA_FILEPATH)
  if L3_3 ~= nil then
    L3_3 = string.lower(L3_3)
    if string.sub(L3_3, -10) == "\\downloads" then
      L1_1 = true
    elseif string.find(L3_3, "\\temp\\", 1, true) or string.sub(L3_3, -5) == "\\temp" then
      L2_2 = true
    end
  end
end
if L0_0 or L1_1 or L2_2 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("CONTEXT:PUA:SIM:InstallContextMet")
  L3_3 = mp
  L3_3 = L3_3.get_mpattributesubstring
  L3_3 = L3_3("PUA:ML:Blocked:")
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.set_mpattribute
    L3_3("PUA:Sim:Blocked:Certificates")
  end
  L3_3 = mp
  L3_3 = L3_3.get_mpattributesubstring
  L3_3 = L3_3("PUA:Block:")
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.set_mpattribute
    L3_3("PUA:Sim:Blocked:Specific")
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
