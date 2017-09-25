declare function AddTextEntry(entryKey: string, entryText: string): void;

declare function AddTextEntryByHash(entryKey: string | number, entryText: string): void;

/**
 * Cancels the currently executing event. See https://wiki.fivem.net/wiki/CancelEvent
 */
declare function CancelEvent(): void;

declare function DeleteFunctionReference(referenceIdentity: string): void;

declare function DeleteResourceKvp(key: string): void;

declare function DuplicateFunctionReference(referenceIdentity: string): string;

declare function EndFindKvp(handle: number): void;

declare function EndFindObject(findHandle: number): void;

declare function EndFindPed(findHandle: number): void;

declare function EndFindPickup(findHandle: number): void;

declare function EndFindVehicle(findHandle: number): void;

declare function ExecuteCommand(commandString: string): void;

declare function FindFirstObject(outEntity: number): number;

declare function FindFirstPed(outEntity: number): number;

declare function FindFirstPickup(outEntity: number): number;

declare function FindFirstVehicle(outEntity: number): number;

declare function FindKvp(handle: number): string;

declare function FindNextObject(findHandle: number, outEntity: number): number;

declare function FindNextPed(findHandle: number, outEntity: number): number;

declare function FindNextPickup(findHandle: number, outEntity: number): number;

declare function FindNextVehicle(findHandle: number, outEntity: number): number;

/**
 * Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
 */
declare function GetCamMatrix(camera: number): [number[], number[], number[], number[]];

/**
 * Returns the name of the currently executing resource.
 * @return The name of the resource.
 */
declare function GetCurrentResourceName(): string;

declare function GetInstanceId(): number;

/**
 * Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
 * See also: [Resource manifest](https://wiki.fivem.net/wiki/Resource_manifest)
 * @param metadataKey The key to look up in the resource manifest.
 * @param resourceName The resource name.
 */
declare function GetNumResourceMetadata(resourceName: string, metadataKey: string): number;

declare function GetNumResources(): number;

declare function GetPlayerFromServerId(serverId: number): number;

declare function GetPlayerServerId(player: number): number;

declare function GetResourceByFindIndex(findIndex: number): string;

declare function GetResourceKvpFloat(key: string): number;

declare function GetResourceKvpInt(key: string): number;

declare function GetResourceKvpString(key: string): string;

/**
 * Gets the metadata value at a specified key/index from a resource's manifest.
 * See also: [Resource manifest](https://wiki.fivem.net/wiki/Resource_manifest)
 * @param metadataKey The key in the resource manifest.
 * @param index The value index, in a range from [0..GET_NUM_RESOURCE_METDATA-1].
 * @param resourceName The resource name.
 */
declare function GetResourceMetadata(resourceName: string, metadataKey: string, index: number): string;

declare function GetVehicleAcceleration(vehicle: number): number;

declare function GetVehicleAlarmTimeLeft(vehicle: number): number;

declare function GetVehicleClutch(vehicle: number): number;

declare function GetVehicleCurrentGear(vehicle: number): number;

declare function GetVehicleCurrentRpm(vehicle: number): number;

declare function GetVehicleDashboardSpeed(vehicle: number): number;

declare function GetVehicleEngineTemperature(vehicle: number): number;

declare function GetVehicleFuelLevel(vehicle: number): number;

declare function GetVehicleGravityAmount(vehicle: number): number;

declare function GetVehicleHandbrake(vehicle: number): number;

declare function GetVehicleHighGear(vehicle: number): number;

/**
 * Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
 * @return An integer.
 */
declare function GetVehicleIndicatorLights(vehicle: number): number;

declare function GetVehicleNextGear(vehicle: number): number;

declare function GetVehicleNumberOfWheels(vehicle: number): number;

declare function GetVehicleOilLevel(vehicle: number): number;

declare function GetVehicleSteeringAngle(vehicle: number): number;

declare function GetVehicleSteeringScale(vehicle: number): number;

declare function GetVehicleTurboPressure(vehicle: number): number;

declare function GetVehicleWheelHealth(vehicle: number, wheelIndex: number): number;

