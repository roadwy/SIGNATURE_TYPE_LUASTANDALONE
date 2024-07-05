local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 56064 or L0_0 > 458752 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
if L0_0 > 72448 then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L1_1 = L1_1("RPF:XlsAbnormalSheetStateBits")
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L1_1 = L1_1("MpExcelFormulaRoutines")
    if L1_1 then
      L1_1 = tostring
      L1_1 = L1_1(mp.readfile(0, L0_0))
      L1_1 = string.lower(L1_1)
      if string.find(L1_1, "%d%.ocx.*%d%.ocx.*%d%.ocx") ~= nil and string.find(L1_1, "system32", 1, true) ~= nil and string.find(L1_1, "egsv", 1, true) ~= nil and string.find(L1_1, "urldownloadtofil", 1, true) ~= nil and string.find(L1_1, "jjccbb", 1, true) ~= nil then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
