local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.len
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 > 4 then
      L1_1 = string
      L1_1 = L1_1.sub
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, L3_3)
      if L1_1 == ".lnk" then
        L1_1 = bm
        L1_1 = L1_1.get_process_relationships
        L2_2 = L1_1()
        for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
          if _FORV_7_.image_path ~= nil and mp.bitand(_FORV_7_.reason_ex, 1) == 1 and string.find(string.lower(_FORV_7_.image_path), "\\regsvr32.exe", 1, true) then
            bm.add_threat_process(_FORV_7_.ppid)
            break
          end
        end
        return L3_3
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
