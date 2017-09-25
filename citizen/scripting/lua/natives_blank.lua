local _i, _f, _v, _r, _ri, _rf, _rl, _s, _rv, _in, _ii, _fi =
	Citizen.PointerValueInt(), Citizen.PointerValueFloat(), Citizen.PointerValueVector(),
	Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger(), Citizen.ResultAsFloat(), Citizen.ResultAsLong(), Citizen.ResultAsString(), Citizen.ResultAsVector(),
	Citizen.InvokeNative, Citizen.PointerValueIntInitialized, Citizen.PointerValueFloatInitialized

local g = _G
local rs = rawset
local _tostring = tostring
local function _ts(num)
	if num == 0 or not num then -- workaround for users calling string parameters with '0', also nil being translated
		return nil
	end
	return _tostring(num)
end
local function _ch(hash)
	if g.type(hash) == 'string' then
		return g.GetHashKey(hash)
	end

	return hash
end

local function _mfr(fn)
	return g.Citizen.GetFunctionReference(fn)
end

local Global = setmetatable({}, { __newindex = function(_, n, v)
	g[n] = v

	rs(_, n, v)
end})

_ENV = nil

function Global.AddTextEntry(entryKey, entryText)
	return _in(0x32ca01c3, _ts(entryKey), _ts(entryText))
end

function Global.AddTextEntryByHash(entryKey, entryText)
	return _in(0x289da860, _ch(entryKey), _ts(entryText))
end

--- Cancels the currently executing event. See https://wiki.fivem.net/wiki/CancelEvent
function Global.CancelEvent()
	return _in(0xfa29d35d)
end

function Global.DeleteFunctionReference(referenceIdentity)
	return _in(0x1e86f206, _ts(referenceIdentity))
end

function Global.DeleteResourceKvp(key)
	return _in(0x7389b5df, _ts(key))
end

function Global.DuplicateFunctionReference(referenceIdentity)
	return _in(0xf4e2079d, _ts(referenceIdentity), _r, _s)
end

function Global.EndFindKvp(handle)
	return _in(0xb3210203, handle)
end

function Global.EndFindObject(findHandle)
	return _in(0xdeda4e50, findHandle)
end

function Global.EndFindPed(findHandle)
	return _in(0x9615c2ad, findHandle)
end

function Global.EndFindPickup(findHandle)
	return _in(0x3c407d53, findHandle)
end

function Global.EndFindVehicle(findHandle)
	return _in(0x9227415a, findHandle)
end

function Global.ExecuteCommand(commandString)
	return _in(0x561c060b, _ts(commandString))
end

function Global.FindFirstObject(outEntity)
	return _in(0xfaa6cb5d, _ii(outEntity) --[[ may be optional ]], _r, _ri)
end

function Global.FindFirstPed(outEntity)
	return _in(0xfb012961, _ii(outEntity) --[[ may be optional ]], _r, _ri)
end

function Global.FindFirstPickup(outEntity)
	return _in(0x3ff9d340, _ii(outEntity) --[[ may be optional ]], _r, _ri)
end

function Global.FindFirstVehicle(outEntity)
	return _in(0x15e55694, _ii(outEntity) --[[ may be optional ]], _r, _ri)
end

function Global.FindKvp(handle)
	return _in(0xbd7bebc5, handle, _r, _s)
end

