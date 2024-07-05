local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = pcall
    L3_3 = bm
    L3_3 = L3_3.get_process_relationships
    L4_4 = L1_1.ppid
    L4_4 = L2_2(L3_3, L4_4)
    if L2_2 then
      for _FORV_8_, _FORV_9_ in ipairs(L3_3) do
        if _FORV_9_.image_path ~= nil and string.find(string.lower(_FORV_9_.image_path), "msiexec.exe", 1, true) then
          for _FORV_13_, _FORV_14_ in ipairs(L4_4) do
            if _FORV_14_ ~= nil and _FORV_14_.ppid ~= nil then
              bm.request_SMS(_FORV_14_.ppid, "m")
            end
          end
          return mp.INFECTED
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
