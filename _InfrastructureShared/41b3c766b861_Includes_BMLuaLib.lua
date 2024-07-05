local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.utf8p2
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.utf8p2
      L1_1 = bm
      L1_1 = L1_1.get_process_relationships
      L2_2 = L1_1()
      for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
        if _FORV_7_.image_path ~= nil and _FORV_7_.ppid ~= nil and not MpCommon.IsFriendlyProcess(_FORV_7_.ppid) and mp.bitand(_FORV_7_.reason_ex, 1) == 1 then
          bm.trigger_sig("Behavior:Win32/DCOM.MMC20Application!mmc", L0_0, _FORV_7_.ppid)
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
