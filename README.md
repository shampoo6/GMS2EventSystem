# GMS2EventSystem
GMS2的简易事件系统

## 使用
拖入 `obj_GMS2EventManager` 对象到场景中，调用api方法进行注册，然后发送消息即可。

## 参考

### 对象
`EventInfo`
- 描述：绑定监听器上的事件信息对象。
- 构造参数：
  - receiver：事件接收者，一个场景中的实例。
  - handler：事件处理方法，该方法包含一个payload参数。
- 例子：
    ```gml
    var eventInfo = new EventInfo(inst_348623, scr_SayHello);
    ```

### 方法
`gms2ESAddEventListener`
- 描述：添加事件监听器，注册事件方法。
- 参数：
  - topic：事件主题。
  - eventInfo：事件信息对象实例。
- 例子：
    ```gml
    var eventInfo = new EventInfo(inst_348623, scr_SayHello);
    gms2ESAddEventListener("MoveDone", eventInfo);
    ```

`gms2ESRemoveEventListener`
- 描述：移除事件监听器。
- 参数：
  - topic：事件主题。
  - eventInfo：已注册的事件信息对象实例。
- 例子：
    ```gml
    var eventInfo = new EventInfo(inst_348623, scr_SayHello);
    gms2ESAddEventListener("MoveDone", eventInfo);
    gms2ESRemoveEventListener("MoveDone", eventInfo);
    ```

`gms2ESSendEvent`
- 描述：发送事件。
- 参数：
  - topic：事件主题。
  - payload：发送事件时传递的参数。
- 例子：
    ```gml
    gms2ESSendEvent("MoveDone", "我移动完了");
    ```