module = {}

--随意点击，去除弹框作用
function module.anyWhere()
	module.tap(1259, 350)
end

--是否可以钓鱼
function  module.canFish()
	x, y = findMultiColorInRegionFuzzy(0xc4bccb,"-55|-22|0x5c617e,-27|-22|0xb17299,-64|2|0xb0a6b0", 95, 1150, 574, 1386, 780, 0, 0)
	m, n = findMultiColorInRegionFuzzy(0x281410,"-28|10|0xd42a3b,2|31|0xeecdb4,6|45|0xa67340", 95, 1150, 574, 1386, 780, 0, 0)
	i, j = findMultiColorInRegionFuzzy(0x281410,"12|-30|0xdeb190,-17|-18|0xc63e4f,-25|12|0xaa6644", 95, 1116, 614, 1390, 812, 0, 0)
	print ('x:'..x)
	print('m:'..m)
	print('i:'..i)
	if (x > -1 or m>-1 or i>-1) then
		print('true')
		return true
	end
	print('false')
	return false
end

--钓鱼函数
function module.fish()
	module.tap(1259, 714)--固定位置 开始钓鱼
	mSleep(1000)
	x, y = findMultiColorInRegionFuzzy(0x623030,"-10|5|0xdac996,-21|5|0xc6af85,-11|-5|0xdac996", 95, 1090, 506, 1193, 610, 0, 0)
	if x > -1 then --需要买鱼饵
		print('买鱼饵')
		module.press(x,y,10000)
		--确定按钮
		module.tap(991,785)
		mSleep(1000)
		module.fish()
	else --不需要买鱼饵 ，起吊
		print('不用买鱼饵')
		mSleep(5000)
		x, y = findMultiColorInRegionFuzzy(0xcc4444,"16|21|0xbf855c,40|26|0x281410,60|-13|0xfee6d6", 95, 460, 360, 1476, 966, 0, 0)
		if x > -1 then
			print('起吊')
			module.tap(x,y)
			mSleep(2000)
			module.anyWhere()--随意点下，消除掉弹框
			mSleep(1000)
			--出现布袋之类 点击使用
			module.useBag()
		else
			print("起吊失败")
			mSleep(2000)
		end
	end
end
--轻点
function module.tap(x,y)
	touchDown(1, x, y)
	mSleep(50)
	touchMove(1, x, y)
	mSleep(50)
	touchUp(1, x, y)
end

--长按
function module.press(x,y,t)
	touchDown(1, x, y)
	mSleep(t)
	touchUp(1, x, y)
end

--使用布袋子
function module.useBag()
	local x, y = findMultiColorInRegionFuzzy(0xf6ddc4,"-29|21|0x683537,70|22|0x823e60", 95, 1188, 786, 1438, 875, 0, 0)
	if x > -1 then
		module.tap(x,y)
		mSleep(1500)
		module.anyWhere()
		mSleep(1500)
		print('随意点击')
	end
end

--去鬼野钓鱼
function toGuiye()
	print('去鬼野')
	module.tap(1842,75)--鬼野牌子
	mSleep(2000)
	module.tap(1784,961)--世界
	mSleep(2000)
	module.tap(377,126)--地图鬼野
	mSleep(10000)
	module.tap(1842,75)--鬼野牌子
	print('去钓鱼点')
	mSleep(1500)
	module.tap(561,672)--钓鱼点
	mSleep(500)
	module.tap(83,1004)--
	mSleep(5000)
	--开始钓鱼
	while (module.canFish())
	do
		module.fish()
	end
end
--登能钓鱼
function toDengneng()
	print("去登能")
	module.tap(1842,75)--牌子
	mSleep(2000)
	module.tap(1784,961)--世界
	mSleep(2000)
	module.tap(542,503)--地图登能
	mSleep(10000)
	module.tap(1842,75)--牌子
	mSleep(1500)
	module.tap(933,688)--钓鱼点
	print('去钓鱼点')
	mSleep(500)
	module.tap(83,1004)--返回，开始钓鱼
	mSleep(5000)
	--开始钓鱼
