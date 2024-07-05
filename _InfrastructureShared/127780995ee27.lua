local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetHSTRCallerId
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.HSTR_CALLER_SMS
if L1_1 == L0_0 then
  L1_1 = mp
  L1_1 = L1_1.GetSMSLevel
  L1_1 = L1_1()
  L2_2 = mp
  L2_2 = L2_2.SMS_SCAN_ONCE_ADV
  if L1_1 ~= L2_2 then
    L2_2 = mp
    L2_2 = L2_2.SMS_SCAN_LOW_ADV
    if L1_1 ~= L2_2 then
      L2_2 = mp
      L2_2 = L2_2.SMS_SCAN_MED_ADV
      if L1_1 ~= L2_2 then
        L2_2 = mp
        L2_2 = L2_2.SMS_SCAN_HIGH_ADV
        if L1_1 ~= L2_2 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
      end
    end
  end
  L2_2 = mp
  L2_2 = L2_2.hstr_full_log
  L2_2 = L2_2()
  for _FORV_6_, _FORV_7_ in pairs(L2_2) do
    if _FORV_7_.matched and _FORV_7_.VA then
      if mp.SMSVirtualQuery(_FORV_7_.VA) ~= true then
        return mp.CLEAN
      end
      if mp.SMSVirtualQuery(_FORV_7_.VA).prot ~= 64 or mp.SMSVirtualQuery(_FORV_7_.VA).state_type ~= mp.SMS_MBI_PRIVATE then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
