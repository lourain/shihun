module = require('common.index')
width,height = getScreenSize()
setScreenScale(width,height)    --在540*960分辨率的手机中开发了脚本，要在720*1280的设备中运行 -
init("0", 1); --以当前应用 Home 键在右边初始化
print(width)
print(height)


function toFish()
	module.anyWhere()--唤醒屏幕
	module.fishList()
	
	
end

num = 0

while(true)
do
	
	res = num%(5*60)
	print('res:'..res)
	if res==0 then
		num = 0
		toFish()
	else
		print('没钓鱼')
	end
	
	
	num = num+1
	print('num-------'..num)
	mSleep(1000)
end
--while(true)
--do
--	toFish()
--	mSleep(5*60*1000)
--end














