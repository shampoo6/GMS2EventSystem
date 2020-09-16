// @desc 发送事件
function gms2ESSendEvent(topic, payload){
	with(obj_GMS2EventManager) {
		if !ds_map_exists(eventMap, topic) return;
		var eventInfoList = eventMap[? topic];
		var len = ds_list_size(eventInfoList);
		var index = 0;
		repeat(len) {
			var eventInfo = eventInfoList[| index];
			var receiver = eventInfo.receiver;
			var handler = eventInfo.handler;
			var remove = false;
			if !instance_exists(receiver) remove = true;
			else {
				with(receiver) {
					remove = script_execute(handler, payload);
				}
			}
			if remove {
				gms2ESRemoveEventListener(topic, eventInfo);
				index--;
			}
			index++;
		}
	}
}