/**
 * Gets speed of a wheel at the tyre.
 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
 * @return An integer.
 */
declare function GetVehicleWheelSpeed(vehicle: number, wheelIndex: number): number;

declare function InvokeFunctionReference(referenceIdentity: string, argsSerialized: string, argsLength: number, retvalLength: number): string;

/**
 * Gets whether or not this is the CitizenFX server.
 * @return A boolean value.
 */
declare function IsDuplicityVersion(): number;

declare function IsVehicleAlarmSet(vehicle: number): number;

declare function IsVehicleEngineStarting(vehicle: number): number;

declare function IsVehicleInteriorLightOn(vehicle: number): number;

declare function IsVehicleNeedsToBeHotwired(vehicle: number): number;

declare function IsVehiclePreviouslyOwnedByPlayer(vehicle: number): number;

declare function IsVehicleWanted(vehicle: number): number;

/**
 * Reads the contents of a text file in a specified resource.
 * If executed on the client, this file has to be included in `files` in the resource manifest.
 * Example: `local data = LoadResourceFile("devtools", "data.json")`
 * @param fileName The file in the resource.
 * @param resourceName The resource name.
 * @return The file contents
 */
declare function LoadResourceFile(resourceName: string, fileName: string): string;

declare function RegisterCommand(commandName: string, handler: Function, restricted: boolean): void;

/**
 * Registers a specified .gfx file as GFx font library.
 * The .gfx file has to be registered with the streamer already.
 * @param fileName The name of the .gfx file, without extension.
 */
declare function RegisterFontFile(fileName: string): void;

/**
 * Registers a specified font name for use with text draw commands.
 * @param fontName The name of the font in the GFx font library.
 * @return An index to use with [SET\_TEXT\_FONT](#_0x66E0276CC5F6B9DA) and similar natives.
 */
declare function RegisterFontId(fontName: string): number;

declare function RegisterNuiCallbackType(callbackType: string): void;

declare function SendNuiMessage(jsonString: string): number;

declare function SetModelHeadlightConfiguration(modelHash: string | number, ratePerSecond: number, headlightRotation: number, invertRotation: boolean): void;

declare function SetNuiFocus(hasFocus: boolean, hasCursor: boolean): void;

declare function SetResourceKvp(key: string, value: string): void;

declare function SetResourceKvpFloat(key: string, value: number): void;

declare function SetResourceKvpInt(key: string, value: number): void;

declare function SetSnakeoilForEntry(name: string, path: string, data: string): void;

declare function SetTextChatEnabled(enabled: boolean): number;

declare function SetVehicleAlarmTimeLeft(vehicle: number, time: number): void;

declare function SetVehicleClutch(vehicle: number, clutch: number): void;

declare function SetVehicleCurrentRpm(vehicle: number, rpm: number): void;

declare function SetVehicleEngineTemperature(vehicle: number, temperature: number): void;

declare function SetVehicleFuelLevel(vehicle: number, level: number): void;

declare function SetVehicleGravityAmount(vehicle: number, gravity: number): void;

declare function SetVehicleHighGear(vehicle: number, gear: number): void;

declare function SetVehicleOilLevel(vehicle: number, level: number): void;

declare function SetVehicleSteeringScale(vehicle: number, scale: number): void;

declare function SetVehicleTurboPressure(vehicle: number, pressure: number): void;

declare function SetVehicleWheelHealth(vehicle: number, wheelIndex: number, health: number): void;

declare function StartFindKvp(prefix: string): number;

/**
 * The backing function for TriggerEvent.
 */
declare function TriggerEventInternal(eventName: string, eventPayload: string, payloadLength: number): void;

/**
 * The backing function for TriggerServerEvent.
 */
declare function TriggerServerEventInternal(eventName: string, eventPayload: string, payloadLength: number): void;

/**
 * Returns whether or not the currently executing event was canceled. See https://wiki.fivem.net/wiki/WasEventCanceled
 * @return A boolean.
 */
declare function WasEventCanceled(): number;

