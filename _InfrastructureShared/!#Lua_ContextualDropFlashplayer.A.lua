local L0_0, L1_1, L2_2, L3_3
L0_0 = peattributes
L0_0 = L0_0.no_ep
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
    L3_3 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    if L2_2 < 29 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L3_3 = L3_3(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
    L2_2 = L2_2(L3_3)
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L1_1, 1, 18)
    if L3_3 == "flashplayerplugin_" then
      L3_3 = string
      L3_3 = L3_3.sub
      L3_3 = L3_3(L2_2, -15)
      if L3_3 == "\\macromed\\flash" then
        L3_3 = "Lua:ContextualDropFlashplayer"
        if ({
          ["flashplayerplugin_19_0_0_185.exe"] = ""
        })[L1_1] then
          L3_3 = L3_3 .. "Latest"
        end
        mp.set_mpattribute(L3_3)
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
