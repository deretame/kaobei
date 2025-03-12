enum EventType { refresh, showInfo }

class FavoriteEventBus {
  EventType type;

  FavoriteEventBus(this.type);
}

class HistoryEventBus {
  EventType type;

  HistoryEventBus(this.type);
}

class DownloadEventBus {
  EventType type;

  DownloadEventBus(this.type);
}

class TabViewEventBus {
  int index;

  TabViewEventBus(this.index);
}
