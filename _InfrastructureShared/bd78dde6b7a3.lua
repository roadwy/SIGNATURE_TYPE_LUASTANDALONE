-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/bd78dde6b7a3 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.x86_image == true and peattributes.hasexports == true and peattributes.no_ep == true and peattributes.suspicious_dosheader == true and peattributes.no_security == true and peattributes.nx_bit_set == true and peattributes.headerchecksum0 == true and peattributes.no_comruntime == true and peattributes.epoutofimage == true and peattributes.hasappendeddata == true then
  return mp.INFECTED
end
return mp.CLEAN

