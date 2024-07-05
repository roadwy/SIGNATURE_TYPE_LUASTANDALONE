local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 15000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 60000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(0, L0_0)
L1_1 = string.lower(L1_1)
if L1_1:match("strreverse%(ss%(0%)%).-\r\n(.-)%s-=%s-base64decode%(%w-%)") == nil then
  return mp.CLEAN
end
if L1_1:match("execute%s-(%w-)'") == nil then
  return mp.CLEAN
end
if L1_1:match("strreverse%(ss%(0%)%).-\r\n(.-)%s-=%s-base64decode%(%w-%)") ~= L1_1:match("execute%s-(%w-)'") then
  return mp.CLEAN
end
return mp.INFECTED
