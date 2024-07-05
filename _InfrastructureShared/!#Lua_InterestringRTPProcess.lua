local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_PROCESSNAME)
  if L1_1 == nil then
    return mp.CLEAN
  end
  L1_1 = string.lower(L1_1)
  if ({
    ["cscript.exe"] = true,
    ["wscript.exe"] = true,
    ["powershell.exe"] = true,
    ["cmd.exe"] = true
  })[L1_1] == true then
    mp.set_mpattribute("LuaIntproc!" .. L1_1)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
