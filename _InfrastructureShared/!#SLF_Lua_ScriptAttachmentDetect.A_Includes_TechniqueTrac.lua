local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:FileInOutlookCache.A"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:FileInWindowsMailApp.A"
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_FILENAME
  L3_3 = L1_1(L2_2)
  L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2))
  L1_1 = {}
  L1_1.vbs = true
  L1_1.ps1 = true
  L1_1[".js"] = true
  L1_1.jse = true
  L1_1.vbe = true
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, -3)
  if L2_2 ~= nil then
    L3_3 = L1_1[L2_2]
    if L3_3 == true then
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L3_3 = L3_3(mp.CONTEXT_DATA_PROCESS_ID)
      if L3_3 then
        TrackPidAndTechnique(L3_3, "T1566.001 ", "phishingattachment")
      end
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