function Global.FindNextObject(findHandle, outEntity)
	return _in(0x4e129dbf, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

function Global.FindNextPed(findHandle, outEntity)
	return _in(0xab09b548, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

function Global.FindNextPickup(findHandle, outEntity)
	return _in(0x4107ef0f, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

function Global.FindNextVehicle(findHandle, outEntity)
	return _in(0x8839120d, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

--- Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
function Global.GetCamMatrix(camera)
	return _in(0x8f57a89d, camera, _v, _v, _v, _v)
end

--- Returns the name of the currently executing resource.
-- @return The name of the resource.
function Global.GetCurrentResourceName()
	return _in(0xe5e9ebbb, _r, _s)
end

function Global.GetInstanceId()
	return _in(0x9f1c4383, _r, _ri)
end

--- Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
-- See also: [Resource manifest](https://wiki.fivem.net/wiki/Resource_manifest)
-- @param metadataKey The key to look up in the resource manifest.
-- @param resourceName The resource name.
function Global.GetNumResourceMetadata(resourceName, metadataKey)
	return _in(0x776e864, _ts(resourceName), _ts(metadataKey), _r, _ri)
end

function Global.GetNumResources()
	return _in(0x863f27b, _r, _ri)
end

function Global.GetPlayerFromServerId(serverId)
	return _in(0x344ea166, serverId, _r, _ri)
end

function Global.GetPlayerServerId(player)
	return _in(0x4d97bcc7, player, _r, _ri)
end

function Global.GetResourceByFindIndex(findIndex)
	return _in(0x387246b7, findIndex, _r, _s)
end

function Global.GetResourceKvpFloat(key)
	return _in(0x35bdceea, _ts(key), _r, _rf)
end

function Global.GetResourceKvpInt(key)
	return _in(0x557b586a, _ts(key), _r, _ri)
end

function Global.GetResourceKvpString(key)
	return _in(0x5240da5a, _ts(key), _r, _s)
end

--- Gets the metadata value at a specified key/index from a resource's manifest.
-- See also: [Resource manifest](https://wiki.fivem.net/wiki/Resource_manifest)
-- @param metadataKey The key in the resource manifest.
-- @param index The value index, in a range from [0..GET_NUM_RESOURCE_METDATA-1].
-- @param resourceName The resource name.
function Global.GetResourceMetadata(resourceName, metadataKey, index)
	return _in(0x964bab1d, _ts(resourceName), _ts(metadataKey), index, _r, _s)
end

function Global.GetVehicleAcceleration(vehicle)
	return _in(0x478321, vehicle, _r, _rf)
end

function Global.GetVehicleAlarmTimeLeft(vehicle)
	return _in(0xc62aac98, vehicle, _r, _ri)
end

function Global.GetVehicleClutch(vehicle)
	return _in(0x1dad4583, vehicle, _r, _rf)
end

function Global.GetVehicleCurrentGear(vehicle)
	return _in(0xb4f4e566, vehicle, _r, _ri)
end

function Global.GetVehicleCurrentRpm(vehicle)
	return _in(0xe7b12b54, vehicle, _r, _rf)
end

function Global.GetVehicleDashboardSpeed(vehicle)
	return _in(0x9aad420e, vehicle, _r, _rf)
end

function Global.GetVehicleEngineTemperature(vehicle)
	return _in(0xf4f495cb, vehicle, _r, _rf)
end

function Global.GetVehicleFuelLevel(vehicle)
	return _in(0x5f739bb8, vehicle, _r, _rf)
end

function Global.GetVehicleGravityAmount(vehicle)
	return _in(0xb48a1292, vehicle, _r, _rf)
end

function Global.GetVehicleHandbrake(vehicle)
	return _in(0x483b013c, vehicle, _r)
end

function Global.GetVehicleHighGear(vehicle)
	return _in(0xf1d1d689, vehicle, _r, _rf)
end

--- Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
-- @return An integer.
function Global.GetVehicleIndicatorLights(vehicle)
	return _in(0x83070354, vehicle, _r, _ri)
end

function Global.GetVehicleNextGear(vehicle)
	return _in(0xddb298ae, vehicle, _r, _ri)
end

function Global.GetVehicleNumberOfWheels(vehicle)
	return _in(0xedf4b0fc, vehicle, _r, _ri)
end

function Global.GetVehicleOilLevel(vehicle)
	return _in(0xfc7f8ef4, vehicle, _r, _rf)
end

function Global.GetVehicleSteeringAngle(vehicle)
	return _in(0x1382fcea, vehicle, _r, _rf)
end

function Global.GetVehicleSteeringScale(vehicle)
	return _in(0x954465de, vehicle, _r, _rf)
end

function Global.GetVehicleTurboPressure(vehicle)
	return _in(0xe02b51d7, vehicle, _r, _rf)
end

function Global.GetVehicleWheelHealth(vehicle, wheelIndex)
	return _in(0x54a677f5, vehicle, wheelIndex, _r, _rf)
end

--- Gets speed of a wheel at the tyre.
-- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
-- @return An integer.
function Global.GetVehicleWheelSpeed(vehicle, wheelIndex)
	return _in(0x149c9da0, vehicle, wheelIndex, _r, _rf)
end

function Global.InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength)
	return _in(0xe3551879, _ts(referenceIdentity), _ts(argsSerialized), argsLength, _ii(retvalLength) --[[ may be optional ]], _r, _s)
end

--- Gets whether or not this is the CitizenFX server.
-- @return A boolean value.
function Global.IsDuplicityVersion()
	return _in(0xcf24c52e, _r)
end

function Global.IsVehicleAlarmSet(vehicle)
	return _in(0xdc921211, vehicle, _r)
end

function Global.IsVehicleEngineStarting(vehicle)
	return _in(0xbb340d04, vehicle, _r)
end

function Global.IsVehicleInteriorLightOn(vehicle)
	return _in(0xa411f72c, vehicle, _r)
end

function Global.IsVehicleNeedsToBeHotwired(vehicle)
	return _in(0xf9933bf4, vehicle, _r)
end

function Global.IsVehiclePreviouslyOwnedByPlayer(vehicle)
	return _in(0xf849ed67, vehicle, _r)
end

function Global.IsVehicleWanted(vehicle)
	return _in(0xa7daf7c, vehicle, _r)
end

--- Reads the contents of a text file in a specified resource.
-- If executed on the client, this file has to be included in `files` in the resource manifest.
-- Example: `local data = LoadResourceFile("devtools", "data.json")`
-- @param fileName The file in the resource.
-- @param resourceName The resource name.
-- @return The file contents
function Global.LoadResourceFile(resourceName, fileName)
	return _in(0x76a9ee1f, _ts(resourceName), _ts(fileName), _r, _s)
end

function Global.RegisterCommand(commandName, handler, restricted)
	return _in(0x5fa79b0f, _ts(commandName), _mfr(handler), restricted)
end

--- Registers a specified .gfx file as GFx font library.
-- The .gfx file has to be registered with the streamer already.
-- @param fileName The name of the .gfx file, without extension.
function Global.RegisterFontFile(fileName)
	return _in(0x1b3a363, _ts(fileName))
end

--- Registers a specified font name for use with text draw commands.
-- @param fontName The name of the font in the GFx font library.
-- @return An index to use with [SET\_TEXT\_FONT](#_0x66E0276CC5F6B9DA) and similar natives.
function Global.RegisterFontId(fontName)
	return _in(0xacf6d8ee, _ts(fontName), _r, _ri)
end

function Global.RegisterNuiCallbackType(callbackType)
	return _in(0xcd03cda9, _ts(callbackType))
end

function Global.SendNuiMessage(jsonString)
	return _in(0x78608acb, _ts(jsonString), _r)
end

function Global.SetModelHeadlightConfiguration(modelHash, ratePerSecond, headlightRotation, invertRotation)
	return _in(0x7f6b8d75, _ch(modelHash), ratePerSecond, headlightRotation, invertRotation)
end

function Global.SetNuiFocus(hasFocus, hasCursor)
	return _in(0x5b98ae30, hasFocus, hasCursor)
end

function Global.SetResourceKvp(key, value)
	return _in(0x21c7a35b, _ts(key), _ts(value))
end

function Global.SetResourceKvpFloat(key, value)
	return _in(0x9add2938, _ts(key), value)
end

function Global.SetResourceKvpInt(key, value)
	return _in(0x6a2b1e8, _ts(key), value)
end

function Global.SetSnakeoilForEntry(name, path, data)
	return _in(0xa7dd3209, _ts(name), _ts(path), _ts(data))
end

function Global.SetTextChatEnabled(enabled)
	return _in(0x97b2f9f8, enabled, _r)
end

function Global.SetVehicleAlarmTimeLeft(vehicle, time)
	return _in(0xc108ee6f, vehicle, time)
end

function Global.SetVehicleClutch(vehicle, clutch)
	return _in(0x2f70aced, vehicle, clutch)
end

function Global.SetVehicleCurrentRpm(vehicle, rpm)
	return _in(0x2a01a8fc, vehicle, rpm)
end

function Global.SetVehicleEngineTemperature(vehicle, temperature)
	return _in(0x6c93c4a9, vehicle, temperature)
end

function Global.SetVehicleFuelLevel(vehicle, level)
	return _in(0xba970511, vehicle, level)
end

function Global.SetVehicleGravityAmount(vehicle, gravity)
	return _in(0x1a963e58, vehicle, gravity)
end

function Global.SetVehicleHighGear(vehicle, gear)
	return _in(0x20b1b3e6, vehicle, gear)
end

function Global.SetVehicleOilLevel(vehicle, level)
	return _in(0x90d1cad1, vehicle, level)
end

function Global.SetVehicleSteeringScale(vehicle, scale)
	return _in(0xeb46596f, vehicle, scale)
end

function Global.SetVehicleTurboPressure(vehicle, pressure)
	return _in(0x6485615e, vehicle, pressure)
end

function Global.SetVehicleWheelHealth(vehicle, wheelIndex, health)
	return _in(0xb22ecefd, vehicle, wheelIndex, health)
end

function Global.StartFindKvp(prefix)
	return _in(0xdd379006, _ts(prefix), _r, _ri)
end

--- The backing function for TriggerEvent.
function Global.TriggerEventInternal(eventName, eventPayload, payloadLength)
	return _in(0x91310870, _ts(eventName), _ts(eventPayload), payloadLength)
end

--- The backing function for TriggerServerEvent.
function Global.TriggerServerEventInternal(eventName, eventPayload, payloadLength)
	return _in(0x7fdd1128, _ts(eventName), _ts(eventPayload), payloadLength)
end

--- Returns whether or not the currently executing event was canceled. See https://wiki.fivem.net/wiki/WasEventCanceled
-- @return A boolean.
function Global.WasEventCanceled()
	return _in(0x58382a19, _r)
end

