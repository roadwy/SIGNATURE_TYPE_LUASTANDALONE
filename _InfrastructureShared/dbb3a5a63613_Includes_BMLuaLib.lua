local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L0_0)
  L1_1 = L1_1(L2_2, "\\windows\\system32\\services.exe", 1, true)
elseif L1_1 then
  L1_1 = bm
  L1_1 = L1_1.get_current_process_startup_info
  L1_1 = L1_1()
  if L1_1 then
    L2_2 = L1_1.integrity_level
    if L2_2 >= MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.utf8p2
if L1_1 and L1_1 ~= "" then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L1_1)
  L1_1 = L2_2
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "\\programdata\\microsoft\\windows defender\\definition updates\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\mpksldrv%.sys")
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "%%common_appdata%%\\microsoft\\windows defender\\definition updates\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\mpksldrv%.sys")
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L1_1, "\\windows\\system32\\mpenginestore\\mpksldrv.sys", 1, true)
      if not L2_2 then
        L2_2 = mp
        L2_2 = L2_2.INFECTED
        return L2_2
      end
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.utf8p1
if not L2_2 then
  return mp.CLEAN
end
L2_2 = string.match(L2_2, "\\(mpksl[%w]+)")
if not L2_2 then
  return mp.CLEAN
end
if not getService(L2_2) then
  return mp.CLEAN
end
return mp.INFECTED
