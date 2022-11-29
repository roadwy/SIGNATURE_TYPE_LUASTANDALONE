-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/TrojanDownloader_O97M_Emotet_RPL_MTB/61530078_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 56064 or l_0_0 > 458752 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
if l_0_0 > 47360 and l_0_0 < 60000 then
  local l_0_1 = tostring((mp.readfile)(39168, 8192))
  if (string.find)(l_0_1, "peg%d.ocx") ~= nil or (string.find)(l_0_1, "udh%d%.ocx") ~= nil then
    return mp.INFECTED
  end
else
  do
    if l_0_0 > 57856 and l_0_0 < 70000 then
      local l_0_2 = tostring((mp.readfile)(49664, 8192))
      l_0_2 = (string.lower)(l_0_2)
      if (string.find)(l_0_2, "uxevr%d%.ocx") ~= nil or (string.find)(l_0_2, "scd%d%.ocx") ~= nil or (string.find)(l_0_2, "hhwe%d.ocx") ~= nil then
        return mp.INFECTED
      end
    else
      do
        if l_0_0 > 64256 and l_0_0 < 80000 then
          local l_0_3 = tostring((mp.readfile)(56064, 8192))
          if (string.find)(l_0_3, "dxgxe%d%.ocx") ~= nil or (string.find)(l_0_3, "haics%d%.ocx") ~= nil or (string.find)(l_0_3, "cui%d%.ocx") ~= nil or (string.find)(l_0_3, "hso%d.ocx") ~= nil then
            return mp.INFECTED
          end
        else
          do
            if l_0_0 > 72448 and l_0_0 < 90000 then
              local l_0_4 = tostring((mp.readfile)(64256, 8192))
              if (string.find)(l_0_4, "cui%d.ocx") ~= nil then
                return mp.INFECTED
              end
            else
              do
                do
                  if l_0_0 > 90001 and l_0_0 < 99584 then
                    local l_0_5 = tostring((mp.readfile)(77824, 8192))
                    if (string.find)(l_0_5, "phdg%d%.ocx") ~= nil or (string.find)(l_0_5, "sctm%d%.ocx") ~= nil or (string.find)(l_0_5, "uoya%d%.ocx") ~= nil or (string.find)(l_0_5, "hhdt%d%.ocx") ~= nil or (string.find)(l_0_5, "soci%d%.ocx") ~= nil then
                      return mp.INFECTED
                    end
                  end
                  return mp.CLEAN
                end
              end
            end
          end
        end
      end
    end
  end
end

