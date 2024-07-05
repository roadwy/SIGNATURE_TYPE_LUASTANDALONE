local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
if L1_1 < MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L1_1 = L1_1()
if L1_1 then
  for _FORV_6_, _FORV_7_ in ipairs(L1_1) do
    if _FORV_7_.image_path and mp.bitand(_FORV_7_.reason_ex, 1) == 1 and string.find(_FORV_7_.image_path, "\\consent.exe", 1, true) then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
