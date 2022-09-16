enum RCIMIWImportanceHW {
  /// 表示消息为服务与通讯类。消息提醒方式为锁屏+铃声+震动。
  normal,

  /// 表示消息为资讯营销类。消息提醒方式为静默通知，仅在下拉通知栏展示。
  low,
}

enum RCIMIWMessageOperationPolicy {
  /// 本地
  local,

  /// 远端
  remote,

  /// 本地和远端
  localRemote,
}

enum RCIMIWVIVOPushType {
  /// 运营消息
  operate,

  /// 系统消息
  system,
}

enum RCIMIWSentStatus {
  /// 发送中
  sending,

  /// 发送失败
  failed,

  /// 已发送
  sent,

  /// 对方已接收
  received,

  /// 对方已读
  read,

  /// 对方已销毁
  destroyed,

  /// 对方已取消
  canceled,
}

enum RCIMIWPushNotificationQuietHoursLevel {
  /// 未设置（向上查询群或者APP级别设置）存量数据中0表示未设置
  none,

  /// 群聊超级群仅@消息通知，单聊代表消息不通知
  mentionMessage,

  /// 消息通知被屏蔽，即不接收消息通知
  blocked,
}

enum RCIMIWMessageDirection {
  /// 发送方
  send,

  /// 接收方
  receive,
}

enum RCIMIWReceivedStatus {
  /// 未读
  unread,

  /// 已读
  read,

  /// 已听
  listened,

  /// 已下载
  downloaded,

  /// 该消息已经被其他登录的多端收取过。（即该消息已经被其他端收取过后。当前端才登录，并重新拉取了这条消息。客户可以通过这个状态更新UI，比如不再提示）
  retrieved,

  /// 该消息是被多端同时收取的。（即其他端正同时登录，一条消息被同时发往多端。客户可以通过这个状态值更新自己的某些UI状态）。
  multipleReceive,
}

enum RCIMIWChatRoomMemberActionType {
  /// 未知
  unknown,

  /// 已加入
  join,

  /// 已离开
  leave,
}

enum RCIMIWPushNotificationLevel {
  /// 全部消息通知（接收全部消息通知--显示指定关闭免打扰功能）
  allMessage,

  /// 未设置（向上查询群或者APP级别设置）//存量数据中0表示未设置
  none,

  /// 群聊，超级群@所有人或者@成员列表有自己时通知；单聊代表消息不通知
  mention,

  /// 群聊，超级群@成员列表有自己时通知，@所有人不通知；单聊代表消息不通知
  mentionUsers,

  /// 群聊，超级群@所有人通知，其他情况都不通知；单聊代表消息不通知
  mentionAll,

  /// 消息通知被屏蔽，即不接收消息通知
  blocked,
}

enum RCIMIWMessageType {
  /// 无效类型
  unknown,

  /// 自定义
  custom,

  /// 文本
  text,

  /// 语音
  voice,

  /// 图片
  image,

  /// 文件
  file,

  /// 小视频
  sight,

  /// GIF图
  gif,

  /// 撤回
  recall,

  /// 引用
  reference,

  /// 命令
  command,

  /// 命令通知
  commandNotification,

  /// 位置消息
  location,
}

enum RCIMIWMessageBlockType {
  /// 未知
  unknown,

  /// 全局敏感词：命中了融云内置的全局敏感词
  global,

  /// 自定义敏感词拦截：命中了客户在融云自定义的敏感词
  custom,

  /// 第三方审核拦截：命中了第三方（数美）或模板路由决定不下发的状态
  thirdParty,
}

enum RCIMIWTimeOrder {
  /// 时间递减
  before,

  /// 时间递增
  after,
}

enum RCIMIWCustomMessagePolicy {
  /// 客户端不存储，支持离线消息机制，不计入未读消息数
  command,

  /// 客户端存储，支持离线消息机制，且存入服务端历史消息，计入未读消息数
  normal,

  /// 客户端不存储，服务端不存储，不计入未读消息数
  status,

  /// 客户端存储，支持离线消息机制，且存入服务端历史消息，不计入未读消息数
  storage,
}

enum RCIMIWChatRoomStatus {
  /// 聊天室被重置
  reset,

  /// 用户调用IMServerAPI手动销毁聊天室
  destroyManual,

  /// IMServer自动销毁聊天室
  destroyAuto,
}

enum RCIMIWConversationType {
  /// 暂不支持
  invalid,

  /// 单聊
  private,

  /// 群聊
  group,

  /// 聊天室
  chatroom,

  /// 系统会话
  system,

  /// 超级群
  ultraGroup,
}

enum RCIMIWErrorCode {
  success,
  paramError,
  engineDestroyed,
  nativeOperationError,
  resultUnknown,
}

enum RCIMIWUltraGroupTypingStatus {
  /// 正在输入文本
  text,
}

enum RCIMIWMentionedType {
  /// @所有人
  all,

  /// @指定的人
  part,
}

enum RCIMIWChatRoomEntriesOperationType {
  /// 更新操作
  update,

  /// 删除操作
  remove,
}

enum RCIMIWLogLevel {
  /// 不输出任何日志
  none,

  /// 只输出错误的日志
  error,

  /// 输出错误和警告的日志
  warn,

  /// 输出错误、警告和一般的日志
  info,

  /// 输出输出错误、警告和一般的日志以及debug日志
  debug,

  /// 输出所有日志
  verbose,
}

enum RCIMIWBlacklistStatus {
  /// 未知
  unknown,

  /// 在黑名单中
  inBlacklist,

  /// 不在黑名单
  notInBlacklist,
}

enum RCIMIWConnectionStatus {
  /// 网络不可用
  networkUnavailable,

  /// 连接成功
  connected,

  /// 连接中
  connecting,

  /// 未连接
  unconnected,

  /// 用户账户在其他设备登录，本机会被踢掉线
  kickedOfflineByOtherClient,

  /// Token不正确
  tokenIncorrect,

  /// 用户被开发者后台封禁
  connUserBlocked,

  /// 用户主动调用disconnect或logout接口断开连接
  signOut,

  /// 连接暂时挂起（多是由于网络问题导致），SDK会在合适时机进行自动重连
  suspend,

  /// 自动连接超时，SDK将不会继续连接，用户需要做超时处理，再自行调用connectWithToken接口进行连接
  timeout,

  /// 异常情况
  unknown,
}
