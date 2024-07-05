local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.ppid
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L0_0 = string
      L0_0 = L0_0.lower
      L1_1 = this_sigattrlog
      L1_1 = L1_1[1]
      L1_1 = L1_1.utf8p2
      L0_0 = L0_0(L1_1)
      L1_1 = string
      L1_1 = L1_1.sub
      L2_2 = L0_0
      L3_3 = -12
      L1_1 = L1_1(L2_2, L3_3, -1)
      if L1_1 ~= "werfault.exe" then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
      L1_1 = this_sigattrlog
      L1_1 = L1_1[1]
      L1_1 = L1_1.ppid
      L2_2 = pcall
      L3_3 = bm
      L3_3 = L3_3.get_process_relationships
      L3_3 = L2_2(L3_3)
      if L2_2 then
        for _FORV_8_, _FORV_9_ in ipairs(L3_3) do
          if _FORV_9_.image_path ~= nil and (string.find(string.lower(_FORV_9_.image_path), "\\syswow64\\regsvr32.exe", 1, true) or string.find(string.lower(_FORV_9_.image_path), "\\syswow64\\rundll32.exe", 1, true)) and L1_1 ~= nil then
            bm.request_SMS(L1_1, "m")
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
