local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 98304 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 < 40960 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L1_1 = L1_1(headerpage)
if string.find(L1_1, "\n", 1, true) ~= nil then
  return mp.CLEAN
end
if #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") and #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") - 1 and #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") + 1 or #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") and #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") - 1 ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") and #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") + 1 ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") or #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") and #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") - 1 ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") and #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") + 1 ~= #L1_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}") then
  return mp.CLEAN
end
mp.set_mpattribute("SCRIPT:Worm:JS/Proslikefan_Lowfi2")
return mp.CLEAN
