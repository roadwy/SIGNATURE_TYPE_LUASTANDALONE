local L0_0, L1_1, L2_2, L3_3
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
    L3_3 = L3_3.CONTEXT_DATA_FILEPATH
    L3_3 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
    L3_3 = L1_1
    L2_2 = L1_1.find
    L2_2 = L2_2(L3_3, "\\appdata\\local\\temp", 1, true)
    if L2_2 == nil then
      L3_3 = L1_1
      L2_2 = L1_1.find
      L2_2 = L2_2(L3_3, "\\local settings\\temp", 1, true)
    elseif L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L3_3 = L3_3(mp.CONTEXT_DATA_PROCESSNAME)
      L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_PROCESSNAME))
      if L2_2 == "opera.exe" then
        L3_3 = mp
        L3_3 = L3_3.set_mpattribute
        L3_3("Lua:ContextualDropOperaTemp")
      elseif L2_2 == "plugin-container.exe" then
        L3_3 = mp
        L3_3 = L3_3.set_mpattribute
        L3_3("Lua:ContextualDropPlugincontainerTemp")
      elseif L2_2 == "vmhost.exe" then
        L3_3 = string
        L3_3 = L3_3.lower
        L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
        if L3_3 ~= "cpnprt2win32.cid" and L3_3 ~= "cpnprt2.cid" then
          mp.set_mpattribute("Lua:ContextualDropVmhostTemp")
        end
      elseif L2_2 == "svchost.exe" then
        L3_3 = mp
        L3_3 = L3_3.get_contextdata
        L3_3 = L3_3(mp.CONTEXT_DATA_FILENAME)
        if L3_3:len() < 4 then
          mp.set_mpattribute("Lua:ContextualDropSvchostTemp.B")
        elseif L3_3:find("^BIT[0-9A-F][0-9A-F]?[0-9A-F]?[0-9A-F]?%.tmp$") ~= 1 and string.lower(string.sub(L3_3, -4)) ~= ".mui" and string.lower(string.sub(L3_3, -4)) ~= ".pyd" then
          mp.set_mpattribute("Lua:ContextualDropSvchostTemp.B")
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
