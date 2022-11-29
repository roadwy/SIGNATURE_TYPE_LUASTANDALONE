-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Certificate_Certum!Lowfi 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil then
    return false
  end
  local l_1_2 = 0
  for l_1_6,l_1_7 in ipairs(l_1_0) do
    l_1_2 = l_1_2 + 1
    local l_1_8 = l_1_0[l_1_2]
    local l_1_9 = l_1_8.FingerprintSha1
    if l_1_9 == nil then
      return false
    end
    if l_1_9.HashType ~= "SHA1" then
      return false
    end
    do
      do
        local l_1_10 = l_1_9.Hash
        if l_1_10 == nil then
          return false
        end
        if l_1_1[l_1_10] then
          return true
        end
        do break end
        -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
end

local l_0_1 = (mp.GetCertificateInfo)()
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = {}
l_0_2["õ²Oe\207$À_é»Np·¹D2ûp\v"] = true
l_0_2["\006oÈTÌÍs\149!¯î\239\fC\255Íj\017k\191"] = true
l_0_2["ÑŸ\b\200\020{ç§\a‚ú“k\023C\031Oj\023\251"] = true
l_0_2["‚~r5=i\016©ŞÇó\209\006\022v\232\003VıS"] = true
l_0_2[".\13544\140\0039\r$úùn†»\001³:ÔÛ"] = true
l_0_2["z\001\240\"\162\002BE}u6\t\223\255\0005ä¢3\244"] = true
l_0_2["1ªÊ;\141\030ƒD\181\tu¦Ä}\218\026\1707E\188"] = true
for l_0_6,l_0_7 in ipairs(l_0_1) do
  if l_0_0(l_0_7.Certificates, l_0_2) then
    return mp.INFECTED
  end
  do break end
end
do
  return mp.CLEAN
end

