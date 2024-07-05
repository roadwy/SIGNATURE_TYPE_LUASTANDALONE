local L0_0, L1_1
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_FILEPATH)
L0_0 = L0_0(L1_1, L1_1(mp.CONTEXT_DATA_FILEPATH))
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 9 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
L1_1 = StringEndsWith
L1_1 = L1_1(L0_0, "\\xxx.exe")
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  ":\\programdata\\",
  ":\\perflogs\\",
  ":\\users\\public\\",
  "\\music\\",
  ":windows\\temp\\",
  "\\share$\\",
  "\\c$\\"
}
if contains(L0_0, L1_1) then
  return mp.INFECTED
end
return mp.CLEAN
