local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
L1_1 = L0_0.find
L1_1 = L1_1(L0_0, "psdeobfus-stg1", 1, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L1_1 = L1_1(headerpage)
if L1_1 then
  L1_1 = string.gsub(L1_1, "`?%s?", "")
  L1_1 = string.gsub(L1_1, "[%'\"]%)?%+%(?[%'\"]", "")
  L1_1 = string.gsub(L1_1, "%([%'\"]([%w%.%-]+)[%'\"]%)", "'%1'")
  L1_1 = string.gsub(L1_1, "%.[%'\"](%w+)[%'\"]", "%.%1")
  L1_1 = string.gsub(L1_1, "::[%'\"](%w+)[%'\"]", "::%1")
  L1_1 = string.lower(L1_1)
  mp.vfo_add_buffer(L1_1, "[psdeobfus-stg1]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  return mp.INFECTED
end
return mp.CLEAN
