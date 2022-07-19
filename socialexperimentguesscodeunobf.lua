local num1 = 0



for i=1, 9999999999 do
    local num2 = tostring(num1)
    
    if num1 < 10 then
       num2 = "000".. num2  
    end
    if num1 < 100 and num1 > 10 then
       num2 = "00".. num2  
    end
    if num1 < 1000 and num1 > 100 and num1 > 10 then
       num2 = "0".. num2  
    end
    
    local args = {
        [1] = tostring(num1)
    }
    rconsoleprint('@@RED@@')
    rconsoleprint("\n".. num2)
    --print(num1)
    game:GetService("ReplicatedStorage").Remotes.CodeDoorRemote:InvokeServer(unpack(args))

    
   -- task.wait(0.00001)
    num1 = num1 + 1
end
