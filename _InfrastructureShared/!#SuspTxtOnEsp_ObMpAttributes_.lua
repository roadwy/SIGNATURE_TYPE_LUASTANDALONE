local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = 8192
L1_1 = 131072
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L0_0 <= L2_2 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L4_4 = "BM_SUSP_ESP_TXT_FILE"
  L3_3(L4_4)
end
if L1_1 < L2_2 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = false
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.readfile
L4_4 = 0
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readprotection
L5_5 = true
L4_4(L5_5)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.gsub
L5_5 = L3_3
L6_6 = "rmmod "
L7_7 = ""
L8_8 = 5
L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
if not (L5_5 > 5) then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = ";.-do.-rmmod .-done"
  L6_6 = L6_6(L7_7, L8_8)
elseif L6_6 then
  L6_6 = mp
  L6_6 = L6_6.set_mpattribute
  L7_7 = "SuspTxtWithRmmodCmds"
  L6_6(L7_7)
end
L6_6 = string
L6_6 = L6_6.find
L7_7 = L3_3
L8_8 = "acpi .-%.aml"
L6_6 = L6_6(L7_7, L8_8)
if not L6_6 then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = "efivar_ssdt="
  L9_9 = 1
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
elseif L6_6 then
  L6_6 = mp
  L6_6 = L6_6.set_mpattribute
  L7_7 = "SuspTxtWithAcpiCmd"
  L6_6(L7_7)
end
L6_6 = string
L6_6 = L6_6.len
L7_7 = L3_3
L6_6 = L6_6(L7_7)
if L0_0 > L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = 15000
L7_7 = 0
L8_8 = 0
L9_9 = 0
L10_10 = "MpUefiGrubCheck"
L11_11 = "MpUefiSuspTxt"
L7_7, L8_8 = L3_3:find("\n", 1, true)
if L7_7 and L0_0 < L7_7 then
  if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) ~= "grub.cfg" then
    MpCommon.AppendPersistContextNoPath(L10_10, L11_11, 60)
  end
  return mp.INFECTED
end
while L6_6 > L9_9 do
  L7_7, L8_8 = L3_3:find([[
%b

]], L7_7 + 1)
  if not L7_7 then
    break
  end
  L9_9 = L9_9 + 1
  if L0_0 < L8_8 - L7_7 then
    if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) ~= "grub.cfg" then
      MpCommon.AppendPersistContextNoPath(L10_10, L11_11, 60)
    end
    return mp.INFECTED
  end
end
return mp.CLEAN