--	print("登能canfish："..module.canFish())
	while (module.canFish())
	do
		module.fish()
	end
end
--出云钓鱼
function toChuyun()
	print("去出云")
	module.tap(1842,75)--牌子
	mSleep(2000)
	module.tap(1784,961)--世界
	mSleep(2000)
	module.tap(766,296)--地图出云
	mSleep(10000)
	module.tap(1842,75)--牌子
	mSleep(1500)
	module.tap(878,461)--钓鱼点
	print('去钓鱼点')
	mSleep(12000)
	module.tap(83,1004)--返回，开始钓鱼
	mSleep(1000)
	--开始钓鱼
	while (module.canFish())
	do
		module.fish()
	end
end
--神木町钓鱼
--小黄鱼
function toShenmuding()
	print("去神木町")
	module.tap(1842,75)--牌子
	mSleep(2000)
	module.tap(1784,961)--世界
	mSleep(2000)
	module.tap(1292,580)--地图出云
	mSleep(10000)
	module.tap(1842,75)--牌子
	mSleep(1500)
	module.tap(760,572)--钓鱼点
	print('去钓鱼点')
	mSleep(10000)
	module.tap(83,1004)--返回，开始钓鱼
	mSleep(1000)
	--开始钓鱼
	while (module.canFish())
	do
		module.fish()
	end
end
--秋刀鱼
function qiudao()
	module.tap(1842,75)--牌子
	mSleep(1500)
	module.tap(1055,361)--秋刀鱼钓鱼点
	mSleep(25000)
	module.tap(83,1004)--返回，开始钓鱼
	mSleep(1000)
	while (module.canFish())
	do
		module.fish()
	end
end
----钓鱼点列表
function module.fishList()	
	module.role1()
	module.role2()
	
end

--切换角色1
function module.role1()
	module.tap(77,78)
	mSleep(2000)
	module.tap(211,707)
	mSleep(1500)
	module.tap(1367,203)
	mSleep(1000)
	module.tap(1167,638)
	mSleep(10000)
	module.tap(137,221)--角色1
	mSleep(1000)
	module.tap(1797,1003)--进入游戏
	mSleep(15000)
	module.tap(1896,17)--关闭大弹出窗
	mSleep(1000)
	module.tap(1581,151)--关闭小弹窗
	mSleep(2000)
	
	toDengneng()
	toGuiye()
	toChuyun()
end

--切换角色2
function module.role2()
	module.tap(77,78)
	mSleep(2000)
	module.tap(211,707)
	mSleep(1500)
	module.tap(1367,203)
	mSleep(1000)
	module.tap(1167,638)
	mSleep(10000)
	module.tap(118,352)--角色2
	mSleep(1000)
	module.tap(1797,1003)--进入游戏
	mSleep(15000)
	module.tap(1896,17)--关闭大弹出窗
	mSleep(1000)
	module.tap(1581,151)--关闭小弹窗
	mSleep(2000)
	toShenmuding()
	qiudao()
end











----红包
function redBag()
	x, y = findColor({108, 73, 818, 976},
		"272|239|0xb53028,284|249|0xb78b42,310|255|0xa02c24,331|270|0xdb4a3c",
		95, 0, 0, 0)
	if x > -1 then
		module.tap(x,y)
		print('抢了')
	end
end

--抢红包
function module.tapRedBag(cb)
	module.anyWhere()
	mSleep(100)
	x, y = findColor({788, 875, 1060, 964},
		"836|920|0xd83a43,822|922|0xe9aab2,842|933|0xd6333b,858|947|0xda7582",
		95, 0, 0, 0)
	if x > -1 then
		module.tap(x,y)
		print('开始抢')
		mSleep(350)
		redBag()
		mSleep(1000)
		module.tap(1227,196)--guanbi
		
	else
		print('没有红包')
		cb()
	end
	
end
return module