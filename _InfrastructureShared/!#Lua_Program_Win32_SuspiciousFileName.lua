local L0_0, L1_1, L2_2, L3_3
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
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L3_3 = L2_2()
  L1_1 = L1_1(L2_2, L3_3, L2_2())
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, -4)
  if L2_2 == ".exe" then
    L3_3 = L1_1
    L2_2 = L1_1.match
    L3_3 = L2_2(L3_3, "(.+\\)([^\\]+)$")
    if string.find(L1_1, "\\temp\\", 1, true) then
      if L3_3:len() > 9 and L3_3:len() < 20 then
        if string.match(L3_3, "^%d_offer_%d+%.exe") or string.match(L3_3, "^%d_offer_%d+_%d%l%l%.exe") then
          mp.set_mpattribute("Lua:Program:Win32/OutBrowse!drop")
        elseif string.match(L3_3, "^1ab%d+rn%d+%.exe") or string.match(L3_3, "^1ab%d+rn%d+n2d%.exe") or string.match(L3_3, "^1agrj%d+%.exe") then
          mp.set_mpattribute("Lua:Adware:Win32/ZoomyLib.B")
        end
      end
    elseif string.match(L1_1, "\\appdata\\local\\tmp%d+\\") or string.match(L1_1, "\\local settings\application data\\tmp%d+\\") then
      if L3_3:len() > 9 and L3_3:len() < 15 and string.match(L3_3, "^dag%d+%.exe") then
        mp.set_mpattribute("Lua:Adware:Win32/ZoomyLib.A")
      end
    elseif L3_3:len() > 12 and L3_3:len() < 17 then
      if string.match(L3_3, "^bb%lcabe%l%l+%.exe") then
        mp.set_mpattribute("Lua:Program:Win32/OutBrowse.A")
      end
    elseif L3_3:len() > 12 and L3_3:len() < 50 and (string.find(L3_3, "^lyricsgizm.*%.exe") or string.find(L3_3, "^webzoom.*%.exe") or string.find(L3_3, "^zoomify.*%.exe") or string.find(L3_3, "^zoompic.*%.exe") or string.find(L3_3, "^zooompic.*%.exe")) then
      mp.set_mpattribute("Lua:Adware:Win32/ZoomyLib.C")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
